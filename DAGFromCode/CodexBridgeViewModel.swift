//
//  CodexBridgeViewModel.swift
//  DAGFromCode
//
//  Created by Codex on 10/29/25.
//

import Foundation

@MainActor
final class CodexBridgeViewModel: ObservableObject {
    @Published private(set) var state: CodexBridgeState

    private let stateMachine: CodexBridgeStateMachine
    private let client: CodexBridgeHTTPClient
    private let resolver = CodexBridgeResolver()
    private var listenerTask: Task<Void, Never>?
    private let minBackoffSeconds: Double = 1.0
    private let maxBackoffSeconds: Double = 30.0

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

        self.state = hydrated
        self.stateMachine = stateMachine
        self.client = client
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
                var backoff = self.minBackoffSeconds

                while !Task.isCancelled {
                    // Attempt streaming connection first.
                    do {
                        try Task.checkCancellation()
                        await MainActor.run { self.send(.streamConnected) }

                        var aggregated = ""
                        for try await envelope in self.client.stream(configuration: configuration) {
                            aggregated = self.updateAggregation(
                                current: aggregated,
                                with: envelope
                            )
                            let domainEnvelope = self.makeDomainEnvelope(
                                from: envelope,
                                aggregatedText: aggregated
                            )
                            await MainActor.run {
                                self.send(.streamEnvelopeReceived(domainEnvelope))
                            }
                        }

                        await MainActor.run { self.send(.streamClosed) }
                        backoff = self.minBackoffSeconds
                        try await Task.sleep(nanoseconds: UInt64(self.minBackoffSeconds * 1_000_000_000))
                        continue
                    } catch {
                        if Task.isCancelled { break }

                        let failure = self.mapToStreamFailure(error)
                        await MainActor.run { self.send(.streamFailed(reason: failure)) }

                        // Exponential backoff with jitter [0.5,1.0)
                        backoff = min(self.maxBackoffSeconds, max(self.minBackoffSeconds, backoff * 2))
                        let jitter = Double.random(in: 0.5..<1.0)
                        let delay = backoff * jitter
                        do { try await Task.sleep(nanoseconds: UInt64(delay * 1_000_000_000)) } catch { break }
                        await MainActor.run { self.send(.streamBackoffElapsed) }

                        // Fallback: single /latest poll to keep UI fresh.
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

    private func describe(clientError: CodexBridgeHTTPClient.ClientError) -> String {
        switch clientError {
        case .invalidResponse:
            return "Bridge returned an invalid response."
        case let .httpStatus(status):
            return "Bridge responded with status code \(status)."
        case .decodingFailed:
            return "Unable to decode bridge response."
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

    private func updateAggregation(
        current: String,
        with envelope: CodexBridgeHTTPClient.CodexBridgeEnvelope
    ) -> String {
        switch envelope.type {
        case .delta:
            guard let text = extractText(from: envelope.raw) else { return current }
            return current + text
        case .patch:
            return extractText(from: envelope.raw) ?? current
        case .done, .unknown:
            return current
        }
    }

    private func makeDomainEnvelope(
        from envelope: CodexBridgeHTTPClient.CodexBridgeEnvelope,
        aggregatedText: String
    ) -> StreamEnvelope {
        let kind: StreamEnvelope.Kind
        switch envelope.type {
        case .delta: kind = .delta
        case .patch: kind = .patch
        case .done: kind = .done
        case let .unknown(name): kind = .unknown(name)
        }

        let text: String?
        switch envelope.type {
        case .delta, .patch:
            text = aggregatedText
        case .done:
            text = aggregatedText
        case .unknown:
            text = extractText(from: envelope.raw)
        }

        return StreamEnvelope(kind: kind, text: text, raw: envelope.raw)
    }

    private func extractText(from raw: String?) -> String? {
        guard let raw else { return nil }
        if let data = raw.data(using: .utf8),
           let json = try? JSONSerialization.jsonObject(with: data) as? [String: Any] {
            if let payload = json["payload"] as? [String: Any],
               let text = payload["text"] as? String {
                return text
            }
            if let text = json["text"] as? String {
                return text
            }
        }
        return raw
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
}
