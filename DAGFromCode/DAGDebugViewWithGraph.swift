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
        splitLayout
            .onAppear {
                viewModel.parseImmediately()
            }
    }
}

private extension DAGDebugViewWithGraph {
    @ViewBuilder
    var splitLayout: some View {
        GeometryReader { geometry in
            let isCompact = geometry.size.width < 900

            Group {
                if isCompact {
                    VStack(spacing: 0) {
                        sourcePane
                            .frame(maxWidth: .infinity, maxHeight: geometry.size.height * 0.45)

                        Divider()

                        graphPane
                            .frame(maxWidth: .infinity, maxHeight: .infinity)
                    }
                } else {
                    HStack(spacing: 0) {
                        sourcePane
                            .frame(maxWidth: min(geometry.size.width * 0.35, 420), maxHeight: .infinity)

                        Divider()

                        graphPane
                            .frame(maxWidth: .infinity, maxHeight: .infinity)
                    }
                }
            }
        }
    }

    var sourcePane: some View {
        DAGSourceEditorPane(viewModel: viewModel)
            .frame(minWidth: 0, maxWidth: 400)
    }

    @ViewBuilder
    var graphPane: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("Graph Visualization")
                .font(.headline)
                .padding(.horizontal)
                .padding(.top)

            if let projectData = viewModel.parsedProjectData {
                let dag = projectData.graph
                let layers = projectData.views

                VStack(alignment: .leading, spacing: 8) {
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
        .frame(minWidth: 0)
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
        .background(Color.platformSecondaryBackground)
        .cornerRadius(8)
        .overlay(
            RoundedRectangle(cornerRadius: 8)
                .stroke(Color.platformSeparator.opacity(0.3), lineWidth: 1)
        )
    }
}

#Preview {
    DAGDebugViewWithGraph()
        .frame(minWidth: 1000, minHeight: 700)
}
