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

// MARK: - CLI subprocess health
enum CLIProcessHealth: Equatable {
    case running
    case degraded(exitCode: Int32)
    case restartScheduled(retryIn: TimeInterval)
}

// MARK: - Bridge presentation helpers
enum BridgeStatusColor: String, Equatable {
    case neutral
    case informative
    case success
    case warning
    case critical
}

enum BridgeAvailableAction: Equatable {
    case startListening
    case stopListening
    case restartCLI
    case sendMessage
    case retryConnection
    case clearResponse
}

struct BridgeAlert: Equatable, Identifiable {
    enum Level: Equatable {
        case info
        case warning
        case critical
    }

    let id: UUID
    let level: Level
    let message: String
    let timestamp: Date

    init(id: UUID = UUID(), level: Level, message: String, timestamp: Date = Date()) {
        self.id = id
        self.level = level
        self.message = message
        self.timestamp = timestamp
    }
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
    case awaitingCLI(retryIn: TimeInterval?)
    case stopped
}

/// Streaming payload emitted by `/stream`.
struct StreamEnvelope: Equatable {
    enum Kind: Equatable {
        case delta
        case patch
        case done
        case handshake
        case unknown(String)
    }

    enum Source: Equatable {
        case cli
        case tool(String)
        case system
        case unknown(String)
    }

    struct Metadata: Equatable {
        let id: String
        let source: Source
        let timestamp: Date
        let kind: Kind
        let payloadSummary: String?

        init(id: String, source: Source, timestamp: Date, kind: Kind, payloadSummary: String?) {
            self.id = id
            self.source = source
            self.timestamp = timestamp
            self.kind = kind
            self.payloadSummary = payloadSummary
        }
    }

    let metadata: Metadata
    let text: String?
    let raw: String?

    init(metadata: Metadata, text: String?, raw: String?) {
        self.metadata = metadata
        self.text = text
        self.raw = raw
    }

    init(
        id: String = UUID().uuidString,
        source: Source = .cli,
        timestamp: Date = Date(),
        kind: Kind,
        payloadSummary: String? = nil,
        text: String?,
        raw: String?
    ) {
        let summary = StreamEnvelope.normalizedSummary(
            explicit: payloadSummary,
            text: text,
            raw: raw
        )
        self.init(
            metadata: Metadata(
                id: id,
                source: source,
                timestamp: timestamp,
                kind: kind,
                payloadSummary: summary
            ),
            text: text,
            raw: raw
        )
    }

    init(kind: Kind, text: String?, raw: String?) {
        self.init(kind: kind, text: text, raw: raw, payloadSummary: nil)
    }

    private init(kind: Kind, text: String?, raw: String?, payloadSummary: String?) {
        self.init(
            id: UUID().uuidString,
            source: .cli,
            timestamp: Date(),
            kind: kind,
            payloadSummary: payloadSummary,
            text: text,
            raw: raw
        )
    }

    private static func normalizedSummary(explicit: String?, text: String?, raw: String?) -> String? {
        if let value = explicit?.trimmingCharacters(in: .whitespacesAndNewlines), !value.isEmpty {
            return value
        }

        if let text, !text.isEmpty {
            return text.count > 120 ? String(text.prefix(117)) + "..." : text
        }

        guard let raw else { return nil }
        let trimmed = raw.trimmingCharacters(in: .whitespacesAndNewlines)
        return trimmed.count > 120 ? String(trimmed.prefix(117)) + "..." : trimmed
    }

    var kind: Kind { metadata.kind }
    var source: Source { metadata.source }
    var id: String { metadata.id }
    var timestamp: Date { metadata.timestamp }
    var payloadSummary: String? { metadata.payloadSummary }
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
    case cliAuthentication
    case handshakeFailed(description: String?)
    case malformedEvent(description: String)
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
    var cliHealth: CLIProcessHealth
    var stream: StreamState
    var messageDraft: String
    var lastResponse: String?
    var lastEnvelopeID: String?
    var isSending: Bool
    var isListening: Bool
    var alerts: [BridgeAlert]

    init(
        configuration: CodexBridgeConfiguration = CodexBridgeConfiguration(),
        status: CodexBridgeStatus = .idle,
        cliHealth: CLIProcessHealth = .running,
        stream: StreamState = .idle,
        messageDraft: String = "Hello. Sent from Mac Catalyst",
        lastResponse: String? = nil,
        lastEnvelopeID: String? = nil,
        isSending: Bool = false,
        isListening: Bool = false,
        alerts: [BridgeAlert] = []
    ) {
        self.configuration = configuration
        self.status = status
        self.cliHealth = cliHealth
        self.stream = stream
        self.messageDraft = messageDraft
        self.lastResponse = lastResponse
        self.lastEnvelopeID = lastEnvelopeID
        self.isSending = isSending
        self.isListening = isListening
        self.alerts = alerts
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
    case cliProcessStarted
    case cliProcessExited(code: Int32, stderr: String?)
    case streamErrorReceived(reason: StreamFailure, envelopeID: String?)
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

// MARK: - State derivations for UI badges
extension CodexBridgeState {
    var statusText: String {
        switch cliHealth {
        case .running:
            switch status {
            case .idle:
                return "Bridge idle"
            case .connecting:
                return "Connecting to Codex CLI…"
            case let .online(message):
                return message
            case let .error(description):
                return description
            }

        case let .degraded(exitCode):
            return "CLI exited with code \(exitCode)"

        case let .restartScheduled(retryIn):
            return "CLI restart scheduled in \(CodexBridgeState.formatDuration(retryIn))"
        }
    }

    var statusColor: BridgeStatusColor {
        switch cliHealth {
        case .running:
            switch status {
            case .idle:
                return .neutral
            case .connecting:
                return .informative
            case .online:
                return .success
            case .error:
                return .warning
            }

        case .degraded:
            return .critical

        case .restartScheduled:
            return .warning
        }
    }

    var availableActions: [BridgeAvailableAction] {
        var actions: [BridgeAvailableAction] = []

        if isListening {
            actions.append(.stopListening)
        } else {
            actions.append(.startListening)
        }

        switch cliHealth {
        case .running:
            break
        case .degraded:
            actions.append(.restartCLI)
        case .restartScheduled:
            actions.append(.retryConnection)
        }

        if !messageDraft.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty {
            actions.append(.sendMessage)
        }

        if lastResponse != nil {
            actions.append(.clearResponse)
        }

        // Deduplicate while preserving order.
        var deduped: [BridgeAvailableAction] = []
        for action in actions where !deduped.contains(action) {
            deduped.append(action)
        }
        return deduped
    }

    private static func formatDuration(_ seconds: TimeInterval) -> String {
        if seconds >= 60 {
            let minutes = Int(seconds) / 60
            let rem = seconds.truncatingRemainder(dividingBy: 60)
            return String(format: "%dm %.0fs", minutes, rem)
        } else if seconds >= 1 {
            return String(format: "%.1fs", seconds)
        } else {
            return "<1s"
        }
    }
}
