//
//  DAGDebugView.swift
//  DAGFromCode
//
//  Created by Christian J Clampitt on 9/24/25.
//

import SwiftUI

struct DAGDebugView: View {
    @State private var sourceCode: String = """
    let x = 8
    let y = 8
    x + y
    """

    @State private var parsedDAG: DAG?
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
                    } else if parsedDAG != nil {
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
            .frame(minWidth: 300)

            // Right pane: DAG visualization
            VStack(alignment: .leading, spacing: 8) {
                Text("DAG Structure")
                    .font(.headline)
                    .padding(.horizontal)
                    .padding(.top)

                ScrollView {
                    if let dag = parsedDAG {
                        VStack(alignment: .leading, spacing: 4) {
                            // DAG info header
                            HStack {
                                Text("Nodes: \(dag.nodes.count)")
                                    .font(.caption)
                                    .foregroundColor(.secondary)
                                Spacer()
                                if let rootNode = dag.getRootNode() {
                                    Text("Root: \(getNodeDisplayName(rootNode))")
                                        .font(.caption)
                                        .foregroundColor(.secondary)
                                }
                            }
                            .padding(.bottom, 8)

                            generateColoredTreeVisualization(dag)
                        }
                        .textSelection(.enabled)
                        .padding()
                        .frame(maxWidth: .infinity, alignment: .leading)
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
                        Text("Enter Swift code to see DAG structure")
                            .foregroundColor(.secondary)
                            .italic()
                            .padding()
                    }
                }
                .background(Color(NSColor.textBackgroundColor))
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.secondary.opacity(0.3), lineWidth: 1)
                )
                .padding(.horizontal)
                .padding(.bottom)
            }
            .frame(minWidth: 400)
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
            if let dag = DAGParser.parse(code) {
                parsedDAG = dag
                parseError = nil
            } else {
                parsedDAG = nil
                parseError = "Failed to parse code into DAG"
            }
        } catch {
            parsedDAG = nil
            parseError = error.localizedDescription
        }
    }

    private func generateColoredTreeVisualization(_ dag: DAG) -> some View {
        let dagLevels = buildDAGLevels(dag)

        if dagLevels.isEmpty {
            return AnyView(Text("No nodes found")
                .foregroundColor(.secondary)
                .italic())
        }

        return AnyView(
            VStack(alignment: .leading, spacing: 2) {
                ForEach(Array(dagLevels.enumerated()), id: \.offset) { levelIndex, level in
                    displayDAGLevel(level, levelIndex: levelIndex, totalLevels: dagLevels.count)
                }
            }
        )
    }

    private func generateTreeVisualization(_ dag: DAG) -> String {
        guard let rootNodeId = dag.getRootNode()?.nodeId else {
            return "No root node found"
        }

        var result = "DAG Tree:\n"
        result += buildTreeString(for: rootNodeId, in: dag, visited: [], isLast: true, prefix: "")

        return result
    }

    private func buildTreeString(
        for nodeId: UUID,
        in dag: DAG,
        visited: Set<UUID>,
        isLast: Bool,
        prefix: String
    ) -> String {
        // Prevent infinite loops
        guard !visited.contains(nodeId) else {
            return prefix + (isLast ? "└─ " : "├─ ") + "[Cycle detected]\n"
        }

        guard let node = dag.nodes.first(where: { $0.nodeId == nodeId }) else {
            return prefix + (isLast ? "└─ " : "├─ ") + "[Node not found]\n"
        }

        var newVisited = visited
        newVisited.insert(nodeId)

        let connector = isLast ? "└─ " : "├─ "
        let nodeName = getNodeDisplayName(node)
        var result = prefix + connector + nodeName + "\n"

        // Get child nodes from inputs
        let childNodes = getChildNodes(of: node, in: dag)

        if !childNodes.isEmpty {
            let newPrefix = prefix + (isLast ? "   " : "│  ")

            for (index, childNodeId) in childNodes.enumerated() {
                let isLastChild = index == childNodes.count - 1
                result += buildTreeString(
                    for: childNodeId,
                    in: dag,
                    visited: newVisited,
                    isLast: isLastChild,
                    prefix: newPrefix
                )
            }
        }

        return result
    }

    private func getNodeDisplayName(_ node: DAGNode) -> String {
        switch node.kind {
        case .value:
            if let input = node.inputs.first,
               case .value(let val) = input.input {
                return "ValueNode(\(Int(val)))"
            }
            return "ValueNode(?)"

        case .sin:
            return "SinNode"

        case .cos:
            return "CosNode"

        case .sqrt:
            return "SquareRootNode"

        case .add:
            return "Add"

        case .subtract:
            return "Subtract"

        case .greaterThan:
            return "GreaterThan"

        case .lessThan:
            return "LessThan"

        case .equal:
            return "Equal"

        case .optionPicker:
            return "OptionPicker"
        }
    }

    private func getChildNodes(of node: DAGNode, in dag: DAG) -> [UUID] {
        return node.inputs.compactMap { input in
            if case .incomingEdge(let from) = input.input {
                return from.nodeId
            }
            return nil
        }
    }

    private func buildColoredTreeView(
        for nodeId: UUID,
        in dag: DAG,
        visited: Set<UUID>,
        isLast: Bool,
        prefix: String
    ) -> some View {
        // Prevent infinite loops
        guard !visited.contains(nodeId) else {
            return AnyView(
                HStack(spacing: 0) {
                    Text(prefix + (isLast ? "└─ " : "├─ "))
                        .foregroundColor(.secondary)
                    Text("[Cycle detected]")
                        .foregroundColor(.red)
                        .italic()
                }
                .font(.system(.body, design: .monospaced))
            )
        }

        guard let node = dag.nodes.first(where: { $0.nodeId == nodeId }) else {
            return AnyView(
                HStack(spacing: 0) {
                    Text(prefix + (isLast ? "└─ " : "├─ "))
                        .foregroundColor(.secondary)
                    Text("[Node not found]")
                        .foregroundColor(.red)
                        .italic()
                }
                .font(.system(.body, design: .monospaced))
            )
        }

        var newVisited = visited
        newVisited.insert(nodeId)

        let connector = isLast ? "└─ " : "├─ "
        let nodeName = getNodeDisplayName(node)
        let nodeColor = getNodeColor(node)

        // Get child nodes from inputs
        let childNodes = getChildNodes(of: node, in: dag)
        let newPrefix = prefix + (isLast ? "   " : "│  ")

        return AnyView(
            VStack(alignment: .leading, spacing: 2) {
                // Current node
                HStack(spacing: 0) {
                    Text(prefix + connector)
                        .foregroundColor(.secondary)
                    Text(nodeName)
                        .foregroundColor(nodeColor)
                        .fontWeight(node.kind == .value ? .regular : .semibold)
                }
                .font(.system(.body, design: .monospaced))

                // Child nodes
                if !childNodes.isEmpty {
                    ForEach(Array(childNodes.enumerated()), id: \.offset) { index, childNodeId in
                        let isLastChild = index == childNodes.count - 1
                        buildColoredTreeView(
                            for: childNodeId,
                            in: dag,
                            visited: newVisited,
                            isLast: isLastChild,
                            prefix: newPrefix
                        )
                    }
                }
            }
        )
    }

    private func getNodeColor(_ node: DAGNode) -> Color {
        switch node.kind {
        case .value:
            return .blue
        case .sin, .cos, .sqrt:
            return .green
        case .add, .subtract, .greaterThan, .lessThan, .equal:
            return .purple
        case .optionPicker:
            return .orange
        }
    }

    private func findSourceNodes(in dag: DAG) -> [UUID] {
        // Source nodes are nodes that have no incoming edges (only value inputs)
        return dag.nodes.compactMap { node -> UUID? in
            // Check if this node has any incoming edges from other nodes
            let hasIncomingEdges = node.inputs.contains { input in
                if case .incomingEdge = input.input {
                    return true
                }
                return false
            }

            return !hasIncomingEdges ? node.nodeId : nil
        }
    }

    private func buildDataFlowTreeView(
        for nodeId: UUID,
        in dag: DAG,
        visited: Set<UUID>,
        isLast: Bool,
        prefix: String
    ) -> some View {
        // Prevent infinite loops
        guard !visited.contains(nodeId) else {
            return AnyView(
                HStack(spacing: 0) {
                    Text(prefix + (isLast ? "└─ " : "├─ "))
                        .foregroundColor(.secondary)
                    Text("[Cycle detected]")
                        .foregroundColor(.red)
                        .italic()
                }
                .font(.system(.body, design: .monospaced))
            )
        }

        guard let node = dag.nodes.first(where: { $0.nodeId == nodeId }) else {
            return AnyView(
                HStack(spacing: 0) {
                    Text(prefix + (isLast ? "└─ " : "├─ "))
                        .foregroundColor(.secondary)
                    Text("[Node not found]")
                        .foregroundColor(.red)
                        .italic()
                }
                .font(.system(.body, design: .monospaced))
            )
        }

        var newVisited = visited
        newVisited.insert(nodeId)

        let connector = prefix.isEmpty ? "" : (isLast ? "└─ " : "├─ ")
        let nodeName = getNodeDisplayName(node)
        let nodeColor = getNodeColor(node)

        // Find downstream nodes (nodes that use this node as input)
        let downstreamNodes = findDownstreamNodes(for: nodeId, in: dag)
        let newPrefix = prefix + (isLast ? "   " : "│  ")

        return AnyView(
            VStack(alignment: .leading, spacing: 2) {
                // Current node
                HStack(spacing: 0) {
                    Text(prefix + connector)
                        .foregroundColor(.secondary)
                    Text(nodeName)
                        .foregroundColor(nodeColor)
                        .fontWeight(node.kind == .value ? .regular : .semibold)
                }
                .font(.system(.body, design: .monospaced))

                // Downstream nodes
                if !downstreamNodes.isEmpty {
                    ForEach(Array(downstreamNodes.enumerated()), id: \.offset) { index, downstreamNodeId in
                        let isLastDownstream = index == downstreamNodes.count - 1
                        buildDataFlowTreeView(
                            for: downstreamNodeId,
                            in: dag,
                            visited: newVisited,
                            isLast: isLastDownstream,
                            prefix: newPrefix
                        )
                    }
                }
            }
        )
    }

    private func findDownstreamNodes(for nodeId: UUID, in dag: DAG) -> [UUID] {
        // Find all nodes that have this nodeId as an input
        return dag.nodes.compactMap { node in
            let hasInputFromNode = node.inputs.contains { input in
                if case .incomingEdge(let from) = input.input {
                    return from.nodeId == nodeId
                }
                return false
            }
            return hasInputFromNode ? node.nodeId : nil
        }
    }

    private func buildDAGLevels(_ dag: DAG) -> [[UUID]] {
        // Start with source nodes (nodes with no incoming edges)
        let sourceNodeIds = findSourceNodes(in: dag)

        if sourceNodeIds.isEmpty {
            return []
        }

        var levels: [[UUID]] = [sourceNodeIds]
        var processedNodes = Set(sourceNodeIds)
        var currentLevel = sourceNodeIds

        // Build levels by following downstream connections
        while !currentLevel.isEmpty {
            var nextLevel: [UUID] = []

            // For each node in current level, find its downstream consumers
            for nodeId in currentLevel {
                let downstreamNodes = findDownstreamNodes(for: nodeId, in: dag)

                for downstreamNodeId in downstreamNodes {
                    // Only add if all its dependencies have been processed
                    if !processedNodes.contains(downstreamNodeId) &&
                       allDependenciesProcessed(downstreamNodeId, in: dag, processedNodes: processedNodes) {
                        nextLevel.append(downstreamNodeId)
                    }
                }
            }

            // Remove duplicates and add to processed
            nextLevel = Array(Set(nextLevel))
            if nextLevel.isEmpty {
                break
            }

            levels.append(nextLevel)
            processedNodes.formUnion(nextLevel)
            currentLevel = nextLevel
        }

        return levels
    }

    private func allDependenciesProcessed(_ nodeId: UUID, in dag: DAG, processedNodes: Set<UUID>) -> Bool {
        guard let node = dag.nodes.first(where: { $0.nodeId == nodeId }) else {
            return false
        }

        // Check if all input dependencies are already processed
        let dependencies = node.inputs.compactMap { input in
            if case .incomingEdge(let from) = input.input {
                return from.nodeId
            }
            return nil
        }

        return dependencies.allSatisfy { processedNodes.contains($0) }
    }

    private func displayDAGLevel(_ nodeIds: [UUID], levelIndex: Int, totalLevels: Int) -> some View {
        VStack(alignment: .leading, spacing: 2) {
            ForEach(Array(nodeIds.enumerated()), id: \.offset) { nodeIndex, nodeId in
                if let node = parsedDAG?.nodes.first(where: { $0.nodeId == nodeId }) {
                    let isLastInLevel = nodeIndex == nodeIds.count - 1
                    let isFirstLevel = levelIndex == 0
                    let prefix = String(repeating: "   ", count: levelIndex)
                    let connector = isFirstLevel ? "" : (isLastInLevel ? "└─ " : "├─ ")

                    HStack(spacing: 0) {
                        Text(prefix + connector)
                            .foregroundColor(.secondary)
                        Text(getNodeDisplayName(node))
                            .foregroundColor(getNodeColor(node))
                            .fontWeight(node.kind == .value ? .regular : .semibold)
                    }
                    .font(.system(.body, design: .monospaced))
                }
            }
        }
    }

}

#Preview {
    DAGDebugView()
        .frame(minWidth: 800, minHeight: 600)
}