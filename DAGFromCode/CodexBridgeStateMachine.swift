//
//  CodexBridgeStateMachine.swift
//  DAGFromCode
//
//  Created by Codex on 10/29/25.
//

import Foundation

struct CodexBridgeStateMachine {
    private let resolver: CodexBridgeResolver
    private let backoffBaseSeconds: TimeInterval = 1.0
    private let backoffMaxSeconds: TimeInterval = 30.0

    init(resolver: CodexBridgeResolver = CodexBridgeResolver()) {
        self.resolver = resolver
    }

    func reduce(state: CodexBridgeState, action: CodexBridgeAction) -> (CodexBridgeState, [CodexBridgeCommand]) {
        switch action {
        case let .hostChanged(host):
            var nextState = state
            nextState.configuration.host = host
            nextState.status = .idle
            nextState.cliHealth = .running
            nextState.stream = .idle
            nextState.lastEnvelopeID = nil
            nextState.alerts.removeAll()
            var commands: [CodexBridgeCommand] = []
            if state.isListening {
                nextState.isListening = false
                commands.append(.endListening)
            }
            return (nextState, commands)

        case let .portChanged(port):
            var nextState = state
            nextState.configuration.port = port
            nextState.status = .idle
            nextState.cliHealth = .running
            nextState.stream = .idle
            nextState.lastEnvelopeID = nil
            nextState.alerts.removeAll()
            var commands: [CodexBridgeCommand] = []
            if state.isListening {
                nextState.isListening = false
                commands.append(.endListening)
            }
            return (nextState, commands)

        case let .tokenChanged(token):
            var nextState = state
            nextState.configuration.token = token
            nextState.stream = .idle
            nextState.lastEnvelopeID = nil
            nextState.alerts.removeAll()
            var commands: [CodexBridgeCommand] = []
            if state.isListening {
                nextState.isListening = false
                commands.append(.endListening)
            }
            return (nextState, commands)

        case let .messageDraftChanged(message):
            var nextState = state
            nextState.messageDraft = message
            return (nextState, [])

        case .requestHealthCheck:
            switch resolver.resolve(configuration: state.configuration) {
            case let .success(configuration):
                var nextState = state
                nextState.status = .connecting
                nextState.lastResponse = nil
                return (nextState, [.performHealthCheck(configuration: configuration)])

            case let .failure(error):
                var nextState = state
                nextState.status = .error(description: describe(error: error))
                return (nextState, [])
            }

        case let .healthCheckSucceeded(message):
            var nextState = state
            nextState.status = .online(message: message)
            nextState.isSending = false
            nextState.cliHealth = .running
            let trimmed = message.trimmingCharacters(in: .whitespacesAndNewlines)
            if !trimmed.isEmpty {
                nextState.lastResponse = trimmed
            }

            var commands: [CodexBridgeCommand] = []

            if state.isListening {
                if case .awaitingCLI = state.stream {
                    switch resolver.resolve(configuration: state.configuration) {
                    case let .success(configuration):
                        nextState.stream = .listening
                        commands.append(.beginListening(configuration: configuration))
                    case let .failure(error):
                        nextState.status = .error(description: describe(error: error))
                        nextState.stream = .idle
                    }
                } else if case .stopped = state.stream {
                    // No-op: user opted to stop listening explicitly.
                } else {
                    nextState.stream = .listening
                }
            }

            return (nextState, commands)

        case let .healthCheckFailed(description):
            var nextState = state
            nextState.status = .error(description: description)
            nextState.isSending = false
            if state.isListening { nextState.stream = .awaitingCLI(retryIn: nil) }
            appendAlert(&nextState, level: .warning, message: description)
            return (nextState, [])

        case .sendMessage:
            guard !state.messageDraft.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty else {
                var nextState = state
                nextState.status = .error(description: describe(error: .emptyMessage))
                return (nextState, [])
            }

            switch resolver.resolve(configuration: state.configuration) {
            case let .success(configuration):
                var nextState = state
                nextState.isSending = true
                nextState.status = .connecting
                return (nextState, [.sendMessage(configuration: configuration, body: state.messageDraft)])

            case let .failure(error):
                var nextState = state
                nextState.status = .error(description: describe(error: error))
                return (nextState, [])
            }

        case let .messageSendSucceeded(response):
            var nextState = state
            nextState.isSending = false
            nextState.status = .online(message: "Message delivered")
            nextState.lastResponse = response
            return (nextState, [])

        case let .messageSendFailed(description):
            var nextState = state
            nextState.isSending = false
            nextState.status = .error(description: description)
            return (nextState, [])

        case .clearResponse:
            var nextState = state
            nextState.lastResponse = nil
            return (nextState, [])

        case .startListening:
            var commands: [CodexBridgeCommand] = []
            if state.isListening {
                commands.append(.endListening)
            }

            switch resolver.resolve(configuration: state.configuration) {
            case let .success(configuration):
                var nextState = state
                nextState.isListening = true
                if !state.isSending {
                    nextState.status = .connecting
                }
                if case .running = state.cliHealth {
                    nextState.stream = .listening
                    commands.append(.beginListening(configuration: configuration))
                } else {
                    nextState.stream = .awaitingCLI(retryIn: currentRestartDelay(from: state))
                    appendAlert(&nextState, level: .info, message: "Waiting for CLI to restart before listening")
                }
                return (nextState, commands)

            case let .failure(error):
                var nextState = state
                nextState.isListening = false
                nextState.status = .error(description: describe(error: error))
                nextState.stream = .idle
                return (nextState, commands)
            }

        case .stopListening:
            var nextState = state
            nextState.isListening = false
            nextState.stream = .stopped
            return (nextState, [.endListening])

        case let .latestMessagePolled(message):
            var nextState = state
            let trimmed = message.trimmingCharacters(in: .whitespacesAndNewlines)

            if !trimmed.isEmpty {
                nextState.lastResponse = trimmed
                nextState.status = .online(message: "Message delivered")
            }

            // Any successful poll restores listening state (clears backoff)
            if state.isListening, case .running = state.cliHealth {
                nextState.stream = .listening
            }

            return (nextState, [])

        case let .latestMessagePollFailed(description):
            var nextState = state
            nextState.status = .error(description: description)
            appendAlert(&nextState, level: .warning, message: description)
            if state.isListening {
                let failure = classify(description: description)
                if isPermanent(failure) {
                    nextState.stream = .stopped
                    if case .cliAuthentication = failure {
                        nextState.cliHealth = .degraded(exitCode: -1)
                    }
                } else {
                    let nextAttempt = currentAttempt(from: state.stream) + 1
                    let delay = backoffDelay(attempt: nextAttempt)
                    nextState.stream = .backingOff(StreamBackoff(attempt: nextAttempt, delaySeconds: delay))
                }
            }
            return (nextState, [])

        // MARK: - Streaming-specific actions
        case .streamConnected:
            var nextState = state
            if state.isListening, case .running = state.cliHealth {
                nextState.stream = .listening
            } else if state.isListening {
                nextState.stream = .awaitingCLI(retryIn: currentRestartDelay(from: state))
            }
            nextState.status = .connecting
            return (nextState, [])

        case .streamClosed:
            var nextState = state
            if state.isListening, case .running = state.cliHealth {
                nextState.stream = .listening
            } else if state.isListening {
                nextState.stream = .awaitingCLI(retryIn: currentRestartDelay(from: state))
            } else {
                nextState.stream = .stopped
            }
            return (nextState, [])

        case let .streamEnvelopeReceived(envelope):
            var nextState = state
            nextState.lastEnvelopeID = envelope.id

            switch envelope.kind {
            case .delta, .patch:
                if let text = envelope.text?.trimmingCharacters(in: .whitespacesAndNewlines), !text.isEmpty {
                    nextState.lastResponse = text
                }
                if state.isListening, case .running = state.cliHealth {
                    nextState.stream = .listening
                }
                let badge = envelope.payloadSummary ?? "Streaming response updated"
                nextState.status = .online(message: badge)

            case .done:
                if let text = envelope.text?.trimmingCharacters(in: .whitespacesAndNewlines), !text.isEmpty {
                    nextState.lastResponse = text
                }
                nextState.status = .online(message: envelope.payloadSummary ?? "Stream completed")
                if state.isListening, case .running = state.cliHealth {
                    nextState.stream = .listening
                } else if state.isListening {
                    nextState.stream = .awaitingCLI(retryIn: currentRestartDelay(from: state))
                } else {
                    nextState.stream = .stopped
                }

            case .handshake:
                nextState.status = .connecting
                if state.isListening, case .running = state.cliHealth {
                    nextState.stream = .listening
                }

            case let .unknown(name):
                if state.isListening, case .running = state.cliHealth {
                    nextState.stream = .listening
                }
                nextState.status = .online(message: "Received stream event: \(name)")
            }

            return (nextState, [])

        case let .streamFailed(reason):
            var nextState = state
            let message = describe(streamFailure: reason)
            appendAlert(&nextState, level: isPermanent(reason) ? .critical : .warning, message: message)

            if isPermanent(reason) {
                nextState.stream = .stopped
                nextState.status = .error(description: message)
            } else {
                let nextAttempt = currentAttempt(from: state.stream) + 1
                let delay = backoffDelay(attempt: nextAttempt)
                switch reason {
                case .handshakeFailed:
                    nextState.stream = .awaitingCLI(retryIn: delay)
                    nextState.cliHealth = .restartScheduled(retryIn: delay)
                default:
                    nextState.stream = .backingOff(StreamBackoff(attempt: nextAttempt, delaySeconds: delay))
                }
                nextState.status = .error(description: message)
            }

            if case .cliAuthentication = reason {
                nextState.cliHealth = .degraded(exitCode: -1)
            }

            return (nextState, [])

        case .streamBackoffElapsed:
            var nextState = state
            var commands: [CodexBridgeCommand] = []

            if state.isListening, case .running = state.cliHealth {
                switch resolver.resolve(configuration: state.configuration) {
                case let .success(configuration):
                    nextState.stream = .listening
                    nextState.status = .connecting
                    commands.append(.beginListening(configuration: configuration))

                case let .failure(error):
                    let description = describe(error: error)
                    nextState.status = .error(description: description)
                    appendAlert(&nextState, level: .warning, message: description)
                    nextState.stream = .idle
                    nextState.isListening = false
                    commands.append(.endListening)
                }
            } else if state.isListening {
                nextState.stream = .awaitingCLI(retryIn: currentRestartDelay(from: state))
            }

            return (nextState, commands)

        case .cliProcessStarted:
            var nextState = state
            nextState.cliHealth = .running
            var commands: [CodexBridgeCommand] = []

            if state.isListening {
                nextState.stream = .awaitingCLI(retryIn: nil)
                switch resolver.resolve(configuration: state.configuration) {
                case let .success(configuration):
                    commands.append(.performHealthCheck(configuration: configuration))
                case let .failure(error):
                    let description = describe(error: error)
                    nextState.status = .error(description: description)
                    appendAlert(&nextState, level: .warning, message: description)
                }
            } else {
                nextState.stream = .idle
            }

            return (nextState, commands)

        case let .cliProcessExited(code, stderr):
            var nextState = state
            nextState.cliHealth = .degraded(exitCode: code)
            let message = cliExitMessage(code: code, stderr: stderr)
            nextState.status = .error(description: message)
            appendAlert(&nextState, level: .critical, message: message)

            if state.isListening {
                let nextAttempt = currentAttempt(from: state.stream) + 1
                let delay = backoffDelay(attempt: nextAttempt)
                nextState.stream = .awaitingCLI(retryIn: delay)
                nextState.cliHealth = .restartScheduled(retryIn: delay)
            } else {
                nextState.stream = .stopped
            }

            return (nextState, [])

        case let .streamErrorReceived(reason, envelopeID):
            var nextState = state
            nextState.lastEnvelopeID = envelopeID ?? state.lastEnvelopeID
            let message = describe(streamFailure: reason)
            appendAlert(&nextState, level: .warning, message: message)

            if isPermanent(reason) {
                nextState.stream = .stopped
            } else if case .handshakeFailed = reason {
                let nextAttempt = currentAttempt(from: state.stream) + 1
                let delay = backoffDelay(attempt: nextAttempt)
                nextState.stream = .awaitingCLI(retryIn: delay)
                nextState.cliHealth = .restartScheduled(retryIn: delay)
            }

            if case .cliAuthentication = reason {
                nextState.cliHealth = .degraded(exitCode: -1)
            }

            nextState.status = .error(description: message)
            return (nextState, [])
        }
    }

    private func appendAlert(_ state: inout CodexBridgeState, level: BridgeAlert.Level, message: String) {
        let trimmed = message.trimmingCharacters(in: .whitespacesAndNewlines)
        guard !trimmed.isEmpty else { return }
        state.alerts.append(BridgeAlert(level: level, message: trimmed))
    }

    private func currentRestartDelay(from state: CodexBridgeState) -> TimeInterval? {
        if case let .restartScheduled(retryIn) = state.cliHealth {
            return retryIn
        }
        if case let .awaitingCLI(retryIn) = state.stream {
            return retryIn
        }
        return nil
    }

    private func cliExitMessage(code: Int32, stderr: String?) -> String {
        let base = "CLI exited with code \(code)"
        guard let stderr = stderr?.trimmingCharacters(in: .whitespacesAndNewlines), !stderr.isEmpty else {
            return base
        }
        let summary = stderr.count > 160 ? String(stderr.prefix(157)) + "..." : stderr
        return "\(base): \(summary)"
    }

    private func describe(error: CodexBridgeResolutionError) -> String {
        switch error {
        case .invalidPort:
            return "Port must be between 0 and 65535."
        case .invalidHost:
            return "Host must be a valid hostname or IP address."
        case .emptyMessage:
            return "Message cannot be empty."
        }
    }

    // MARK: - Backoff helpers
    private func backoffDelay(attempt: Int) -> TimeInterval {
        // Exponential backoff: base * 2^(attempt-1), clamped to max
        let raw = backoffBaseSeconds * pow(2.0, Double(max(0, attempt - 1)))
        return min(backoffMaxSeconds, raw)
    }

    private func currentAttempt(from stream: StreamState) -> Int {
        switch stream {
        case let .backingOff(backoff):
            return backoff.attempt
        case let .awaitingCLI(retryIn):
            guard let retryIn else { return 0 }
            var attempt = 1
            while attempt < 16 && backoffDelay(attempt: attempt) < retryIn {
                attempt += 1
            }
            return attempt
        default:
            return 0
        }
    }

    // MARK: - Failure classification and descriptions
    private func classify(description: String) -> StreamFailure {
        // Try to extract status code from descriptions like
        // "Bridge responded with status code 500."
        if let code = extractStatusCode(from: description) {
            switch code {
            case 401: return .unauthorized
            case 403: return .forbidden
            case 404: return .notFound
            case 429: return .rateLimited
            default: return .httpStatus(code)
            }
        }

        let lowered = description.lowercased()
        if lowered.contains("auth") {
            return .cliAuthentication
        }
        if lowered.contains("handshake") {
            return .handshakeFailed(description: description)
        }
        if lowered.contains("malformed") {
            return .malformedEvent(description: description)
        }
        if lowered.contains("invalid response") { return .invalidResponse }
        if lowered.contains("decode") { return .decoding }
        return .network(description: description)
    }

    private func isPermanent(_ failure: StreamFailure) -> Bool {
        switch failure {
        case .unauthorized, .forbidden, .notFound:
            return true
        case .permanent:
            return true
        case .cliAuthentication:
            return true
        default:
            return false
        }
    }

    private func describe(streamFailure: StreamFailure) -> String {
        switch streamFailure {
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
            return "CLI authentication failed."
        case let .handshakeFailed(description):
            return description ?? "CLI handshake failed."
        case let .malformedEvent(description):
            return "Malformed stream event: \(description)"
        }
    }

    private func extractStatusCode(from description: String) -> Int? {
        // Find the first integer in the string and treat it as status code.
        // Example: "Bridge responded with status code 500." -> 500
        let digits = description.compactMap { $0.isNumber ? $0 : " " }
        let parts = String(digits).split(separator: " ")
        guard let first = parts.first, let code = Int(first) else { return nil }
        return code
    }
}
