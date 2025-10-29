//
//  CodexBridgeStateMachine.swift
//  DAGFromCode
//
//  Created by Codex on 10/29/25.
//

import Foundation

struct CodexBridgeStateMachine {
    private let resolver: CodexBridgeResolver

    init(resolver: CodexBridgeResolver = CodexBridgeResolver()) {
        self.resolver = resolver
    }

    func reduce(state: CodexBridgeState, action: CodexBridgeAction) -> (CodexBridgeState, [CodexBridgeCommand]) {
        switch action {
        case let .hostChanged(host):
            var nextState = state
            nextState.configuration.host = host
            nextState.status = .idle
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
            var commands: [CodexBridgeCommand] = []
            if state.isListening {
                nextState.isListening = false
                commands.append(.endListening)
            }
            return (nextState, commands)

        case let .tokenChanged(token):
            var nextState = state
            nextState.configuration.token = token
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
            if !message.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty {
                nextState.lastResponse = message
            }
            return (nextState, [])

        case let .healthCheckFailed(description):
            var nextState = state
            nextState.status = .error(description: description)
            nextState.isSending = false
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
                return (nextState, commands + [.beginListening(configuration: configuration)])

            case let .failure(error):
                var nextState = state
                nextState.isListening = false
                nextState.status = .error(description: describe(error: error))
                return (nextState, commands)
            }

        case .stopListening:
            var nextState = state
            nextState.isListening = false
            return (nextState, [.endListening])

        case let .latestMessagePolled(message):
            var nextState = state
            let trimmed = message.trimmingCharacters(in: .whitespacesAndNewlines)

            if !trimmed.isEmpty {
                nextState.lastResponse = trimmed
                nextState.status = .online(message: "Message delivered")
            }

            return (nextState, [])

        case let .latestMessagePollFailed(description):
            var nextState = state
            nextState.status = .error(description: description)
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
}
