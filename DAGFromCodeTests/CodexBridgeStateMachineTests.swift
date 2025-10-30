//
//  CodexBridgeStateMachineTests.swift
//  DAGFromCodeTests
//
//  Created by Codex on 10/29/25.
//

import Foundation
import Testing
@testable import DAGFromCode

struct CodexBridgeStateMachineTests {
    @Test func startListeningEmitsBeginListening() throws {
        let machine = CodexBridgeStateMachine()
        let initial = CodexBridgeState(
            configuration: CodexBridgeConfiguration(host: "127.0.0.1", port: "17890"),
            status: .idle,
            messageDraft: "hi",
            lastResponse: nil,
            isSending: false,
            isListening: false
        )
        let (next, commands) = machine.reduce(state: initial, action: .startListening)
        #expect(next.isListening == true)
        #expect(commands.contains(where: { if case .beginListening = $0 { return true } else { return false } }))
    }

    @Test func streamFailureSchedulesBackoff() throws {
        let machine = CodexBridgeStateMachine()
        var initial = CodexBridgeState()
        initial.status = .online(message: "Streaming")
        initial.cliHealth = .running
        initial.stream = .listening
        initial.messageDraft = ""
        initial.lastResponse = "partial"
        initial.lastEnvelopeID = "delta-001"
        initial.isSending = false
        initial.isListening = true

        let (next, commands) = machine.reduce(state: initial, action: .streamFailed(reason: .decoding))
        #expect(commands.isEmpty)
        switch next.stream {
        case let .backingOff(backoff):
            #expect(backoff.attempt == 1)
            #expect(backoff.delaySeconds == 1)
        default:
            Issue.record("Expected backing off state after stream failure")
        }

        switch next.status {
        case let .error(description):
            #expect(description == "Unable to decode bridge response.")
        default:
            Issue.record("Expected error status after stream failure")
        }

        #expect(next.alerts.last?.message == "Unable to decode bridge response.")
    }

    @Test func streamFailureFromMalformedEventSchedulesRestart() throws {
        let machine = CodexBridgeStateMachine()
        var initial = CodexBridgeState()
        initial.status = .online(message: "Streaming")
        initial.cliHealth = .running
        initial.stream = .listening
        initial.isListening = true

        let (failedState, _) = machine.reduce(
            state: initial,
            action: .streamFailed(reason: .malformedEvent(description: "bad frame"))
        )

        switch failedState.stream {
        case let .backingOff(backoff):
            #expect(backoff.attempt == 1)
            #expect(backoff.delaySeconds == 1)
        default:
            Issue.record("Expected backing off state after malformed event")
        }

        switch failedState.status {
        case let .error(description):
            #expect(description == "Malformed stream event: bad frame")
        default:
            Issue.record("Expected error status after malformed event")
        }

        #expect(failedState.alerts.last?.message == "Malformed stream event: bad frame")
    }

    @Test func streamBackoffElapsedResumesListening() throws {
        let machine = CodexBridgeStateMachine()
        var initial = CodexBridgeState()
        initial.cliHealth = .running
        initial.stream = .backingOff(StreamBackoff(attempt: 1, delaySeconds: 1))
        initial.isListening = true

        let (next, commands) = machine.reduce(state: initial, action: .streamBackoffElapsed)

        switch next.stream {
        case .listening:
            break
        default:
            Issue.record("Expected stream to resume listening after backoff elapsed")
        }

        #expect(next.status == .connecting)
        let beginListeningIssued = commands.contains { command in
            if case .beginListening = command { return true }
            return false
        }
        #expect(beginListeningIssued)
    }

    @Test func streamClosedWhileListeningKeepsListening() throws {
        let machine = CodexBridgeStateMachine()
        var initial = CodexBridgeState()
        initial.cliHealth = .running
        initial.stream = .listening
        initial.isListening = true

        let (next, commands) = machine.reduce(state: initial, action: .streamClosed)

        switch next.stream {
        case .listening:
            break
        default:
            Issue.record("Expected stream to remain listening after EOF")
        }

        #expect(commands.isEmpty)
    }

    @Test func streamDoneKeepsListeningAndUpdatesResponse() throws {
        let machine = CodexBridgeStateMachine()
        var initial = CodexBridgeState()
        initial.status = .connecting
        initial.cliHealth = .running
        initial.stream = .listening
        initial.messageDraft = ""
        initial.lastResponse = nil
        initial.lastEnvelopeID = nil
        initial.isSending = false
        initial.isListening = true

        let envelope = StreamEnvelope(
            id: "done-999",
            source: .cli,
            timestamp: Date(timeIntervalSince1970: 0),
            kind: .done,
            payloadSummary: "Stream completed",
            text: "Final answer",
            raw: "{\"payload\":{\"text\":\"Final answer\"}}"
        )

        let (next, commands) = machine.reduce(state: initial, action: .streamEnvelopeReceived(envelope))
        #expect(commands.isEmpty)
        #expect(next.lastEnvelopeID == "done-999")
        #expect(next.lastResponse == "Final answer")
        switch next.stream {
        case .listening:
            break
        default:
            Issue.record("Expected stream to remain in listening state after done envelope")
        }

        switch next.status {
        case let .online(message):
            #expect(message == "Stream completed")
        default:
            Issue.record("Expected online status after done envelope")
        }
    }
}
