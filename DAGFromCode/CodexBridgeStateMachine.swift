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
            nextState.stream = .idle
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
            nextState.stream = .idle
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
            if state.isListening { nextState.stream = .listening }
            if !message.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty {
                nextState.lastResponse = message
            }
            return (nextState, [])

        case let .healthCheckFailed(description):
            var nextState = state
            nextState.status = .error(description: description)
            nextState.isSending = false
            if state.isListening { nextState.stream = .idle }
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
                nextState.stream = .listening
                return (nextState, commands + [.beginListening(configuration: configuration)])

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
            if state.isListening { nextState.stream = .listening }

            return (nextState, [])

        case let .latestMessagePollFailed(description):
            var nextState = state
            nextState.status = .error(description: description)
            if state.isListening {
                let failure = classify(description: description)
                if isPermanent(failure) {
                    nextState.stream = .stopped
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
            if state.isListening { nextState.stream = .listening }
            nextState.status = .connecting
            return (nextState, [])

        case .streamClosed:
            var nextState = state
            nextState.stream = state.isListening ? .listening : .stopped
            return (nextState, [])

        case let .streamEnvelopeReceived(envelope):
            var nextState = state

            switch envelope.kind {
            case .delta, .patch:
                if let text = envelope.text?.trimmingCharacters(in: .whitespacesAndNewlines), !text.isEmpty {
                    nextState.lastResponse = text
                }
                if state.isListening { nextState.stream = .listening }
                nextState.status = .online(message: "Streaming response updated")

            case .done:
                if let text = envelope.text?.trimmingCharacters(in: .whitespacesAndNewlines), !text.isEmpty {
                    nextState.lastResponse = text
                }
                nextState.status = .online(message: "Stream completed")
                nextState.stream = state.isListening ? .listening : .stopped

            case let .unknown(name):
                if state.isListening { nextState.stream = .listening }
                nextState.status = .online(message: "Received stream event: \(name)")
            }

            return (nextState, [])

        case let .streamFailed(reason):
            var nextState = state
            if isPermanent(reason) {
                nextState.stream = .stopped
                nextState.status = .error(description: describe(streamFailure: reason))
            } else {
                let nextAttempt = currentAttempt(from: state.stream) + 1
                let delay = backoffDelay(attempt: nextAttempt)
                nextState.stream = .backingOff(StreamBackoff(attempt: nextAttempt, delaySeconds: delay))
                nextState.status = .error(description: describe(streamFailure: reason))
            }
            return (nextState, [])

        case .streamBackoffElapsed:
            var nextState = state
            if state.isListening { nextState.stream = .listening }
            return (nextState, [])
        }
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
        if case let .backingOff(backoff) = stream { return backoff.attempt }
        return 0
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
