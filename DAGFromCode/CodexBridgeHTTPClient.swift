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
        case done
        case unknown(String)
    }

    struct CodexBridgeEnvelope: Equatable {
        let type: EventType
        let raw: String?
    }

    enum ClientError: Error, Equatable {
        case invalidResponse
        case httpStatus(Int)
        case decodingFailed
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
    /// - Returns: An `AsyncThrowingStream` of `CodexBridgeEnvelope` values.
    /// The stream emits `.done` automatically when the underlying connection closes cleanly.
    func stream(configuration: ResolvedConfiguration) -> AsyncThrowingStream<CodexBridgeEnvelope, Error> {
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

                    for try await line in bytes.lines {
                        if let envelope = parser.consume(line: line) {
                            continuation.yield(envelope)
                        }
                    }

                    // Connection closed (EOF). Flush any pending frame and emit `.done`.
                    if let pending = parser.flushPending() { continuation.yield(pending) }
                    continuation.yield(CodexBridgeEnvelope(type: .done, raw: nil))
                    continuation.finish()
                } catch {
                    continuation.finish(throwing: error)
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
        private var currentEvent: String? = nil
        private var dataLines: [String] = []

        /// Consume a single SSE line (without trailing newline). Returns an envelope when a frame completes.
        /// Frame completes on an empty line separating events.
        mutating func consume(line: String) -> CodexBridgeEnvelope? {
            // RFC 8875 compatible-enough handling for basic `event:`/`data:` fields
            if line.hasPrefix("event:") {
                currentEvent = String(line.dropFirst("event:".count)).trimmingCharacters(in: .whitespaces)
                return nil
            }
            if line.hasPrefix("data:") {
                let dataPart = String(line.dropFirst("data:".count)).trimmingCharacters(in: .whitespaces)
                dataLines.append(dataPart)
                return nil
            }
            if line.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty {
                return finishFrame()
            }
            // Ignore other fields for now (id:, retry:, comments beginning with ':')
            return nil
        }

        /// Flushes any pending frame without requiring an empty line (used on EOF).
        mutating func flushPending() -> CodexBridgeEnvelope? {
            return finishFrame()
        }

        private mutating func finishFrame() -> CodexBridgeEnvelope? {
            guard currentEvent != nil || !dataLines.isEmpty else { return nil }
            let eventName = (currentEvent ?? "").lowercased()
            let payload = dataLines.isEmpty ? nil : dataLines.joined(separator: "\n")
            currentEvent = nil
            dataLines.removeAll(keepingCapacity: false)
            let type: EventType
            switch eventName {
            case "delta": type = .delta
            case "patch": type = .patch
            case "done": type = .done
            case "": type = .unknown("") // no explicit event provided
            default: type = .unknown(eventName)
            }
            return CodexBridgeEnvelope(type: type, raw: payload)
        }
    }
}
