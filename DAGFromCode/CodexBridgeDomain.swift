//
//  CodexBridgeDomain.swift
//  DAGFromCode
//
//  Created by Codex on 10/29/25.
//

import Foundation

enum CodexBridgeStatus: Equatable {
    case idle
    case connecting
    case online(message: String)
    case error(description: String)
}

struct CodexBridgeConfiguration: Equatable {
    var host: String
    var port: String
    var token: String?

    init(host: String = "127.0.0.1", port: String = "17890", token: String? = nil) {
        self.host = host
        self.port = port
        self.token = token
    }
}

struct CodexBridgeState: Equatable {
    var configuration: CodexBridgeConfiguration
    var status: CodexBridgeStatus
    var messageDraft: String
    var lastResponse: String?
    var isSending: Bool
    var isListening: Bool

    init(
        configuration: CodexBridgeConfiguration = CodexBridgeConfiguration(),
        status: CodexBridgeStatus = .idle,
        messageDraft: String = "Hello. Sent from Mac Catalyst",
        lastResponse: String? = nil,
        isSending: Bool = false,
        isListening: Bool = false
    ) {
        self.configuration = configuration
        self.status = status
        self.messageDraft = messageDraft
        self.lastResponse = lastResponse
        self.isSending = isSending
        self.isListening = isListening
    }
}

enum CodexBridgeAction: Equatable {
    case hostChanged(String)
    case portChanged(String)
    case tokenChanged(String)
    case messageDraftChanged(String)
    case requestHealthCheck
    case healthCheckSucceeded(message: String)
    case healthCheckFailed(description: String)
    case sendMessage
    case messageSendSucceeded(response: String)
    case messageSendFailed(description: String)
    case clearResponse
    case startListening
    case stopListening
    case latestMessagePolled(String)
    case latestMessagePollFailed(description: String)
}

enum CodexBridgeCommand: Equatable {
    case performHealthCheck(configuration: ResolvedConfiguration)
    case sendMessage(configuration: ResolvedConfiguration, body: String)
    case beginListening(configuration: ResolvedConfiguration)
    case endListening
}

struct ResolvedConfiguration: Equatable {
    let baseURL: URL
    let token: String?
}

enum CodexBridgeResolutionError: Error, Equatable {
    case invalidPort
    case invalidHost
    case emptyMessage
}

struct CodexBridgeResolver {
    func resolve(configuration: CodexBridgeConfiguration) -> Result<ResolvedConfiguration, CodexBridgeResolutionError> {
        guard let portNumber = Int(configuration.port), (0..<65536).contains(portNumber) else {
            return .failure(.invalidPort)
        }

        let trimmedHost = configuration.host.trimmingCharacters(in: .whitespacesAndNewlines)
        guard !trimmedHost.isEmpty else {
            return .failure(.invalidHost)
        }

        var components = URLComponents()
        components.scheme = "http"
        components.host = trimmedHost
        components.port = portNumber

        guard let url = components.url else {
            return .failure(.invalidHost)
        }

        return .success(ResolvedConfiguration(baseURL: url, token: configuration.token.nilIfEmpty))
    }
}

private extension Optional where Wrapped == String {
    var nilIfEmpty: String? {
        guard let value = self else { return nil }
        return value.isEmpty ? nil : value
    }
}
