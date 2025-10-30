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

            errorBanner

            bridgeConfigurationSection

            Divider()

            messageSection

            Spacer()
        }
        .padding()
        .task {
            viewModel.bootstrap()
        }
        .onDisappear {
            viewModel.stopListening()
        }
    }

    private var statusHeader: some View {
        VStack(alignment: .leading, spacing: 8) {
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

            HStack(spacing: 12) {
                processStatusChip

                if let detail = processStatusDetail {
                    Text(detail)
                        .font(.caption)
                        .foregroundColor(.secondary)
                }

                Spacer()

                Toggle("Auto restart", isOn: autoRestartBinding)
                    .toggleStyle(.switch)
            }
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

                VStack(alignment: .leading) {
                    Text("CLI path override")
                        .font(.caption)
                        .foregroundColor(.secondary)
                    TextField("/usr/local/bin/codex", text: cliPathBinding)
                        .textFieldStyle(.roundedBorder)
                        .font(.system(.body, design: .monospaced))
                        .disableAutocorrection(true)
#if os(iOS) || targetEnvironment(macCatalyst)
                        .textInputAutocapitalization(.never)
#endif
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

                Button("Clear") {
                    viewModel.send(.clearResponse)
                }
                .disabled(viewModel.aggregatedTranscript.isEmpty && viewModel.state.lastResponse == nil)

                Spacer()

                Button("Copy transcript") {
                    Clipboard.copy(viewModel.aggregatedTranscript)
                }
                .disabled(viewModel.aggregatedTranscript.isEmpty)
                .buttonStyle(.bordered)
            }

            if let envelopeID = viewModel.latestEnvelopeID {
                HStack {
                    Text("Latest envelope")
                        .font(.caption)
                        .foregroundColor(.secondary)
                    Text(envelopeID)
                        .font(.system(.caption, design: .monospaced))
                        .foregroundColor(.primary)
                    Spacer()
                }
            }

            aggregatedTranscriptView

            promptTimelineSection
        }
    }

    @ViewBuilder
    private var aggregatedTranscriptView: some View {
        if !viewModel.aggregatedTranscript.isEmpty {
            VStack(alignment: .leading, spacing: 8) {
                Text("Aggregated transcript")
                    .font(.caption)
                    .foregroundColor(.secondary)
                ScrollView {
                    Text(viewModel.aggregatedTranscript)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding()
                        .background(Color.platformSecondaryBackground)
                        .cornerRadius(8)
                        .font(.system(.body, design: .monospaced))
                }
                .frame(minHeight: 120, maxHeight: 220)
            }
        } else if let fallback = viewModel.state.lastResponse, !fallback.isEmpty {
            VStack(alignment: .leading, spacing: 8) {
                Text("Latest response")
                    .font(.caption)
                    .foregroundColor(.secondary)
                Text(fallback)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                    .background(Color.platformSecondaryBackground)
                    .cornerRadius(8)
                    .font(.system(.body, design: .monospaced))
            }
        } else {
            Text("No transcript received yet.")
                .font(.footnote)
                .foregroundColor(.secondary)
        }
    }

    @ViewBuilder
    private var promptTimelineSection: some View {
        let timeline = viewModel.promptTimeline

        VStack(alignment: .leading, spacing: 8) {
            Text("Prompt timeline")
                .font(.caption)
                .foregroundColor(.secondary)

            if timeline.isEmpty {
                Text("No prompt activity yet.")
                    .font(.footnote)
                    .foregroundColor(.secondary)
            } else {
                VStack(spacing: 0) {
                    ForEach(Array(timeline.enumerated()), id: \.element.id) { index, entry in
                        VStack(alignment: .leading, spacing: 6) {
                            HStack {
                                Text(entry.id)
                                    .font(.system(.caption, design: .monospaced))
                                    .foregroundColor(.primary)

                                Spacer()

                                Text(stageLabel(for: entry.stage))
                                    .font(.caption2)
                                    .padding(.horizontal, 8)
                                    .padding(.vertical, 2)
                                    .background(stageColor(for: entry.stage).opacity(0.18))
                                    .foregroundColor(stageColor(for: entry.stage))
                                    .clipShape(Capsule())
                            }

                            if let message = entry.lastMessage, !message.isEmpty {
                                Text(message)
                                    .font(.footnote)
                                    .foregroundColor(.secondary)
                                    .fixedSize(horizontal: false, vertical: true)
                            }

                            Text(entry.updatedAt, style: .time)
                                .font(.caption2)
                                .foregroundColor(.secondary)
                        }
                        .padding(.vertical, 8)

                        if index < timeline.count - 1 {
                            Divider()
                        }
                    }
                }
                .padding(12)
                .background(Color.platformSecondaryBackground)
                .cornerRadius(8)
            }
        }
    }

    private func stageLabel(for stage: PromptTimelineEntry.Stage) -> String {
        switch stage {
        case .pending:
            return "Pending"
        case .streaming:
            return "Streaming"
        case .completed:
            return "Completed"
        case .failed:
            return "Failed"
        }
    }

    private func stageColor(for stage: PromptTimelineEntry.Stage) -> Color {
        switch stage {
        case .pending:
            return .gray
        case .streaming:
            return .blue
        case .completed:
            return .green
        case .failed:
            return .red
        }
    }

    private func color(for statusColor: BridgeStatusColor) -> Color {
        switch statusColor {
        case .neutral:
            return .gray
        case .informative:
            return .blue
        case .success:
            return .green
        case .warning:
            return .orange
        case .critical:
            return .red
        }
    }

    private func formatSeconds(_ seconds: TimeInterval) -> String {
        if seconds >= 60 {
            let minutes = Int(seconds) / 60
            let remaining = seconds.truncatingRemainder(dividingBy: 60)
            return String(format: "%dm %.0fs", minutes, remaining)
        } else if seconds >= 1 {
            return String(format: "%.1fs", seconds)
        } else {
            return "<1s"
        }
    }

    private var statusColor: Color {
        color(for: viewModel.state.statusColor)
    }

    private var statusDescription: String {
        viewModel.state.statusText
    }

    private var autoRestartBinding: Binding<Bool> {
        Binding(
            get: { viewModel.autoRestartEnabled },
            set: { viewModel.autoRestartEnabled = $0 }
        )
    }

    private var cliPathBinding: Binding<String> {
        Binding(
            get: { viewModel.cliPathOverride },
            set: { viewModel.cliPathOverride = $0 }
        )
    }

    private var processStatusDetail: String? {
        switch viewModel.state.cliHealth {
        case .running:
            switch viewModel.state.stream {
            case .idle:
                return "Listening disabled"
            case .listening:
                return "Listening for CLI events"
            case let .backingOff(backoff):
                return "Backoff attempt \(backoff.attempt) – retry in \(formatSeconds(backoff.delaySeconds))"
            case let .awaitingCLI(retryIn):
                if let retryIn {
                    return "Awaiting CLI – retry in \(formatSeconds(retryIn))"
                }
                return "Awaiting CLI"
            case .stopped:
                return "Streaming stopped"
            }
        case let .degraded(exitCode):
            return "CLI exited with code \(exitCode)"
        case let .restartScheduled(retryIn):
            return "Restart scheduled in \(formatSeconds(retryIn))"
        }
    }

    private var processStatusMetrics: (label: String, color: Color) {
        switch viewModel.state.cliHealth {
        case .running:
            return ("CLI running", .green)
        case let .degraded(exitCode):
            return ("CLI offline (exit \(exitCode))", .red)
        case let .restartScheduled(retryIn):
            let seconds = max(1, Int(retryIn.rounded()))
            return ("Restarting in \(seconds)s", .orange)
        }
    }

    private var processStatusChip: some View {
        let metrics = processStatusMetrics
        return Text(metrics.label)
            .font(.caption)
            .fontWeight(.semibold)
            .padding(.horizontal, 10)
            .padding(.vertical, 4)
            .background(metrics.color.opacity(0.15))
            .foregroundColor(metrics.color)
            .clipShape(Capsule())
    }

    @ViewBuilder
    private var errorBanner: some View {
        if case .degraded = viewModel.state.cliHealth,
           let message = viewModel.lastProcessError,
           !message.isEmpty {
            HStack(alignment: .center, spacing: 12) {
                Image(systemName: "exclamationmark.triangle.fill")
                    .foregroundColor(.yellow)

                Text(message)
                    .font(.callout)
                    .foregroundColor(.primary)

                Spacer()

                if viewModel.state.availableActions.contains(.retryConnection) {
                    Button("Retry now") {
                        viewModel.startListening()
                    }
                    .buttonStyle(.borderedProminent)
                }
            }
            .padding(12)
            .background(Color.red.opacity(0.12))
            .cornerRadius(10)
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

struct BlueRectangleView: View {
    var body: some View {
        Rectangle()
            .fill(Color.blue)
            .frame(width: 200, height: 120)
    }
}

#Preview("Blue rectangle") {
    BlueRectangleView()
        .padding()
}
