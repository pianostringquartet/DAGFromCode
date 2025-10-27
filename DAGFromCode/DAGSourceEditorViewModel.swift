//
//  DAGSourceEditorViewModel.swift
//  DAGFromCode
//
//  Created by Christian J Clampitt on 10/24/25.
//

import Foundation
import SwiftUI

final class DAGSourceEditorViewModel: ObservableObject {
    @Published var sourceCode: String {
        didSet {
            if oldValue != sourceCode {
                scheduleParse(for: sourceCode)
            }
        }
    }

    @Published private(set) var parsedProjectData: ProjectData?
    @Published private(set) var parseError: String?
    @Published private(set) var isDebouncing: Bool

    private let debounceDelay: TimeInterval
    private var pendingParseWorkItem: DispatchWorkItem?

    init(
        initialSource: String = """
        let x = 8
        let y = 8
        x + y
        """,
        debounceDelay: TimeInterval = 0.5
    ) {
        self.sourceCode = initialSource
        self.debounceDelay = debounceDelay
        self.parsedProjectData = nil
        self.parseError = nil
        self.isDebouncing = false

        parseImmediately()
    }

    deinit {
        pendingParseWorkItem?.cancel()
    }

    func parseImmediately() {
        pendingParseWorkItem?.cancel()
        pendingParseWorkItem = nil
        isDebouncing = true
        executeParse(code: sourceCode)
    }

    func loadExample(_ code: String) {
        sourceCode = code
    }

    private func scheduleParse(for code: String) {
        pendingParseWorkItem?.cancel()

        if code.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty {
            parsedProjectData = nil
            parseError = nil
            isDebouncing = false
            pendingParseWorkItem = nil
            return
        }

        isDebouncing = true

        let workItem = DispatchWorkItem { [weak self] in
            self?.executeParse(code: code)
        }

        pendingParseWorkItem = workItem
        DispatchQueue.main.asyncAfter(deadline: .now() + debounceDelay, execute: workItem)
    }

    private func executeParse(code: String) {
        let projectData = ProjectDataParser.parse(code)

        if let projectData {
            parsedProjectData = projectData
            parseError = nil
        } else {
            parsedProjectData = nil
            parseError = "Failed to parse code into DAG"
        }

        isDebouncing = false
        pendingParseWorkItem = nil
    }
}

struct DAGSourceEditorPane: View {
    @ObservedObject var viewModel: DAGSourceEditorViewModel

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack {
                Text("Swift Code")
                    .font(.headline)

                Spacer()

                examplesMenu
            }
            .padding(.horizontal)
            .padding(.top)

            TextEditor(text: $viewModel.sourceCode)
                .font(.system(.body, design: .monospaced))
                .padding(.horizontal)
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.secondary.opacity(0.3), lineWidth: 1)
                        .padding(.horizontal)
                )

            statusRow
                .padding(.horizontal)
                .padding(.bottom)
        }
    }

    private var statusRow: some View {
        HStack {
            if viewModel.isDebouncing {
                ProgressView()
                    .scaleEffect(0.8)
                Text("Parsing...")
                    .foregroundColor(.secondary)
                    .font(.caption)
            } else if let error = viewModel.parseError {
                Image(systemName: "exclamationmark.triangle")
                    .foregroundColor(.red)
                Text(error)
                    .foregroundColor(.red)
                    .font(.caption)
            } else if viewModel.parsedProjectData != nil {
                Image(systemName: "checkmark.circle")
                    .foregroundColor(.green)
                Text("Parsed Successfully")
                    .foregroundColor(.green)
                    .font(.caption)
            }
        }
    }

    @ViewBuilder
    private var examplesMenu: some View {
        Menu("Examples") {
            Menu("Basic") {
                Button("SwiftUI Rectangle Opacity") {
                    viewModel.loadExample("""
                    let x = 0.25
                    let y = 0.25
                    let z = x + y
                    Rectangle().opacity(z)
                    """)
                }

                Button("Simple Addition") {
                    viewModel.loadExample("""
                    let x = 8
                    let y = 8
                    x + y
                    """)
                }

                Button("Nested Functions") {
                    viewModel.loadExample("""
                    sin(sqrt(4))
                    """)
                }

                Button("Complex Expression") {
                    viewModel.loadExample("""
                    let a = 4
                    let b = 9
                    sin(a + b)
                    """)
                }

                Button("Multiple Operations") {
                    viewModel.loadExample("""
                    var x = 10
                    let y = 5
                    cos(x - y)
                    """)
                }
            }

            Divider()

            Menu("Ternary Expressions") {
                Button("Simple Ternary") {
                    viewModel.loadExample("""
                    true ? 5 : 10
                    """)
                }

                Button("Comparison Ternary") {
                    viewModel.loadExample("""
                    5 > 4 ? 100 : 0
                    """)
                }

                Button("Variable Ternary") {
                    viewModel.loadExample("""
                    let x = 8
                    let y = 12
                    x > y ? x : y
                    """)
                }

                Button("Nested Ternary") {
                    viewModel.loadExample("""
                    true ? (false ? 1 : 2) : 3
                    """)
                }
            }

            Divider()

            Menu("If-Else Expressions") {
                Button("Simple If-Else") {
                    viewModel.loadExample("""
                    if true { 5 } else { 10 }
                    """)
                }

                Button("Comparison If-Else") {
                    viewModel.loadExample("""
                    if 5 > 4 { 100 } else { 0 }
                    """)
                }

                Button("Variable If-Else") {
                    viewModel.loadExample("""
                    let x = 8
                    let y = 12
                    if x > y { x } else { y }
                    """)
                }

                Button("Nested If-Else") {
                    viewModel.loadExample("""
                    if true {
                        if false { 1 } else { 2 }
                    } else {
                        3
                    }
                    """)
                }
            }

            Divider()

            Menu("Method Chaining") {
                Button("Rounded") {
                    viewModel.loadExample("""
                    let x = 3.7
                    x.rounded()
                    """)
                }

                Button("Magnitude") {
                    viewModel.loadExample("""
                    let x = -5.0
                    x.magnitude
                    """)
                }

                Button("Chained Methods") {
                    viewModel.loadExample("""
                    let x = -3.7
                    x.magnitude.rounded()
                    """)
                }
            }
        }
#if os(macOS)
        .menuStyle(.borderedButton)
#endif
    }
}
