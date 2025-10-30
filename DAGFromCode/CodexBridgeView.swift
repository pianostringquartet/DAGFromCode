//
//  CodexBridgeView.swift
//  DAGFromCode
//
//  Created by Codex on 10/29/25.
//

import SwiftUI
#if canImport(UIKit)
import UIKit
#endif
#if canImport(AppKit)
import AppKit
#endif

struct CodexBridgeView: View {
    @StateObject private var viewModel = CodexBridgeViewModel()

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Codex CLI Bridge")
                .font(.largeTitle)
                .fontWeight(.semibold)

            statusHeader

            bridgeConfigurationSection

            Divider()

            messageSection

            Spacer()
        }
        .padding()
        .task {
            viewModel.startListening()
        }
        .onDisappear {
            viewModel.stopListening()
        }
    }

    private var statusHeader: some View {
        HStack(spacing: 12) {
            Circle()
                .fill(statusColor)
                .frame(width: 12, height: 12)

            Text(statusDescription)
                .font(.headline)

            if viewModel.state.isSending {
                ProgressView()
                    .scaleEffect(0.7)
            }

            Spacer()

            Button("Check Bridge") {
                viewModel.send(.requestHealthCheck)
            }
            .keyboardShortcut("r", modifiers: [.command])

            Button("Fetch latest") {
                viewModel.fetchLatestOnce()
            }
            .keyboardShortcut("l", modifiers: [.command])
        }
    }

    private var bridgeConfigurationSection: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text("Connection settings")
                .font(.title3)
                .fontWeight(.medium)

            HStack(spacing: 12) {
                VStack(alignment: .leading) {
                    Text("Host")
                        .font(.caption)
                        .foregroundColor(.secondary)
                   TextField("127.0.0.1", text: hostBinding)
                       .textFieldStyle(.roundedBorder)
                       .font(.system(.body, design: .monospaced))
                       .disableAutocorrection(true)
#if os(iOS) || targetEnvironment(macCatalyst)
                        .textInputAutocapitalization(.never)
#endif
                }

                VStack(alignment: .leading) {
                    Text("Port")
                        .font(.caption)
                        .foregroundColor(.secondary)
                   TextField("17890", text: portBinding)
                       .textFieldStyle(.roundedBorder)
                       .font(.system(.body, design: .monospaced))
#if os(iOS) || targetEnvironment(macCatalyst)
                        .keyboardType(.numberPad)
#endif
                }

                VStack(alignment: .leading) {
                    Text("Bearer token (optional)")
                        .font(.caption)
                        .foregroundColor(.secondary)
                    SecureField("token", text: tokenBinding)
                        .textFieldStyle(.roundedBorder)
                        .font(.system(.body, design: .monospaced))
                }
            }
        }
    }

    private var messageSection: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text("Messaging")
                .font(.title3)
                .fontWeight(.medium)

            TextField("Message", text: messageBinding, axis: .vertical)
                .textFieldStyle(.roundedBorder)
                .lineLimit(3, reservesSpace: true)

            HStack(spacing: 12) {
                Button("Send to Codex CLI") {
                    viewModel.send(.sendMessage)
                }
                .buttonStyle(.borderedProminent)
                .disabled(viewModel.state.isSending)

                if let response = viewModel.state.lastResponse {
                    Button("Clear") {
                        viewModel.send(.clearResponse)
                    }

                    Button("Copy latest") {
                        Clipboard.copy(response)
                    }
                }

                Spacer()
            }

            if let response = viewModel.state.lastResponse {
                responseView(response: response)
            }
        }
    }

    private func responseView(response: String) -> some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("Latest response")
                .font(.caption)
                .foregroundColor(.secondary)
            Text(response)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
                .background(Color.platformSecondaryBackground)
                .cornerRadius(8)
                .font(.system(.body, design: .monospaced))
        }
    }

    private var statusColor: Color {
        switch viewModel.state.status {
        case .idle:
            return .yellow
        case .connecting:
            return .orange
        case .online:
            return .green
        case .error:
            return .red
        }
    }

    private var statusDescription: String {
        switch viewModel.state.status {
        case .idle:
            return "Awaiting bridge command"
        case .connecting:
            return "Contacting bridge..."
        case let .online(message):
            return message
        case let .error(description):
            return description
        }
    }

    private var hostBinding: Binding<String> {
        Binding(
            get: { viewModel.state.configuration.host },
            set: {
                viewModel.send(.hostChanged($0))
                viewModel.startListening()
            }
        )
    }

    private var portBinding: Binding<String> {
        Binding(
            get: { viewModel.state.configuration.port },
            set: {
                viewModel.send(.portChanged($0))
                viewModel.startListening()
            }
        )
    }

    private var tokenBinding: Binding<String> {
        Binding(
            get: { viewModel.state.configuration.token ?? "" },
            set: {
                viewModel.send(.tokenChanged($0))
                viewModel.startListening()
            }
        )
    }

    private var messageBinding: Binding<String> {
        Binding(
            get: { viewModel.state.messageDraft },
            set: { viewModel.send(.messageDraftChanged($0)) }
        )
    }
}

#Preview {
    CodexBridgeView()
        .frame(width: 600, height: 500)
}

private enum Clipboard {
    static func copy(_ string: String) {
        #if canImport(UIKit)
        UIPasteboard.general.string = string
        #elseif canImport(AppKit)
        let pb = NSPasteboard.general
        pb.clearContents()
        pb.setString(string, forType: .string)
        #else
        // No-op fallback
        #endif
    }
}
