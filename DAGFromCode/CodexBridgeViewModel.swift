//
//  CodexBridgeViewModel.swift
//  DAGFromCode
//
//  Created by Codex on 10/29/25.
//

import Foundation

@MainActor
final class CodexBridgeViewModel: ObservableObject {
    @Published private(set) var state: CodexBridgeState

    private let stateMachine: CodexBridgeStateMachine
    private let client: CodexBridgeHTTPClient
    private var listenerTask: Task<Void, Never>?
    private let pollingIntervalNanoseconds: UInt64 = 1_000_000_000

    init(
        initialState: CodexBridgeState = CodexBridgeState(),
        stateMachine: CodexBridgeStateMachine = CodexBridgeStateMachine(),
        client: CodexBridgeHTTPClient = CodexBridgeHTTPClient()
    ) {
        self.state = initialState
        self.stateMachine = stateMachine
        self.client = client
    }

    deinit {
        listenerTask?.cancel()
    }

    func send(_ action: CodexBridgeAction) {
        let (nextState, commands) = stateMachine.reduce(state: state, action: action)
        state = nextState
        guard !commands.isEmpty else { return }
        handle(commands: commands)
    }

    private func handle(commands: [CodexBridgeCommand]) {
        for command in commands {
            switch command {
            case let .performHealthCheck(configuration):
                Task { [weak self] in
                    guard let self else { return }
                    let result = await self.client.healthCheck(configuration: configuration)
                    await MainActor.run {
                        switch result {
                        case let .success(message):
                            self.send(.healthCheckSucceeded(message: message))
                        case let .failure(error):
                            self.send(.healthCheckFailed(description: self.describe(clientError: error)))
                        }
                    }
                }

            case let .sendMessage(configuration, body):
                Task { [weak self] in
                    guard let self else { return }
                    let result = await self.client.sendMessage(configuration: configuration, body: body)
                    await MainActor.run {
                        switch result {
                        case let .success(response):
                            self.send(.messageSendSucceeded(response: response))
                        case let .failure(error):
                            self.send(.messageSendFailed(description: self.describe(clientError: error)))
                        }
                    }
                }

            case let .beginListening(configuration):
                listenerTask?.cancel()
                listenerTask = Task { [weak self] in
                    guard let self else { return }
                    while !Task.isCancelled {
                        let result = await self.client.latestMessage(configuration: configuration)
                        await MainActor.run {
                            switch result {
                            case let .success(message):
                                self.send(.latestMessagePolled(message))
                            case let .failure(error):
                                self.send(.latestMessagePollFailed(description: self.describe(clientError: error)))
                            }
                        }

                        do {
                            try await Task.sleep(nanoseconds: pollingIntervalNanoseconds)
                        } catch {
                            break
                        }
                    }
                }

            case .endListening:
                listenerTask?.cancel()
                listenerTask = nil
            }
        }
    }

    func startListening() {
        send(.startListening)
    }

    func stopListening() {
        send(.stopListening)
    }

    private func describe(clientError: CodexBridgeHTTPClient.ClientError) -> String {
        switch clientError {
        case .invalidResponse:
            return "Bridge returned an invalid response."
        case let .httpStatus(status):
            return "Bridge responded with status code \(status)."
        case .decodingFailed:
            return "Unable to decode bridge response."
        case let .underlying(description):
            return description
        }
    }
}
