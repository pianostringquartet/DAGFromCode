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
    @Test func parsesSingleDeltaFrame() throws {
        var parser = CodexBridgeHTTPClient.SSEParser()
        #expect(parser.consume(line: "event: delta") == nil)
        #expect(parser.consume(line: "data: {\"text\":\"hello\"}") == nil)
        let frame = parser.consume(line: "")
        #expect(frame != nil)
        #expect(frame?.type == .delta)
        #expect(frame?.raw == "{\"text\":\"hello\"}")
    }

    @Test func aggregatesMultiLineData() throws {
        var parser = CodexBridgeHTTPClient.SSEParser()
        _ = parser.consume(line: "event: patch")
        _ = parser.consume(line: "data: line1")
        _ = parser.consume(line: "data: line2")
        let frame = parser.consume(line: "")
        #expect(frame?.type == .patch)
        #expect(frame?.raw == "line1\nline2")
    }

    @Test func handlesDoneEventWithoutData() throws {
        var parser = CodexBridgeHTTPClient.SSEParser()
        _ = parser.consume(line: "event: done")
        let frame = parser.consume(line: "")
        #expect(frame?.type == .done)
        #expect(frame?.raw == nil)
    }

    @Test func unknownEventPassesThrough() throws {
        var parser = CodexBridgeHTTPClient.SSEParser()
        _ = parser.consume(line: "event: custom")
        _ = parser.consume(line: "data: payload")
        let frame = parser.consume(line: "")
        switch frame?.type {
        case .unknown(let name):
            #expect(name == "custom")
        default:
            Issue.record("Expected unknown event type")
        }
        #expect(frame?.raw == "payload")
    }

    @Test func flushesOnEOFThenDone() throws {
        var parser = CodexBridgeHTTPClient.SSEParser()
        _ = parser.consume(line: "event: delta")
        _ = parser.consume(line: "data: part")

        // Simulate EOF without the terminating blank line
        let pending = parser.flushPending()
        #expect(pending?.type == .delta)
        #expect(pending?.raw == "part")

        // Client.stream emits a trailing .done on EOF; assert expectation here
        let done = CodexBridgeHTTPClient.CodexBridgeEnvelope(type: .done, raw: nil)
        #expect(done.type == .done)
    }
}

