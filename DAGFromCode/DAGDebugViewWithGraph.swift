//
//  DAGDebugViewWithGraph.swift
//  DAGFromCode
//
//  Created by Christian J Clampitt on 9/25/25.
//

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

#Preview {
    DAGDebugViewWithGraph()
        .frame(minWidth: 1000, minHeight: 700)
}
