//
//  CodexBridgeHTTPClient.swift
//  DAGFromCode
//
//  Created by Codex on 10/29/25.
//

import Foundation

struct CodexBridgeHTTPClient {
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
        var request = URLRequest(url: configuration.baseURL.appendingPathComponent("message"))
        request.httpMethod = "POST"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        addAuthorizationIfNeeded(token: configuration.token, to: &request)

        do {
            request.httpBody = try JSONEncoder().encode(MessagePayload(message: body))
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

            return .success(extractMessage(from: data, fallback: "Message sent"))
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
            if let message = jsonObject["message"] as? String {
                return message
            }
            if let echo = jsonObject["echo"] as? String {
                return echo
            }
            if let status = jsonObject["status"] as? String {
                return status
            }
        }

        if let text = String(data: data, encoding: .utf8), !text.isEmpty {
            return text
        }

        return fallback
    }
}

private struct MessagePayload: Encodable {
    let message: String
}
