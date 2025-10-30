//
//  CodexBridgeViewModel.swift
//  DAGFromCode
//
//  Created by Codex on 10/29/25.
//

import Foundation

enum CLIProcessStatus: Equatable {
    case idle
    case running
    case restarting(retryIn: TimeInterval)
    case offline(exitCode: Int?, reason: String?)
}

struct PromptTimelineEntry: Identifiable, Equatable {
    enum Stage: Equatable {
        case pending
        case streaming
        case completed
        case failed(reason: String)
    }

    var id: String
    var stage: Stage
    var lastMessage: String?
    var updatedAt: Date
}

@MainActor
final class CodexBridgeViewModel: ObservableObject {
    @Published private(set) var state: CodexBridgeState
    @Published private(set) var latestEnvelopeID: String?
    @Published private(set) var aggregatedTranscript: String = ""
    @Published private(set) var cliProcessStatus: CLIProcessStatus = .idle
    @Published private(set) var promptTimeline: [PromptTimelineEntry] = []
    @Published private(set) var lastProcessError: String?
    @Published var autoRestartEnabled: Bool {
        didSet {
            if oldValue != autoRestartEnabled {
                UserDefaults.standard.set(autoRestartEnabled, forKey: Self.udAutoRestartKey)
            }
        }
    }
    @Published var cliPathOverride: String {
        didSet {
            if oldValue != cliPathOverride {
                UserDefaults.standard.set(cliPathOverride, forKey: Self.udCLIPathKey)
            }
        }
    }

    private let stateMachine: CodexBridgeStateMachine
    private let client: CodexBridgeHTTPClient
    private let resolver = CodexBridgeResolver()
    private var listenerTask: Task<Void, Never>?
    private let minBackoffSeconds: Double = 1.0
    private let maxBackoffSeconds: Double = 30.0
    private var promptEntries: [String: PromptTimelineEntry] = [:]
    private var pendingPromptLocalIDs: [String] = []
    private var hasBootstrapped = false
    private var hasEmittedCLIStart = false
    private var shouldResumeListeningAfterBootstrap = false

    init(
        initialState: CodexBridgeState = CodexBridgeState(),
        stateMachine: CodexBridgeStateMachine = CodexBridgeStateMachine(),
        client: CodexBridgeHTTPClient = CodexBridgeHTTPClient()
    ) {
        // Load persisted configuration first
        var hydrated = initialState
        hydrated.configuration.host = UserDefaults.standard.string(forKey: Self.udHostKey) ?? hydrated.configuration.host
        hydrated.configuration.port = UserDefaults.standard.string(forKey: Self.udPortKey) ?? hydrated.configuration.port
        hydrated.configuration.token = UserDefaults.standard.string(forKey: Self.udTokenKey) ?? hydrated.configuration.token

        let storedTranscript = UserDefaults.standard.string(forKey: Self.udTranscriptKey)
        let storedEnvelopeID = UserDefaults.standard.string(forKey: Self.udLastEnvelopeKey)
        let storedListeningPreference = UserDefaults.standard.object(forKey: Self.udIsListeningKey) as? Bool ?? false

        if let transcript = storedTranscript, !transcript.isEmpty {
            hydrated.lastResponse = transcript
        }

        if let envelopeID = storedEnvelopeID?.trimmingCharacters(in: .whitespacesAndNewlines), !envelopeID.isEmpty {
            hydrated.lastEnvelopeID = envelopeID
        }

        if storedListeningPreference {
            hydrated.isListening = true
            if case .idle = hydrated.stream {
                hydrated.stream = .awaitingCLI(retryIn: nil)
            }
        }

        let storedAutoRestart = UserDefaults.standard.object(forKey: Self.udAutoRestartKey) as? Bool ?? true
        let storedCLIPath = UserDefaults.standard.string(forKey: Self.udCLIPathKey) ?? ""

        self.state = hydrated
        self.stateMachine = stateMachine
        self.client = client
        self.autoRestartEnabled = storedAutoRestart
        self.cliPathOverride = storedCLIPath
        self.shouldResumeListeningAfterBootstrap = storedListeningPreference
        if let transcript = storedTranscript, !transcript.isEmpty {
            self.aggregatedTranscript = transcript
        } else {
            self.aggregatedTranscript = hydrated.lastResponse ?? ""
        }
        self.latestEnvelopeID = hydrated.lastEnvelopeID
    }

    deinit {
        listenerTask?.cancel()
    }

    func send(_ action: CodexBridgeAction) {
        let (nextState, commands) = stateMachine.reduce(state: state, action: action)
        state = nextState

        // Persist configuration changes
        switch action {
        case let .hostChanged(host):
            UserDefaults.standard.set(host, forKey: Self.udHostKey)
        case let .portChanged(port):
            UserDefaults.standard.set(port, forKey: Self.udPortKey)
        case let .tokenChanged(token):
            UserDefaults.standard.set(token, forKey: Self.udTokenKey)
        default:
            break
        }

        handleLocalSideEffects(for: action, newState: nextState)

        guard !commands.isEmpty else { return }
        handle(commands: commands)
    }

    private func handle(commands: [CodexBridgeCommand]) {
        for command in commands {
            switch command {
            case let .performHealthCheck(configuration):
                Task { [weak self] in
                    guard let self else { return }
                    let result = await self.client.healthCheck(configuration: configuration)
                    await MainActor.run {
                        switch result {
                        case let .success(message):
                            self.send(.healthCheckSucceeded(message: message))
                        case let .failure(error):
                            self.send(.healthCheckFailed(description: self.describe(clientError: error)))
                        }
                    }
                }

            case let .sendMessage(configuration, body):
                Task { [weak self] in
                    guard let self else { return }
                    let result = await self.client.sendMessage(configuration: configuration, body: body)
                    await MainActor.run {
                        switch result {
                        case let .success(response):
                            self.send(.messageSendSucceeded(response: response))
                        case let .failure(error):
                            self.send(.messageSendFailed(description: self.describe(clientError: error)))
                        }
                    }
                }

        case let .beginListening(configuration):
            listenerTask?.cancel()
            listenerTask = Task { [weak self] in
                guard let self else { return }

                while !Task.isCancelled {
                    do {
                        try Task.checkCancellation()
                        await MainActor.run {
                            self.aggregatedTranscript = ""
                            self.lastProcessError = nil
                            self.send(.streamConnected)
                        }

                        var aggregated = ""
                        for try await envelope in self.client.stream(configuration: configuration) {
                            try Task.checkCancellation()

                            await MainActor.run {
                                if self.shouldEmitCLIStart(for: envelope) {
                                    self.send(.cliProcessStarted)
                                    self.hasEmittedCLIStart = true
                                }
                            }

                            switch envelope.kind {
                            case .error:
                                await MainActor.run {
                                    self.handleErrorEnvelope(envelope)
                                }
                                continue

                            case .log:
                                await MainActor.run {
                                    self.handleLogEnvelope(envelope)
                                }
                                continue

                            default:
                                break
                            }

                            aggregated = self.updateAggregation(current: aggregated, with: envelope)
                            await MainActor.run {
                                self.processStreamEnvelope(envelope, aggregatedText: aggregated)
                            }
                        }

                        await MainActor.run {
                            self.send(.streamClosed)
                        }

                        guard await MainActor.run(body: { self.prepareForRestartIfNeeded() }) else { break }

                        let delay = await MainActor.run {
                            self.restartDelay(from: self.state, fallback: self.minBackoffSeconds)
                        }

                        if delay > 0 {
                            do {
                                try await Task.sleep(nanoseconds: UInt64(delay * 1_000_000_000))
                            } catch {
                                break
                            }

                            await MainActor.run {
                                self.send(.streamBackoffElapsed)
                            }
                        }
                    } catch {
                        if Task.isCancelled { break }

                        let failure = self.mapToStreamFailure(error)
                        let decision = await MainActor.run { self.handleStreamFailure(failure) }
                        guard decision.restart else { break }

                        if decision.delay > 0 {
                            do {
                                try await Task.sleep(nanoseconds: UInt64(decision.delay * 1_000_000_000))
                            } catch {
                                break
                            }

                            await MainActor.run {
                                self.send(.streamBackoffElapsed)
                            }
                        }

                        let result = await self.client.latestMessage(configuration: configuration)
                        await MainActor.run {
                            switch result {
                            case let .success(message):
                                self.send(.latestMessagePolled(message))
                            case let .failure(err):
                                self.send(.latestMessagePollFailed(description: self.describe(clientError: err)))
                            }
                        }
                    }
                }

                await MainActor.run {
                    if !self.state.isListening {
                        self.cliProcessStatus = .offline(exitCode: nil, reason: self.lastProcessError)
                    }
                    self.hasEmittedCLIStart = false
                }
            }

            case .endListening:
                listenerTask?.cancel()
                listenerTask = nil
            }
        }
    }

    func startListening() {
        send(.startListening)
    }

    func stopListening() {
        send(.stopListening)
    }

    func fetchLatestOnce() {
        switch resolver.resolve(configuration: state.configuration) {
        case let .success(configuration):
            Task { [weak self] in
                guard let self else { return }
                let result = await self.client.latestMessage(configuration: configuration)
                await MainActor.run {
                    switch result {
                    case let .success(message):
                        self.send(.latestMessagePolled(message))
                    case let .failure(error):
                        self.send(.latestMessagePollFailed(description: self.describe(clientError: error)))
                    }
                }
            }
        case let .failure(error):
            send(.latestMessagePollFailed(description: "Configuration error: \(describeResolution(error))"))
        }
    }

    func bootstrap() {
        guard !hasBootstrapped else { return }
        hasBootstrapped = true

        Task { [weak self] in
            guard let self else { return }

            switch self.resolver.resolve(configuration: self.state.configuration) {
            case let .success(configuration):
                let result = await self.client.healthCheck(configuration: configuration)
                await MainActor.run {
                    switch result {
                    case let .success(message):
                        self.send(.healthCheckSucceeded(message: message))
                        let shouldStart = self.shouldResumeListeningAfterBootstrap || !self.state.isListening
                        if shouldStart {
                            self.startListening()
                            self.shouldResumeListeningAfterBootstrap = false
                        }
                    case let .failure(error):
                        let description = self.describe(clientError: error)
                        self.send(.healthCheckFailed(description: description))
                        self.cliProcessStatus = .offline(exitCode: nil, reason: description)
                    }
                }

            case let .failure(error):
                await MainActor.run {
                    let description = "Configuration error: \(self.describeResolution(error))"
                    self.send(.healthCheckFailed(description: description))
                    self.cliProcessStatus = .offline(exitCode: nil, reason: description)
                }
            }
        }
    }

    private func handleLocalSideEffects(for action: CodexBridgeAction, newState: CodexBridgeState) {
        switch action {
        case .sendMessage:
            registerPendingPrompt()
        case .startListening:
            persistListeningPreference(true)
            shouldResumeListeningAfterBootstrap = true
        case let .messageSendSucceeded(response):
            registerAcknowledgedPrompt(idString: response)
            lastProcessError = nil
            persistTranscript(aggregatedTranscript)
        case .streamConnected:
            cliProcessStatus = .running
            lastProcessError = nil
            aggregatedTranscript = ""
            persistTranscript("")
        case .streamClosed:
            if !newState.isListening {
                cliProcessStatus = .offline(exitCode: nil, reason: lastProcessError)
            }
            persistListeningPreference(newState.isListening)
            shouldResumeListeningAfterBootstrap = newState.isListening
        case .streamEnvelopeReceived:
            persistLatestEnvelope(newState.lastEnvelopeID)
            persistTranscript(aggregatedTranscript)
        case let .streamFailed(reason):
            let description = describeStreamFailure(reason)
            lastProcessError = description
            if autoRestartEnabled && newState.isListening {
                let delay = restartDelay(from: newState, fallback: minBackoffSeconds)
                cliProcessStatus = .restarting(retryIn: delay)
            } else {
                cliProcessStatus = .offline(exitCode: nil, reason: description)
            }
            persistTranscript(aggregatedTranscript)
        case let .streamErrorReceived(reason, envelopeID):
            let description = describeStreamFailure(reason)
            lastProcessError = description
            let resolvedID = envelopeID ?? newState.lastEnvelopeID
            persistLatestEnvelope(resolvedID)
        case .streamBackoffElapsed:
            if newState.isListening {
                cliProcessStatus = .running
            }
        case .stopListening:
            cliProcessStatus = .offline(exitCode: nil, reason: nil)
            persistListeningPreference(false)
            shouldResumeListeningAfterBootstrap = false
        case .clearResponse:
            aggregatedTranscript = ""
            latestEnvelopeID = nil
            persistTranscript("")
            persistLatestEnvelope(nil)
        case let .messageSendFailed(description):
            lastProcessError = description
        case let .latestMessagePolled(message):
            aggregatedTranscript = message
            persistTranscript(message)
        case let .healthCheckFailed(description):
            lastProcessError = description
            cliProcessStatus = .offline(exitCode: nil, reason: description)
        case .healthCheckSucceeded(message: _):
            lastProcessError = nil
        case .hostChanged, .portChanged, .tokenChanged:
            aggregatedTranscript = ""
            latestEnvelopeID = nil
            persistListeningPreference(false)
            persistTranscript("")
            persistLatestEnvelope(nil)
            shouldResumeListeningAfterBootstrap = false
        default:
            break
        }

        if action != .clearResponse, let lastID = newState.lastEnvelopeID {
            latestEnvelopeID = lastID
        }

        syncCLIProcessStatus(with: newState.cliHealth)
    }

    private func registerPendingPrompt() {
        let identifier = "pending-\(UUID().uuidString)"
        pendingPromptLocalIDs.append(identifier)
        let entry = PromptTimelineEntry(
            id: identifier,
            stage: .pending,
            lastMessage: "Awaiting acknowledgement...",
            updatedAt: Date()
        )
        promptEntries[identifier] = entry
        refreshPromptTimeline()
    }

    private func registerAcknowledgedPrompt(idString: String) {
        let trimmed = idString.trimmingCharacters(in: .whitespacesAndNewlines)
        guard !trimmed.isEmpty else { return }

        if let placeholder = pendingPromptLocalIDs.first {
            pendingPromptLocalIDs.removeFirst()
            var entry = promptEntries.removeValue(forKey: placeholder)
                ?? PromptTimelineEntry(id: placeholder, stage: .pending, lastMessage: nil, updatedAt: Date())
            if let existing = promptEntries[trimmed] {
                entry.lastMessage = existing.lastMessage ?? entry.lastMessage
                entry.stage = existing.stage
                entry.updatedAt = max(entry.updatedAt, existing.updatedAt)
            }
            entry.id = trimmed
            entry.stage = .pending
            entry.lastMessage = entry.lastMessage ?? "Acknowledged"
            entry.updatedAt = Date()
            promptEntries[trimmed] = entry
        } else if var entry = promptEntries[trimmed] {
            entry.stage = .pending
            entry.updatedAt = Date()
            promptEntries[trimmed] = entry
        } else {
            promptEntries[trimmed] = PromptTimelineEntry(id: trimmed, stage: .pending, lastMessage: nil, updatedAt: Date())
        }

        latestEnvelopeID = trimmed
        refreshPromptTimeline()
    }

    private func refreshPromptTimeline() {
        promptTimeline = promptEntries
            .values
            .sorted { $0.updatedAt > $1.updatedAt }
    }

    private func processStreamEnvelope(
        _ envelope: CodexBridgeHTTPClient.CodexBridgeEnvelope,
        aggregatedText: String
    ) {
        aggregatedTranscript = aggregatedText

        guard let kind = mapEnvelopeKind(envelope) else { return }

        let domainEnvelope = makeDomainEnvelope(from: envelope, kind: kind, aggregatedText: aggregatedText)
        latestEnvelopeID = domainEnvelope.id

        updatePromptEntry(for: envelope, kind: kind, aggregatedText: aggregatedText)

        if let text = envelope.text, !text.isEmpty {
            lastProcessError = nil
        }

        send(.streamEnvelopeReceived(domainEnvelope))
    }

    private func updatePromptEntry(
        for envelope: CodexBridgeHTTPClient.CodexBridgeEnvelope,
        kind: StreamEnvelope.Kind,
        aggregatedText: String
    ) {
        var identifier = promptIdentifier(from: envelope)

        var entry: PromptTimelineEntry?

        if let id = identifier, let existing = promptEntries[id] {
            entry = existing
        } else if let id = identifier, pendingPromptLocalIDs.contains(id) {
            entry = promptEntries[id] ?? defaultPromptEntry(id: id)
        } else if let fallback = pendingPromptLocalIDs.first {
            identifier = fallback
            entry = promptEntries[fallback] ?? defaultPromptEntry(id: fallback)
        } else if let id = identifier {
            entry = promptEntries[id] ?? defaultPromptEntry(id: id)
        } else {
            return
        }

        guard var resolvedEntry = entry, let resolvedIdentifier = identifier else { return }

        switch kind {
        case .delta, .patch:
            resolvedEntry.stage = .streaming
            resolvedEntry.lastMessage = aggregatedText.isEmpty ? (envelope.text ?? resolvedEntry.lastMessage) : aggregatedText
        case .done:
            resolvedEntry.stage = .completed
            resolvedEntry.lastMessage = aggregatedText.isEmpty ? (envelope.text ?? resolvedEntry.lastMessage) : aggregatedText
        case .handshake:
            resolvedEntry.lastMessage = envelope.text ?? resolvedEntry.lastMessage ?? "Handshake acknowledged"
        case .unknown:
            resolvedEntry.lastMessage = envelope.text ?? resolvedEntry.lastMessage
        }

        resolvedEntry.updatedAt = envelope.timestamp ?? Date()
        promptEntries[resolvedIdentifier] = resolvedEntry
        refreshPromptTimeline()
    }

    private func defaultPromptEntry(id: String) -> PromptTimelineEntry {
        PromptTimelineEntry(id: id, stage: .pending, lastMessage: nil, updatedAt: Date())
    }

    private func updatePromptFailure(
        for envelope: CodexBridgeHTTPClient.CodexBridgeEnvelope,
        reasonDescription: String
    ) {
        guard let identifier = promptIdentifier(from: envelope) ?? envelope.id ?? pendingPromptLocalIDs.first else {
            return
        }

        var entry = promptEntries[identifier] ?? PromptTimelineEntry(
            id: identifier,
            stage: .pending,
            lastMessage: nil,
            updatedAt: Date()
        )

        entry.stage = .failed(reason: reasonDescription)
        entry.lastMessage = envelope.text ?? entry.lastMessage ?? reasonDescription
        entry.updatedAt = envelope.timestamp ?? Date()
        promptEntries[identifier] = entry
        refreshPromptTimeline()
    }

    private func updateAggregation(
        current: String,
        with envelope: CodexBridgeHTTPClient.CodexBridgeEnvelope
    ) -> String {
        switch envelope.kind {
        case .delta:
            guard let text = envelope.text, !text.isEmpty else { return current }
            return current + text
        case .patch:
            return envelope.text ?? current
        case .done:
            return envelope.text ?? current
        case .log:
            if isHandshake(envelope) {
                return current
            }
            return current
        case .error:
            return current
        case let .unknown(name):
            if name.lowercased() == "handshake" {
                return current
            }
            return current
        }
    }

    private func makeDomainEnvelope(
        from envelope: CodexBridgeHTTPClient.CodexBridgeEnvelope,
        kind: StreamEnvelope.Kind,
        aggregatedText: String
    ) -> StreamEnvelope {
        let metadata = StreamEnvelope.Metadata(
            id: envelope.id ?? UUID().uuidString,
            source: mapSource(from: envelope),
            timestamp: envelope.timestamp ?? Date(),
            kind: kind,
            payloadSummary: payloadSummary(from: envelope)
        )

        let text = textForDomain(kind: kind, envelope: envelope, aggregated: aggregatedText)
        return StreamEnvelope(metadata: metadata, text: text, raw: envelope.raw)
    }

    private func textForDomain(
        kind: StreamEnvelope.Kind,
        envelope: CodexBridgeHTTPClient.CodexBridgeEnvelope,
        aggregated: String
    ) -> String? {
        switch kind {
        case .delta, .patch, .done:
            return aggregated
        case .handshake:
            return envelope.text ?? aggregated
        case .unknown:
            return envelope.text ?? aggregated
        }
    }

    private func payloadSummary(from envelope: CodexBridgeHTTPClient.CodexBridgeEnvelope) -> String? {
        if let text = envelope.text?.trimmingCharacters(in: .whitespacesAndNewlines), !text.isEmpty {
            return text
        }

        if let payloadText = envelope.payload?.objectValue?["text"]?.stringValue,
           !payloadText.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty {
            return payloadText
        }

        return nil
    }

    private func mapEnvelopeKind(_ envelope: CodexBridgeHTTPClient.CodexBridgeEnvelope) -> StreamEnvelope.Kind? {
        switch envelope.kind {
        case .delta:
            return .delta
        case .patch:
            return .patch
        case .done:
            return .done
        case .error:
            return nil
        case .log:
            if isHandshake(envelope) { return .handshake }
            return .unknown(envelope.messageType ?? "log")
        case let .unknown(label):
            if label.lowercased() == "handshake" || envelope.messageType?.lowercased() == "handshake" {
                return .handshake
            }
            return .unknown(label)
        }
    }

    private func isHandshake(_ envelope: CodexBridgeHTTPClient.CodexBridgeEnvelope) -> Bool {
        if let messageType = envelope.messageType?.lowercased(), messageType.contains("handshake") {
            return true
        }
        if case let .unknown(label) = envelope.kind, label.lowercased() == "handshake" {
            return true
        }
        if let payloadType = envelope.payload?.objectValue?["type"]?.stringValue?.lowercased(), payloadType == "handshake" {
            return true
        }
        return false
    }

    private func shouldEmitCLIStart(for envelope: CodexBridgeHTTPClient.CodexBridgeEnvelope) -> Bool {
        guard !hasEmittedCLIStart else { return false }
        if isHandshake(envelope) { return true }
        if let messageType = envelope.messageType?.lowercased(), messageType.contains("cli-start") {
            return true
        }
        if let text = envelope.text?.lowercased(), text.contains("cli ready") || text.contains("cli started") {
            return true
        }
        return false
    }

    private func mapSource(from envelope: CodexBridgeHTTPClient.CodexBridgeEnvelope) -> StreamEnvelope.Source {
        guard let messageType = envelope.messageType?.lowercased() else { return .cli }
        if messageType.hasPrefix("tool:") {
            let name = String(messageType.dropFirst("tool:".count))
            return .tool(name)
        }
        if messageType == "stdout" || messageType == "stderr" {
            return .cli
        }
        if messageType == "handshake" || messageType == "system" {
            return .system
        }
        return .unknown(messageType)
    }

    private func handleErrorEnvelope(_ envelope: CodexBridgeHTTPClient.CodexBridgeEnvelope) {
        let failure = mapErrorEnvelope(envelope)
        let description = envelope.text ?? describeStreamFailure(failure)
        lastProcessError = description

        send(.streamErrorReceived(reason: failure, envelopeID: envelope.id))
        updatePromptFailure(for: envelope, reasonDescription: description)

        if shouldTriggerProcessExit(from: failure) || envelope.messageType?.lowercased() == "stderr" {
            let exitInfo = extractExitInfo(from: envelope)
            send(.cliProcessExited(code: exitInfo.code, stderr: exitInfo.stderr ?? description))
            hasEmittedCLIStart = false
        }
    }

    private func handleLogEnvelope(_ envelope: CodexBridgeHTTPClient.CodexBridgeEnvelope) {
        if isHandshake(envelope) {
            processStreamEnvelope(envelope, aggregatedText: aggregatedTranscript)
            return
        }

        updatePromptEntry(for: envelope, kind: .unknown(envelope.messageType ?? "log"), aggregatedText: aggregatedTranscript)
    }

    private func mapErrorEnvelope(_ envelope: CodexBridgeHTTPClient.CodexBridgeEnvelope) -> StreamFailure {
        if let payload = envelope.payload?.objectValue {
            if let code = payload["code"]?.stringValue?.lowercased() {
                switch code {
                case "unauthorized", "401":
                    return .unauthorized
                case "forbidden", "403":
                    return .forbidden
                case "not_found", "404":
                    return .notFound
                case "rate_limited", "429":
                    return .rateLimited
                case "cli_auth", "auth", "authentication":
                    return .cliAuthentication
                case "handshake":
                    let detail = payload["text"]?.stringValue ?? envelope.text
                    return .handshakeFailed(description: detail)
                case "malformed_event":
                    let detail = payload["text"]?.stringValue ?? envelope.text ?? "Malformed event"
                    return .malformedEvent(description: detail)
                default:
                    break
                }
            }
        }

        if let message = envelope.text, message.lowercased().contains("handshake") {
            return .handshakeFailed(description: envelope.text)
        }

        return .network(description: envelope.text ?? envelope.raw ?? "CLI error")
    }

    private func extractExitInfo(from envelope: CodexBridgeHTTPClient.CodexBridgeEnvelope) -> (code: Int32, stderr: String?) {
        var code: Int32 = -1
        if let payload = envelope.payload?.objectValue {
            if let numeric = payload["exitCode"]?.doubleValue ?? payload["exit_code"]?.doubleValue {
                code = Int32(numeric)
            } else if let codeString = payload["code"]?.stringValue, let parsed = Int32(codeString) {
                code = parsed
            }
        }
        let stderr = envelope.text ?? envelope.payload?.objectValue?["text"]?.stringValue
        return (code, stderr)
    }

    private func shouldTriggerProcessExit(from failure: StreamFailure) -> Bool {
        switch failure {
        case .cliAuthentication, .handshakeFailed, .malformedEvent:
            return true
        default:
            return false
        }
    }

    private func promptIdentifier(from envelope: CodexBridgeHTTPClient.CodexBridgeEnvelope) -> String? {
        if let reply = extractString(from: envelope.json, key: "reply_to") ?? extractString(from: envelope.json, key: "replyTo") {
            return reply
        }
        if let ack = extractString(from: envelope.json, key: "ack") {
            return ack
        }
        if let promptID = extractString(from: envelope.payload, key: "prompt_id")
            ?? extractString(from: envelope.payload, key: "promptId") {
            return promptID
        }
        return envelope.id
    }

    private func extractString(
        from json: CodexBridgeHTTPClient.CodexBridgeEnvelope.JSONValue?,
        key: String
    ) -> String? {
        guard let object = json?.objectValue else { return nil }
        return object[key]?.stringValue
    }

    private func prepareForRestartIfNeeded() -> Bool {
        guard autoRestartEnabled && state.isListening else {
            if !state.isListening {
                cliProcessStatus = .offline(exitCode: nil, reason: lastProcessError)
            }
            return false
        }

        let delay = restartDelay(from: state, fallback: minBackoffSeconds)
        cliProcessStatus = .restarting(retryIn: delay)
        return delay > 0
    }

    private func handleStreamFailure(_ failure: StreamFailure) -> (restart: Bool, delay: TimeInterval) {
        let description = describeStreamFailure(failure)
        lastProcessError = description
        send(.streamFailed(reason: failure))

        if shouldTriggerProcessExit(from: failure) {
            send(.cliProcessExited(code: -1, stderr: description))
            hasEmittedCLIStart = false
        }

        guard autoRestartEnabled && state.isListening else {
            cliProcessStatus = .offline(exitCode: nil, reason: description)
            return (false, 0)
        }

        let delay = restartDelay(from: state, fallback: minBackoffSeconds)
        cliProcessStatus = .restarting(retryIn: delay)
        hasEmittedCLIStart = false
        return (true, delay)
    }

    private func restartDelay(from state: CodexBridgeState, fallback: TimeInterval) -> TimeInterval {
        switch state.stream {
        case let .backingOff(backoff):
            return max(fallback, backoff.delaySeconds)
        case let .awaitingCLI(retryIn):
            if let retryIn { return max(fallback, retryIn) }
            return fallback
        default:
            break
        }

        if case let .restartScheduled(retryIn) = state.cliHealth {
            return max(fallback, retryIn)
        }

        return fallback
    }

    private func describeStreamFailure(_ failure: StreamFailure) -> String {
        switch failure {
        case .invalidResponse:
            return "Bridge returned an invalid response."
        case .decoding:
            return "Unable to decode bridge response."
        case let .httpStatus(code):
            return "Bridge responded with status code \(code)."
        case let .network(description):
            return description
        case .unauthorized:
            return "Unauthorized; check your token."
        case .forbidden:
            return "Forbidden; access is not allowed."
        case .notFound:
            return "Endpoint not found."
        case .rateLimited:
            return "Rate limited; backing off and retrying."
        case let .permanent(description):
            return description
        case .cliAuthentication:
            return "CLI authentication failed; check the helper credentials."
        case let .handshakeFailed(description):
            return description ?? "CLI handshake failed."
        case let .malformedEvent(description):
            return "Malformed event: \(description)"
        }
    }

    private func syncCLIProcessStatus(with health: CLIProcessHealth) {
        switch health {
        case .running:
            cliProcessStatus = .running
        case let .degraded(exitCode):
            cliProcessStatus = .offline(exitCode: Int(exitCode), reason: lastProcessError)
        case let .restartScheduled(retryIn):
            cliProcessStatus = .restarting(retryIn: retryIn)
        }
    }

    private func persistListeningPreference(_ isListening: Bool) {
        UserDefaults.standard.set(isListening, forKey: Self.udIsListeningKey)
    }

    private func persistLatestEnvelope(_ id: String?) {
        guard let rawID = id?.trimmingCharacters(in: .whitespacesAndNewlines), !rawID.isEmpty else {
            UserDefaults.standard.removeObject(forKey: Self.udLastEnvelopeKey)
            return
        }
        UserDefaults.standard.set(rawID, forKey: Self.udLastEnvelopeKey)
    }

    private func persistTranscript(_ transcript: String) {
        let trimmed = transcript.trimmingCharacters(in: .whitespacesAndNewlines)
        if trimmed.isEmpty {
            UserDefaults.standard.removeObject(forKey: Self.udTranscriptKey)
        } else {
            UserDefaults.standard.set(transcript, forKey: Self.udTranscriptKey)
        }
    }

    private func describe(clientError: CodexBridgeHTTPClient.ClientError) -> String {
        switch clientError {
        case .invalidResponse:
            return "Bridge returned an invalid response."
        case let .httpStatus(status):
            return "Bridge responded with status code \(status)."
        case .decodingFailed:
            return "Unable to decode bridge response."
        case let .protocolViolation(details):
            let trimmed = details.trimmingCharacters(in: .whitespacesAndNewlines)
            return trimmed.isEmpty ? "Bridge stream violated protocol." : "Bridge protocol violation: \(trimmed)"
        case let .underlying(description):
            return description
        }
    }

    private func describeResolution(_ error: CodexBridgeResolutionError) -> String {
        switch error {
        case .invalidPort:
            return "Port must be between 0 and 65535."
        case .invalidHost:
            return "Host must be a valid hostname or IP address."
        case .emptyMessage:
            return "Message cannot be empty."
        }
    }

    private func mapToStreamFailure(_ error: Error) -> StreamFailure {
        if let clientError = error as? CodexBridgeHTTPClient.ClientError {
            switch clientError {
            case .invalidResponse:
                return .invalidResponse
            case let .httpStatus(status):
                return mapStatusToStreamFailure(status)
            case .decodingFailed:
                return .decoding
            case let .protocolViolation(details):
                let trimmed = details.trimmingCharacters(in: .whitespacesAndNewlines)
                return .malformedEvent(description: trimmed.isEmpty ? "Protocol violation" : trimmed)
            case let .underlying(description):
                return .network(description: description)
            }
        }

        let nsError = error as NSError
        if nsError.domain == NSURLErrorDomain {
            return .network(description: nsError.localizedDescription)
        }

        return .network(description: error.localizedDescription)
    }

    private func mapStatusToStreamFailure(_ status: Int) -> StreamFailure {
        switch status {
        case 401: return .unauthorized
        case 403: return .forbidden
        case 404: return .notFound
        case 429: return .rateLimited
        default: return .httpStatus(status)
        }
    }

    private static let udHostKey = "codex.bridge.host"
    private static let udPortKey = "codex.bridge.port"
    private static let udTokenKey = "codex.bridge.token"
    private static let udAutoRestartKey = "codex.bridge.autoRestart"
    private static let udCLIPathKey = "codex.bridge.cliPath"
    private static let udTranscriptKey = "codex.bridge.transcript"
    private static let udLastEnvelopeKey = "codex.bridge.lastEnvelope"
    private static let udIsListeningKey = "codex.bridge.isListening"
}

private extension CodexBridgeHTTPClient.CodexBridgeEnvelope.JSONValue {
    var doubleValue: Double? {
        switch self {
        case let .number(value):
            return value
        case let .string(value):
            return Double(value)
        default:
            return nil
        }
    }
}
