//
//  DAGDebugViewWithGraph.swift
//  DAGFromCode
//
//  Created by Christian J Clampitt on 9/25/25.
//

import SwiftUI

struct DAGDebugViewWithGraph: View {
    @State private var sourceCode: String = """
    let x = 8
    let y = 8
    x + y
    """

    @State private var parsedProjectData: ProjectData?
    @State private var parseError: String?
    @State private var isDebouncing = false

    private let debounceDelay = 0.5 // seconds

    var body: some View {
        HSplitView {
            // Left pane: Code editor
            VStack(alignment: .leading, spacing: 8) {
                HStack {
                    Text("Swift Code")
                        .font(.headline)

                    Spacer()

                    Menu("Examples") {
                        Menu("Basic") {
                            Button("Simple Addition") {
                                sourceCode = """
                                let x = 8
                                let y = 8
                                x + y
                                """
                            }

                            Button("Nested Functions") {
                                sourceCode = """
                                sin(sqrt(4))
                                """
                            }

                            Button("Complex Expression") {
                                sourceCode = """
                                let a = 4
                                let b = 9
                                sin(a + b)
                                """
                            }

                            Button("Multiple Operations") {
                                sourceCode = """
                                var x = 10
                                let y = 5
                                cos(x - y)
                                """
                            }
                        }

                        Divider()

                        Menu("Ternary Expressions") {
                            Button("Simple Ternary") {
                                sourceCode = """
                                true ? 5 : 10
                                """
                            }

                            Button("Comparison Ternary") {
                                sourceCode = """
                                5 > 4 ? 100 : 0
                                """
                            }

                            Button("Variable Ternary") {
                                sourceCode = """
                                let x = 8
                                let y = 12
                                x > y ? x : y
                                """
                            }

                            Button("Nested Ternary") {
                                sourceCode = """
                                true ? (false ? 1 : 2) : 3
                                """
                            }
                        }

                        Divider()

                        Menu("If-Else Expressions") {
                            Button("Simple If-Else") {
                                sourceCode = """
                                if true { 5 } else { 10 }
                                """
                            }

                            Button("Comparison If-Else") {
                                sourceCode = """
                                if 5 > 4 { 100 } else { 0 }
                                """
                            }

                            Button("Variable If-Else") {
                                sourceCode = """
                                let x = 8
                                let y = 12
                                if x > y { x } else { y }
                                """
                            }

                            Button("Nested If-Else") {
                                sourceCode = """
                                if true {
                                    if false { 1 } else { 2 }
                                } else {
                                    3
                                }
                                """
                            }
                        }

                        Divider()

                        Menu("Method Chaining") {
                            Button("Rounded") {
                                sourceCode = """
                                let x = 3.7
                                x.rounded()
                                """
                            }

                            Button("Magnitude") {
                                sourceCode = """
                                let x = -5.0
                                x.magnitude
                                """
                            }

                            Button("Chained Methods") {
                                sourceCode = """
                                let x = -3.7
                                x.magnitude.rounded()
                                """
                            }
                        }
                    }
                    .menuStyle(.borderedButton)
                }
                .padding(.horizontal)
                .padding(.top)

                TextEditor(text: $sourceCode)
                    .font(.system(.body, design: .monospaced))
                    .padding(.horizontal)
                    .overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color.secondary.opacity(0.3), lineWidth: 1)
                            .padding(.horizontal)
                    )
                    .onChange(of: sourceCode) { _, newValue in
                        debounceParseCode(newValue)
                    }

                // Status indicator
                HStack {
                    if isDebouncing {
                        ProgressView()
                            .scaleEffect(0.8)
                        Text("Parsing...")
                            .foregroundColor(.secondary)
                            .font(.caption)
                    } else if let error = parseError {
                        Image(systemName: "exclamationmark.triangle")
                            .foregroundColor(.red)
                        Text("Parse Error")
                            .foregroundColor(.red)
                            .font(.caption)
                    } else if parsedProjectData != nil {
                        Image(systemName: "checkmark.circle")
                            .foregroundColor(.green)
                        Text("Parsed Successfully")
                            .foregroundColor(.green)
                            .font(.caption)
                    }
                }
                .padding(.horizontal)
                .padding(.bottom)
            }
            .frame(minWidth: 300, maxWidth: 400)

            // Right pane: Graph visualization
            VStack(alignment: .leading, spacing: 8) {
                Text("Graph Visualization")
                    .font(.headline)
                    .padding(.horizontal)
                    .padding(.top)

                if let projectData = parsedProjectData {
                    let dag = projectData.graph
                    VStack(alignment: .leading, spacing: 4) {
                        // DAG info header
                        HStack {
                            Text("Nodes: \(dag.nodes.count)")
                                .font(.caption)
                                .foregroundColor(.secondary)
                            Spacer()
                            if let rootNode = dag.getRootNode() {
                                Text("Root: \(rootNode.displayName)")
                                    .font(.caption)
                                    .foregroundColor(.secondary)
                            }
                        }
                        .padding(.horizontal)
                        .padding(.bottom, 8)

                        DAGGraphView(dag: dag)
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                } else if let error = parseError {
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Parse Error:")
                            .font(.headline)
                            .foregroundColor(.red)

                        Text(error)
                            .font(.system(.body, design: .monospaced))
                            .foregroundColor(.secondary)
                            .padding()
                            .background(Color.red.opacity(0.1))
                            .cornerRadius(8)
                    }
                    .padding()
                } else {
                    Text("Enter Swift code to see graph visualization")
                        .foregroundColor(.secondary)
                        .italic()
                        .padding()
                }
            }
            .frame(minWidth: 600)
        }
        .onAppear {
            parseCode(sourceCode)
        }
    }

    private func debounceParseCode(_ code: String) {
        isDebouncing = true

        // Cancel previous work item if it exists
        DispatchQueue.main.asyncAfter(deadline: .now() + debounceDelay) {
            parseCode(code)
            isDebouncing = false
        }
    }

    private func parseCode(_ code: String) {
        do {
            if let projectData = ProjectDataParser.parse(code) {
                parsedProjectData = projectData
                parseError = nil
            } else {
                parsedProjectData = nil
                parseError = "Failed to parse code into DAG"
            }
        } catch {
            parsedProjectData = nil
            parseError = error.localizedDescription
        }
    }
}

#Preview {
    DAGDebugViewWithGraph()
        .frame(minWidth: 1000, minHeight: 700)
}