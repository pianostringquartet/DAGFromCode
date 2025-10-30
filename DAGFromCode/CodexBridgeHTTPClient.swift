//
//  CodexBridgeHTTPClient.swift
//  DAGFromCode
//
//  Created by Codex on 10/29/25.
//

import Foundation

struct CodexBridgeHTTPClient {
    // MARK: - Streaming Envelope
    enum EventType: Equatable {
        case delta
        case patch
        case error
        case log
        case done
        case unknown(String)
    }

    struct CodexBridgeEnvelope: Equatable {
        enum EventKind: Equatable {
            case delta
            case patch
            case error
            case log
            case done
            case unknown(String)

            static func make(eventName: String?, payloadType: String?) -> Self {
                if let eventName {
                    switch eventName.lowercased() {
                    case "delta": return .delta
                    case "patch": return .patch
                    case "error": return .error
                    case "log": return .log
                    case "done": return .done
                    default: break
                    }
                }

                if let payloadType {
                    switch payloadType.lowercased() {
                    case "delta": return .delta
                    case "patch": return .patch
                    case "error": return .error
                    case "log": return .log
                    case "done": return .done
                    default: break
                    }
                }

                let fallback = eventName ?? payloadType ?? ""
                return .unknown(fallback)
            }
        }

        enum JSONValue: Equatable, Decodable {
            case string(String)
            case number(Double)
            case bool(Bool)
            case object([String: JSONValue])
            case array([JSONValue])
            case null

            init(from decoder: Decoder) throws {
                let container = try decoder.singleValueContainer()
                if container.decodeNil() {
                    self = .null
                } else if let string = try? container.decode(String.self) {
                    self = .string(string)
                } else if let bool = try? container.decode(Bool.self) {
                    self = .bool(bool)
                } else if let double = try? container.decode(Double.self) {
                    self = .number(double)
                } else if let object = try? container.decode([String: JSONValue].self) {
                    self = .object(object)
                } else if let array = try? container.decode([JSONValue].self) {
                    self = .array(array)
                } else {
                    throw DecodingError.dataCorruptedError(
                        in: container,
                        debugDescription: "Unsupported JSON fragment for CodexBridgeEnvelope"
                    )
                }
            }
        }

        let kind: EventKind
        let id: String?
        let messageType: String?
        let timestamp: Date?
        let text: String?
        let payload: JSONValue?
        let json: JSONValue?
        let raw: String?

        var type: EventType {
            switch kind {
            case .delta:
                return .delta
            case .patch:
                return .patch
            case .done:
                return .done
            case .error:
                return .error
            case .log:
                return .log
            case let .unknown(label):
                return .unknown(label)
            }
        }
    }

    struct StreamHandlers {
        var onError: ((CodexBridgeEnvelope) -> Void)?
        var onLog: ((CodexBridgeEnvelope) -> Void)?

        init(onError: ((CodexBridgeEnvelope) -> Void)? = nil, onLog: ((CodexBridgeEnvelope) -> Void)? = nil) {
            self.onError = onError
            self.onLog = onLog
        }
    }

    enum ClientError: Error, Equatable {
        case invalidResponse
        case httpStatus(Int)
        case decodingFailed
        case protocolViolation(details: String)
        case underlying(description: String)

    }

    private let session: URLSession

    init(session: URLSession = .shared) {
        self.session = session
    }

    func healthCheck(configuration: ResolvedConfiguration) async -> Result<String, ClientError> {
        var request = URLRequest(url: configuration.baseURL.appendingPathComponent("healthz"))
        request.httpMethod = "GET"
        addAuthorizationIfNeeded(token: configuration.token, to: &request)

        do {
            let (data, response) = try await session.data(for: request)
            guard let httpResponse = response as? HTTPURLResponse else {
                return .failure(.invalidResponse)
            }

            guard (200..<300).contains(httpResponse.statusCode) else {
                return .failure(.httpStatus(httpResponse.statusCode))
            }

            return .success(extractMessage(from: data, fallback: "Bridge online"))
        } catch {
            return .failure(.underlying(description: error.localizedDescription))
        }
    }

    func sendMessage(configuration: ResolvedConfiguration, body: String) async -> Result<String, ClientError> {
        var request = URLRequest(url: configuration.baseURL.appendingPathComponent("prompt"))
        request.httpMethod = "POST"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        addAuthorizationIfNeeded(token: configuration.token, to: &request)

        do {
            request.httpBody = try JSONEncoder().encode(PromptPayload(prompt: body))
        } catch {
            return .failure(.underlying(description: error.localizedDescription))
        }

        do {
            let (data, response) = try await session.data(for: request)
            guard let httpResponse = response as? HTTPURLResponse else {
                return .failure(.invalidResponse)
            }

            guard (200..<300).contains(httpResponse.statusCode) else {
                return .failure(.httpStatus(httpResponse.statusCode))
            }

            return .success(extractMessage(from: data, fallback: "Prompt accepted"))
        } catch {
            return .failure(.underlying(description: error.localizedDescription))
        }
    }

    func latestMessage(configuration: ResolvedConfiguration) async -> Result<String, ClientError> {
        var request = URLRequest(url: configuration.baseURL.appendingPathComponent("latest"))
        request.httpMethod = "GET"
        addAuthorizationIfNeeded(token: configuration.token, to: &request)

        do {
            let (data, response) = try await session.data(for: request)
            guard let httpResponse = response as? HTTPURLResponse else {
                return .failure(.invalidResponse)
            }

            guard (200..<300).contains(httpResponse.statusCode) else {
                return .failure(.httpStatus(httpResponse.statusCode))
            }

            return .success(extractMessage(from: data, fallback: ""))
        } catch {
            return .failure(.underlying(description: error.localizedDescription))
        }
    }

    private func addAuthorizationIfNeeded(token: String?, to request: inout URLRequest) {
        if let token, !token.isEmpty {
            request.addValue("Bearer \(token)", forHTTPHeaderField: "Authorization")
        }
    }

    private func extractMessage(from data: Data, fallback: String) -> String {
        guard !data.isEmpty else { return fallback }

        if let jsonObject = try? JSONSerialization.jsonObject(with: data) as? [String: Any] {
            if let message = jsonObject["message"] as? String { return message }
            if let ack = jsonObject["ack"] as? String { return ack }
            if let echo = jsonObject["echo"] as? String { return echo }
            if let status = jsonObject["status"] as? String { return status }
        }

        if let text = String(data: data, encoding: .utf8), !text.isEmpty {
            return text
        }

        return fallback
    }

    // MARK: - Server-Sent Events (SSE)

    /// Streams envelopes from the bridge `GET /stream` endpoint.
    /// - Parameters:
    ///   - configuration: Resolved bridge configuration.
    ///   - handlers: Optional callbacks for relaying `.error` and `.log` frames without
    ///     requiring the caller to consume them from the primary stream.
    /// - Returns: An `AsyncThrowingStream` of `CodexBridgeEnvelope` values.
    ///   The stream emits `.done` automatically when the underlying connection closes cleanly and
    ///   no explicit `.done` frame was observed.
    func stream(
        configuration: ResolvedConfiguration,
        handlers: StreamHandlers = StreamHandlers()
    ) -> AsyncThrowingStream<CodexBridgeEnvelope, Error> {
        AsyncThrowingStream { continuation in
            Task {
                var request = URLRequest(url: configuration.baseURL.appendingPathComponent("stream"))
                request.httpMethod = "GET"
                request.addValue("text/event-stream", forHTTPHeaderField: "Accept")
                request.addValue("no-cache", forHTTPHeaderField: "Cache-Control")
                addAuthorizationIfNeeded(token: configuration.token, to: &request)

                do {
                    let (bytes, response) = try await session.bytes(for: request)
                    guard let httpResponse = response as? HTTPURLResponse else {
                        throw ClientError.invalidResponse
                    }
                    guard (200..<300).contains(httpResponse.statusCode) else {
                        throw ClientError.httpStatus(httpResponse.statusCode)
                    }

                    var parser = SSEParser()
                    var sawDoneFrame = false
                    let streamHandlers = handlers

                    let emit: (CodexBridgeEnvelope) -> Void = { envelope in
                        if envelope.kind == .done { sawDoneFrame = true }
                        switch envelope.kind {
                        case .error:
                            streamHandlers.onError?(envelope)
                        case .log:
                            streamHandlers.onLog?(envelope)
                        default:
                            break
                        }
                        continuation.yield(envelope)
                    }

                    do {
                        for try await line in bytes.lines {
                            try Task.checkCancellation()
                            if let envelope = try parser.consume(line: line) {
                                emit(envelope)
                            }
                        }

                        if let trailing = try parser.flushPending() {
                            emit(trailing)
                        }
                    } catch let clientError as ClientError {
                        continuation.finish(throwing: clientError)
                        return
                    }

                    if !sawDoneFrame {
                        emit(
                            CodexBridgeEnvelope(
                                kind: .done,
                                id: nil,
                                messageType: nil,
                                timestamp: nil,
                                text: nil,
                                payload: nil,
                                json: nil,
                                raw: nil
                            )
                        )
                    }

                    continuation.finish()
                } catch let clientError as ClientError {
                    continuation.finish(throwing: clientError)
                } catch {
                    continuation.finish(throwing: ClientError.underlying(description: error.localizedDescription))
                }
            }
        }
    }
}

private struct PromptPayload: Encodable {
    let prompt: String
}

// MARK: - Internal SSE Parser

extension CodexBridgeHTTPClient {
    struct SSEParser {
        private struct Metadata {
            let id: String?
            let type: String?
            let timestamp: Date?
            let text: String?
            let payload: CodexBridgeEnvelope.JSONValue?
        }

        private var currentEvent: String? = nil
        private var currentID: String? = nil
        private var dataLines: [String] = []
        private let decoder: JSONDecoder
        private let iso8601WithFractional: ISO8601DateFormatter
        private let iso8601WithoutFractional: ISO8601DateFormatter

        init(decoder: JSONDecoder = JSONDecoder()) {
            self.decoder = decoder
            let fractional = ISO8601DateFormatter()
            fractional.formatOptions = [.withInternetDateTime, .withFractionalSeconds]
            self.iso8601WithFractional = fractional

            let standard = ISO8601DateFormatter()
            standard.formatOptions = [.withInternetDateTime]
            self.iso8601WithoutFractional = standard
        }

        /// Consume a single SSE line (without trailing newline). Returns an envelope when a frame completes.
        /// Frame completes on an empty line separating events.
        mutating func consume(line: String) throws -> CodexBridgeEnvelope? {
            if line.hasPrefix("event:") {
                let pending = try flushPendingEventIfNeeded()
                currentEvent = String(line.dropFirst("event:".count)).trimmingCharacters(in: .whitespacesAndNewlines)
                if let pending { return pending }
                return nil
            }

            if line.hasPrefix("data:") {
                let dataPart = String(line.dropFirst("data:".count))
                    .trimmingCharacters(in: .whitespacesAndNewlines)
                dataLines.append(dataPart)
                return nil
            }

            if line.hasPrefix("id:") {
                currentID = String(line.dropFirst("id:".count)).trimmingCharacters(in: .whitespacesAndNewlines)
                return nil
            }

            if line.hasPrefix(":") {
                // Comment line, ignore per SSE specification.
                return nil
            }

            if line.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty {
                return try finishFrame()
            }

            // Unknown fields (retry:, etc.) are ignored for now.
            return nil
        }

        /// Flushes any pending frame without requiring an empty line (used on EOF).
        mutating func flushPending() throws -> CodexBridgeEnvelope? {
            return try finishFrame()
        }

        private mutating func flushPendingEventIfNeeded() throws -> CodexBridgeEnvelope? {
            if !dataLines.isEmpty {
                return try finishFrame()
            }
            return nil
        }

        private mutating func finishFrame() throws -> CodexBridgeEnvelope? {
            guard currentEvent != nil || !dataLines.isEmpty || currentID != nil else { return nil }

            let eventName = currentEvent?.trimmingCharacters(in: .whitespacesAndNewlines)
            let identifier = currentID?.trimmingCharacters(in: .whitespacesAndNewlines)
            let payloadString = dataLines.isEmpty ? nil : dataLines.joined(separator: "\n")

            currentEvent = nil
            currentID = nil
            dataLines.removeAll(keepingCapacity: false)

            return try makeEnvelope(event: eventName, id: identifier, rawPayload: payloadString)
        }

        private func makeEnvelope(
            event: String?,
            id: String?,
            rawPayload: String?
        ) throws -> CodexBridgeEnvelope {
            let trimmedEvent = event?.isEmpty == false ? event : nil

            guard let raw = rawPayload, !raw.isEmpty else {
                let kind = CodexBridgeEnvelope.EventKind.make(eventName: trimmedEvent, payloadType: nil)
                return CodexBridgeEnvelope(
                    kind: kind,
                    id: id,
                    messageType: nil,
                    timestamp: nil,
                    text: nil,
                    payload: nil,
                    json: nil,
                    raw: nil
                )
            }

            guard let data = raw.data(using: .utf8) else {
                throw ClientError.protocolViolation(details: "Non-UTF8 payload for event \(trimmedEvent ?? "")")
            }

            do {
                let json = try decoder.decode(CodexBridgeEnvelope.JSONValue.self, from: data)
                let metadata = extractMetadata(from: json)
                let kind = CodexBridgeEnvelope.EventKind.make(eventName: trimmedEvent, payloadType: metadata.type)
                return CodexBridgeEnvelope(
                    kind: kind,
                    id: metadata.id ?? id,
                    messageType: metadata.type,
                    timestamp: metadata.timestamp,
                    text: metadata.text,
                    payload: metadata.payload,
                    json: json,
                    raw: raw
                )
            } catch {
                throw ClientError.protocolViolation(details: "Malformed JSON payload for event \(trimmedEvent ?? "")")
            }
        }

        private func extractMetadata(from json: CodexBridgeEnvelope.JSONValue) -> Metadata {
            guard case let .object(object) = json else {
                return Metadata(id: nil, type: nil, timestamp: nil, text: json.stringValue, payload: nil)
            }

            let id = object["id"]?.stringValue
            let type = object["type"]?.stringValue
            let timestamp = object["timestamp"]?.stringValue.flatMap(parseTimestamp)
            let payload = object["payload"]

            let text = object["text"]?.stringValue
                ?? payload?.objectValue?["text"]?.stringValue
                ?? object["message"]?.stringValue

            return Metadata(
                id: id,
                type: type,
                timestamp: timestamp,
                text: text,
                payload: payload
            )
        }

        private func parseTimestamp(_ raw: String) -> Date? {
            if let date = iso8601WithFractional.date(from: raw) {
                return date
            }
            return iso8601WithoutFractional.date(from: raw)
        }
    }
}

extension CodexBridgeHTTPClient.CodexBridgeEnvelope.JSONValue {
    var stringValue: String? {
        if case let .string(value) = self { return value }
        return nil
    }

    var objectValue: [String: CodexBridgeHTTPClient.CodexBridgeEnvelope.JSONValue]? {
        if case let .object(object) = self { return object }
        return nil
    }
}
