//
//  DAGDebugViewWithGraph.swift
//  DAGFromCode
//
//  Created by Christian J Clampitt on 9/25/25.
//

#if os(macOS) && !targetEnvironment(macCatalyst)

import SwiftUI

struct DAGDebugViewWithGraph: View {
    @StateObject private var viewModel = DAGSourceEditorViewModel()

    var body: some View {
        HSplitView {
            // Left pane: Code editor
            DAGSourceEditorPane(viewModel: viewModel)
                .frame(minWidth: 300, maxWidth: 400)

            // Right pane: Graph visualization
            VStack(alignment: .leading, spacing: 8) {
                Text("Graph Visualization")
                    .font(.headline)
                    .padding(.horizontal)
                    .padding(.top)

                if let projectData = viewModel.parsedProjectData {
                    let dag = projectData.graph
                    let layers = projectData.views

                    VStack(alignment: .leading, spacing: 8) {
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

                        HStack(alignment: .top, spacing: 16) {
                            DAGGraphView(dag: dag, layers: layers)
                                .frame(maxWidth: .infinity, maxHeight: .infinity)

                            SwiftUILayerSidebar(layers: layers)
                                .frame(maxWidth: 300)
                                .padding(.trailing)
                        }
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                } else if let error = viewModel.parseError {
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
            viewModel.parseImmediately()
        }
    }
}

private struct SwiftUILayerSidebar: View {
    let layers: [PrototypeLayer]

    var body: some View {
        ScrollView {
            SwiftUILayerListView(layers: layers)
                .padding(.vertical, 12)
                .padding(.horizontal, 16)
        }
        .frame(maxWidth: .infinity, alignment: .topLeading)
        .background(Color(NSColor.textBackgroundColor))
        .cornerRadius(8)
        .overlay(
            RoundedRectangle(cornerRadius: 8)
                .stroke(Color.secondary.opacity(0.2), lineWidth: 1)
        )
    }
}

#Preview {
    DAGDebugViewWithGraph()
        .frame(minWidth: 1000, minHeight: 700)
}

#else

import SwiftUI

struct DAGDebugViewWithGraph: View {
    var body: some View {
        Text("Graph debugger is available on Mac (non-Catalyst) builds.")
            .font(.headline)
            .foregroundColor(.secondary)
            .multilineTextAlignment(.center)
            .padding()
    }
}

#endif
