//
//  CodexBridgeDomain.swift
//  DAGFromCode
//
//  Created by Codex on 10/29/25.
//

import Foundation

// MARK: - High-level bridge status
enum CodexBridgeStatus: Equatable {
    case idle
    case connecting
    case online(message: String)
    case error(description: String)
}

// MARK: - Streaming domain
/// Backoff metadata for recovering streaming/polling after transient failures.
struct StreamBackoff: Equatable {
    let attempt: Int
    let delaySeconds: TimeInterval
}

enum StreamState: Equatable {
    case idle
    case listening
    case backingOff(StreamBackoff)
    case stopped
}

/// Streaming payload emitted by `/stream`.
struct StreamEnvelope: Equatable {
    enum Kind: Equatable {
        case delta
        case patch
        case done
        case unknown(String)
    }

    let kind: Kind
    let text: String?
    let raw: String?

    init(kind: Kind, text: String?, raw: String?) {
        self.kind = kind
        self.text = text
        self.raw = raw
    }
}

/// Coarse error classes used by the reducer to decide recovery strategy.
enum StreamFailure: Equatable {
    case invalidResponse
    case decoding
    case httpStatus(Int)
    case network(description: String)
    case unauthorized
    case forbidden
    case notFound
    case rateLimited
    case permanent(description: String)
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
    var stream: StreamState
    var messageDraft: String
    var lastResponse: String?
    var isSending: Bool
    var isListening: Bool

    init(
        configuration: CodexBridgeConfiguration = CodexBridgeConfiguration(),
        status: CodexBridgeStatus = .idle,
        stream: StreamState = .idle,
        messageDraft: String = "Hello. Sent from Mac Catalyst",
        lastResponse: String? = nil,
        isSending: Bool = false,
        isListening: Bool = false
    ) {
        self.configuration = configuration
        self.status = status
        self.stream = stream
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
    // Streaming-specific actions (future-ready; reducer is pure)
    case streamConnected
    case streamClosed
    case streamEnvelopeReceived(StreamEnvelope)
    case streamFailed(reason: StreamFailure)
    case streamBackoffElapsed
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
