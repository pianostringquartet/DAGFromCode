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
}

