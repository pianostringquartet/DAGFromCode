//
//  CodexBridgeSSEParserTests.swift
//  DAGFromCodeTests
//
//  Created by Codex on 10/29/25.
//

import Foundation
import Testing
@testable import DAGFromCode

struct CodexBridgeSSEParserTests {
    @Test func parsesDeltaFrameWithMetadata() throws {
        var parser = CodexBridgeHTTPClient.SSEParser()
        let lines = try fixtureLines(named: "delta.sse")
        var envelope: CodexBridgeHTTPClient.CodexBridgeEnvelope?

        for line in lines {
            if let frame = try parser.consume(line: line) {
                envelope = frame
            }
        }

        #expect(envelope != nil)
        #expect(envelope?.kind == .delta)
        #expect(envelope?.type == .delta)
        #expect(envelope?.id == "delta-001")
        #expect(envelope?.messageType == "delta")
        #expect(envelope?.text == "Hel")
        #expect(envelope?.raw?.contains("payload") == true)
        #expect(envelope?.timestamp != nil)
    }

    @Test func aggregatesMultiLineData() throws {
        var parser = CodexBridgeHTTPClient.SSEParser()
        _ = try parser.consume(line: "event: patch")
        _ = try parser.consume(line: "data: {\"id\":\"patch-001\",")
        _ = try parser.consume(line: "data: \"type\":\"patch\",\"payload\":{\"text\":\"Hello\"}}")
        let frame = try parser.consume(line: "")

        #expect(frame?.kind == .patch)
        #expect(frame?.text == "Hello")
        #expect(frame?.raw?.contains("patch-001") == true)
    }

    @Test func parsesErrorFrame() throws {
        var parser = CodexBridgeHTTPClient.SSEParser()
        let lines = try fixtureLines(named: "error.sse")
        var envelope: CodexBridgeHTTPClient.CodexBridgeEnvelope?

        for line in lines {
            if let frame = try parser.consume(line: line) {
                envelope = frame
            }
        }

        #expect(envelope?.kind == .error)
        #expect(envelope?.type == .error)
        #expect(envelope?.messageType == "stderr")
        #expect(envelope?.text == "CLI subprocess terminated")
        #expect(envelope?.payload?.objectValue?["code"]?.stringValue == "EPIPE")
    }

    @Test func handlesDoneEventWithoutData() throws {
        var parser = CodexBridgeHTTPClient.SSEParser()
        _ = try parser.consume(line: "event: done")
        let frame = try parser.consume(line: "")

        #expect(frame?.kind == .done)
        #expect(frame?.raw == nil)
        #expect(frame?.id == nil)
    }

    @Test func unknownEventPassesThrough() throws {
        var parser = CodexBridgeHTTPClient.SSEParser()
        _ = try parser.consume(line: "event: custom")
        _ = try parser.consume(line: "data: {\"note\":\"payload\"}")
        let frame = try parser.consume(line: "")

        switch frame?.kind {
        case .unknown(let name):
            #expect(name == "custom")
        default:
            Issue.record("Expected unknown event kind")
        }
        #expect(frame?.json?.objectValue?["note"]?.stringValue == "payload")
    }

    @Test func flushesOnEOFThenDone() throws {
        var parser = CodexBridgeHTTPClient.SSEParser()
        _ = try parser.consume(line: "event: delta")
        _ = try parser.consume(line: "data: {\"payload\":{\"text\":\"partial\"}}")

        // Simulate EOF without the terminating blank line
        let pending = try parser.flushPending()
        #expect(pending?.kind == .delta)
        #expect(pending?.text == "partial")

        let done = CodexBridgeHTTPClient.CodexBridgeEnvelope(
            kind: .done,
            id: nil,
            messageType: nil,
            timestamp: nil,
            text: nil,
            payload: nil,
            json: nil,
            raw: nil
        )
        #expect(done.type == .done)
    }

    @Test func invalidJSONThrowsProtocolViolation() {
        var parser = CodexBridgeHTTPClient.SSEParser()
        _ = try? parser.consume(line: "event: delta")

        do {
            _ = try parser.consume(line: "data: {not-json}")
            let frame = try parser.consume(line: "")
            Issue.record("Expected protocol violation, received frame: \(String(describing: frame))")
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

    private func fixtureLines(named name: String) throws -> [String] {
        let url = try fixtureURL(named: name)
        let contents = try String(contentsOf: url, encoding: .utf8)
        return contents
            .split(separator: "\n", omittingEmptySubsequences: false)
            .map(String.init)
    }

    private func fixtureURL(named name: String) throws -> URL {
        let currentFile = URL(fileURLWithPath: #filePath)
        let base = currentFile.deletingLastPathComponent()
        let fixtures = base.appendingPathComponent("Fixtures").appendingPathComponent("CLIStream")
        let url = fixtures.appendingPathComponent(name)
        guard FileManager.default.fileExists(atPath: url.path) else {
            throw NSError(domain: "CodexBridgeSSEParserTests", code: 1, userInfo: [NSLocalizedDescriptionKey: "Missing fixture \(name)"])
        }
        return url
    }
}
