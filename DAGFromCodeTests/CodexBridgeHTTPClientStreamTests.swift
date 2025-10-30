//
//  CodexBridgeHTTPClientStreamTests.swift
//  DAGFromCodeTests
//
//  Created by Codex on 10/30/25.
//

import Foundation
import Testing
@testable import DAGFromCode

struct CodexBridgeHTTPClientStreamTests {
    @Test func streamYieldsStructuredEnvelopes() async throws {
        let fixture = try fixtureData(named: "stream-sequence.sse")
        StreamURLProtocol.requestHandler = { request in
            guard request.url?.path == "/stream" else {
                throw NSError(domain: "CodexBridgeHTTPClientStreamTests", code: 2, userInfo: [NSLocalizedDescriptionKey: "Unexpected path \(request.url?.path ?? "nil")"])
            }

            let responseURL = URL(string: "http://stream.test/stream")!
            let response = HTTPURLResponse(
                url: responseURL,
                statusCode: 200,
                httpVersion: nil,
                headerFields: ["Content-Type": "text/event-stream"]
            )!

            return (response, [fixture])
        }
        defer { StreamURLProtocol.reset() }

        let session = URLSession(configuration: streamingConfiguration())
        let client = CodexBridgeHTTPClient(session: session)
        let resolved = ResolvedConfiguration(baseURL: URL(string: "http://stream.test")!, token: nil)

        var capturedKinds: [CodexBridgeHTTPClient.CodexBridgeEnvelope.EventKind] = []
        var capturedIDs: [String?] = []
        var logFrames: [CodexBridgeHTTPClient.CodexBridgeEnvelope] = []
        var errorFrames: [CodexBridgeHTTPClient.CodexBridgeEnvelope] = []

        let handlers = CodexBridgeHTTPClient.StreamHandlers(
            onError: { errorFrames.append($0) },
            onLog: { logFrames.append($0) }
        )

        var iterator = client.stream(configuration: resolved, handlers: handlers).makeAsyncIterator()

        do {
            while let envelope = try await iterator.next() {
                capturedKinds.append(envelope.kind)
                capturedIDs.append(envelope.id)
                if envelope.kind == .done { break }
            }
        } catch {
            Issue.record("Unexpected stream failure: \(error)")
        }

        #expect(capturedKinds == [.delta, .delta, .patch, .log, .error, .done])
        #expect(capturedIDs.first == "delta-001")
        #expect(capturedIDs[2] == "patch-001")
        #expect(logFrames.count == 1)
        #expect(logFrames.first?.kind == .log)
        #expect(logFrames.first?.text == "codex ready")
        #expect(errorFrames.count == 1)
        #expect(errorFrames.first?.kind == .error)
        #expect(errorFrames.first?.payload?.objectValue?["code"]?.stringValue == "EPIPE")
        #expect(capturedKinds.last == .done)
    }

    @Test func streamFailsOnProtocolViolation() async throws {
        let payload = "event: delta\nid: broken\ndata: {not-json}\n\n".data(using: .utf8)!
        StreamURLProtocol.requestHandler = { request in
            let response = HTTPURLResponse(
                url: URL(string: "http://stream.test/stream")!,
                statusCode: 200,
                httpVersion: nil,
                headerFields: nil
            )!
            return (response, [payload])
        }
        defer { StreamURLProtocol.reset() }

        let session = URLSession(configuration: streamingConfiguration())
        let client = CodexBridgeHTTPClient(session: session)
        let resolved = ResolvedConfiguration(baseURL: URL(string: "http://stream.test")!, token: nil)

        var iterator = client.stream(configuration: resolved).makeAsyncIterator()

        do {
            _ = try await iterator.next()
            Issue.record("Expected protocol violation error")
        } catch let error as CodexBridgeHTTPClient.ClientError {
            switch error {
            case let .protocolViolation(details):
                #expect(details.contains("Malformed JSON payload"))
            default:
                Issue.record("Unexpected client error: \(error)")
            }
        } catch {
            Issue.record("Unexpected error type: \(error)")
        }
    }

    private func streamingConfiguration() -> URLSessionConfiguration {
        let configuration = URLSessionConfiguration.ephemeral
        configuration.protocolClasses = [StreamURLProtocol.self]
        return configuration
    }

    private func fixtureData(named name: String) throws -> Data {
        let url = try fixtureURL(named: name)
        return try Data(contentsOf: url)
    }

    private func fixtureURL(named name: String) throws -> URL {
        let currentFile = URL(fileURLWithPath: #filePath)
        let base = currentFile.deletingLastPathComponent()
        let fixtures = base.appendingPathComponent("Fixtures").appendingPathComponent("CLIStream")
        let url = fixtures.appendingPathComponent(name)
        guard FileManager.default.fileExists(atPath: url.path) else {
            throw NSError(domain: "CodexBridgeHTTPClientStreamTests", code: 1, userInfo: [NSLocalizedDescriptionKey: "Missing fixture \(name)"])
        }
        return url
    }
}

// MARK: - URLProtocol stub

private final class StreamURLProtocol: URLProtocol {
    typealias ResponseHandler = (URLRequest) throws -> (HTTPURLResponse, [Data])

    static var requestHandler: ResponseHandler?

    override class func canInit(with request: URLRequest) -> Bool {
        // Intercept only bridge requests.
        return request.url?.host == "stream.test"
    }

    override class func canonicalRequest(for request: URLRequest) -> URLRequest {
        return request
    }

    override func startLoading() {
        guard let handler = StreamURLProtocol.requestHandler else {
            client?.urlProtocol(self, didFailWithError: NSError(domain: "StreamURLProtocol", code: 0))
            return
        }

        do {
            let (response, payloads) = try handler(request)
            client?.urlProtocol(self, didReceive: response, cacheStoragePolicy: .notAllowed)
            for chunk in payloads {
                client?.urlProtocol(self, didLoad: chunk)
            }
            client?.urlProtocolDidFinishLoading(self)
        } catch {
            client?.urlProtocol(self, didFailWithError: error)
        }
    }

    override func stopLoading() {
        // No-op
    }

    static func reset() {
        requestHandler = nil
    }
}
