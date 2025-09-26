//
//  DAGGraphView.swift
//  DAGFromCode
//
//  Created by Christian J Clampitt on 9/25/25.
//

import SwiftUI

struct DAGGraphView: View {
    let dag: DAG
    private let nodeWidth: CGFloat = 200
    private let nodeHeight: CGFloat = 100
    private let levelSpacing: CGFloat = 300
    private let nodeSpacing: CGFloat = 50
    private let scrollPadding: CGFloat = 100

    @State private var nodePositions: [UUID: CGPoint] = [:]

    var body: some View {
        GeometryReader { geometry in
            let levels = buildDAGLevels(dag)
            let dimensions = calculateCanvasDimensions(levels: levels)
            
            ScrollView([.horizontal, .vertical]) {
                DAGCanvasView(
                    dag: dag,
                    levels: levels,
                    dimensions: dimensions,
                    nodeWidth: nodeWidth,
                    nodeHeight: nodeHeight,
                    levelSpacing: levelSpacing,
                    nodeSpacing: nodeSpacing,
                    scrollPadding: scrollPadding,
                    nodePositions: $nodePositions
                )
            }
        }
        .background(Color(NSColor.controlBackgroundColor))
    }
    
    private func calculateCanvasDimensions(levels: [[UUID]]) -> CGSize {
        let totalWidth = CGFloat(max(1, levels.count - 1)) * levelSpacing + nodeWidth + (2 * scrollPadding)
        let maxNodesInLevel = levels.map(\.count).max() ?? 1
        let totalHeight = CGFloat(max(1, maxNodesInLevel - 1)) * (nodeHeight + nodeSpacing) + nodeHeight + (2 * scrollPadding)
        return CGSize(width: totalWidth, height: totalHeight)
    }

    private func calculateNodeY(nodeIndex: Int, totalNodesInLevel: Int) -> CGFloat {
        if totalNodesInLevel == 1 {
            return nodeHeight / 2
        }

        let totalSpacing = CGFloat(totalNodesInLevel - 1) * (nodeHeight + nodeSpacing)
        let startY = nodeHeight / 2
        return startY + CGFloat(nodeIndex) * (nodeHeight + nodeSpacing)
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

    private func findSourceNodes(in dag: DAG) -> [UUID] {
        // Source nodes are nodes that have no incoming edges (only value inputs)
        return dag.nodes.compactMap { (nodeId, node) -> UUID? in
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

    private func findDownstreamNodes(for nodeId: UUID, in dag: DAG) -> [UUID] {
        // Find all nodes that have this nodeId as an input
        return dag.nodes.compactMap { (currentNodeId, node) in
            let hasInputFromNode = node.inputs.contains { input in
                if case .incomingEdge(let from) = input.input {
                    return from.nodeId == nodeId
                }
                return false
            }
            return hasInputFromNode ? node.nodeId : nil
        }
    }

    private func allDependenciesProcessed(_ nodeId: UUID, in dag: DAG, processedNodes: Set<UUID>) -> Bool {
        guard let node = dag.nodes.values.first(where: { $0.nodeId == nodeId }) else {
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
}

struct DAGCanvasView: View {
    let dag: DAG
    let levels: [[UUID]]
    let dimensions: CGSize
    let nodeWidth: CGFloat
    let nodeHeight: CGFloat
    let levelSpacing: CGFloat
    let nodeSpacing: CGFloat
    let scrollPadding: CGFloat
    @Binding var nodePositions: [UUID: CGPoint]
    
    var body: some View {
        ZStack {
            // Draw edges first (behind nodes)
            DAGEdgesLayer(
                dag: dag,
                levels: levels,
                nodeWidth: nodeWidth,
                nodeHeight: nodeHeight,
                levelSpacing: levelSpacing,
                nodeSpacing: nodeSpacing,
                scrollPadding: scrollPadding,
                nodePositions: nodePositions
            )
            
            // Draw nodes
            DAGNodesLayer(
                dag: dag,
                levels: levels,
                nodeWidth: nodeWidth,
                nodeHeight: nodeHeight,
                levelSpacing: levelSpacing,
                nodeSpacing: nodeSpacing,
                scrollPadding: scrollPadding,
                nodePositions: $nodePositions
            )
        }
        .frame(width: dimensions.width, height: dimensions.height)
    }
}

struct DAGEdgesLayer: View {
    let dag: DAG
    let levels: [[UUID]]
    let nodeWidth: CGFloat
    let nodeHeight: CGFloat
    let levelSpacing: CGFloat
    let nodeSpacing: CGFloat
    let scrollPadding: CGFloat
    let nodePositions: [UUID: CGPoint]
    
    var body: some View {
        ForEach(Array(levels.enumerated()), id: \.offset) { levelIndex, nodeIds in
            ForEach(Array(nodeIds.enumerated()), id: \.offset) { nodeIndex, nodeId in
                EdgesView(
                    dag: dag,
                    fromNodeId: nodeId,
                    levels: levels,
                    nodeWidth: nodeWidth,
                    nodeHeight: nodeHeight,
                    levelSpacing: levelSpacing,
                    nodeSpacing: nodeSpacing,
                    scrollPadding: scrollPadding,
                    nodePositions: nodePositions
                )
            }
        }
    }
}

struct DAGNodesLayer: View {
    let dag: DAG
    let levels: [[UUID]]
    let nodeWidth: CGFloat
    let nodeHeight: CGFloat
    let levelSpacing: CGFloat
    let nodeSpacing: CGFloat
    let scrollPadding: CGFloat
    @Binding var nodePositions: [UUID: CGPoint]
    
    var body: some View {
        ForEach(Array(levels.enumerated()), id: \.offset) { levelIndex, nodeIds in
            ForEach(Array(nodeIds.enumerated()), id: \.offset) { nodeIndex, nodeId in
                DAGNodeWrapper(
                    dag: dag,
                    nodeId: nodeId,
                    levelIndex: levelIndex,
                    nodeIndex: nodeIndex,
                    totalNodesInLevel: nodeIds.count,
                    nodeWidth: nodeWidth,
                    nodeHeight: nodeHeight,
                    levelSpacing: levelSpacing,
                    nodeSpacing: nodeSpacing,
                    scrollPadding: scrollPadding,
                    nodePositions: $nodePositions
                )
            }
        }
    }
}

struct DAGNodeWrapper: View {
    let dag: DAG
    let nodeId: UUID
    let levelIndex: Int
    let nodeIndex: Int
    let totalNodesInLevel: Int
    let nodeWidth: CGFloat
    let nodeHeight: CGFloat
    let levelSpacing: CGFloat
    let nodeSpacing: CGFloat
    let scrollPadding: CGFloat
    @Binding var nodePositions: [UUID: CGPoint]
    @State private var dragStartPosition: CGPoint = .zero
    
    var body: some View {
        if let node = dag.getNode(by: nodeId) {
            let defaultPosition = CGPoint(
                x: CGFloat(levelIndex) * levelSpacing + nodeWidth / 2 + scrollPadding,
                y: calculateNodeY(nodeIndex: nodeIndex, totalNodesInLevel: totalNodesInLevel) + scrollPadding
            )
            let currentPosition = nodePositions[nodeId] ?? defaultPosition
            
            NodeView(node: node)
                .frame(width: nodeWidth, height: nodeHeight)
                .position(currentPosition)
                .gesture(
                    DragGesture()
                        .onChanged { value in
                            nodePositions[nodeId] = CGPoint(
                                x: dragStartPosition.x + value.translation.width,
                                y: dragStartPosition.y + value.translation.height
                            )
                        }
                        .onEnded { _ in
                            // Update the drag start position for next drag
                            dragStartPosition = nodePositions[nodeId] ?? defaultPosition
                        }
                )
                .onAppear {
                    if nodePositions[nodeId] == nil {
                        nodePositions[nodeId] = defaultPosition
                    }
                    dragStartPosition = nodePositions[nodeId] ?? defaultPosition
                }
        }
    }
    
    private func calculateNodeY(nodeIndex: Int, totalNodesInLevel: Int) -> CGFloat {
        if totalNodesInLevel == 1 {
            return nodeHeight / 2
        }

        let totalSpacing = CGFloat(totalNodesInLevel - 1) * (nodeHeight + nodeSpacing)
        let startY = nodeHeight / 2
        return startY + CGFloat(nodeIndex) * (nodeHeight + nodeSpacing)
    }
}

struct NodeView: View {
    let node: DAGNodeType

    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 12)
                .fill(nodeBackgroundColor)
                .stroke(nodeStrokeColor, lineWidth: 2)

            VStack(spacing: 8) {
                Text(nodeDisplayName)
                    .font(.title2)
                    .fontWeight(.semibold)
                    .foregroundColor(.primary)
                    .multilineTextAlignment(.center)

                if let functionNode = node.functionNode,
                   functionNode.patch == .value,
                   let input = functionNode.inputs.first,
                   case .value(let val) = input.input {
                    Text("\(Int(val))")
                        .font(.title)
                        .foregroundColor(.secondary)
                }
            }
            .padding()
        }
    }

    private var nodeDisplayName: String {
        switch node {
        case .function(let functionNode):
            switch functionNode.patch {
            case .value: return "Value"
            case .sin: return "Sin"
            case .cos: return "Cos"
            case .sqrt: return "Square Root"
            case .add: return "Add"
            case .subtract: return "Subtract"
            case .greaterThan: return "Greater Than"
            case .lessThan: return "Less Than"
            case .equal: return "Equal"
            case .optionPicker: return "Option Picker"
            case .rounded: return "Rounded"
            case .magnitude: return "Magnitude"
            }
        case .layerInput(let layerInputNode):
            return layerInputNode.layerInput.displayName
        }
    }

    private var nodeBackgroundColor: Color {
        switch node {
        case .function(let functionNode):
            switch functionNode.patch {
            case .value: return Color.blue.opacity(0.1)
            case .sin, .cos, .sqrt, .rounded, .magnitude: return Color.green.opacity(0.1)
            case .add, .subtract, .greaterThan, .lessThan, .equal: return Color.purple.opacity(0.1)
            case .optionPicker: return Color.orange.opacity(0.1)
            }
        case .layerInput: return Color.gray.opacity(0.1)
        }
    }

    private var nodeStrokeColor: Color {
        switch node {
        case .function(let functionNode):
            switch functionNode.patch {
            case .value: return .blue
            case .sin, .cos, .sqrt, .rounded, .magnitude: return .green
            case .add, .subtract, .greaterThan, .lessThan, .equal: return .purple
            case .optionPicker: return .orange
            }
        case .layerInput: return .gray
        }
    }
}

struct EdgesView: View {
    let dag: DAG
    let fromNodeId: UUID
    let levels: [[UUID]]
    let nodeWidth: CGFloat
    let nodeHeight: CGFloat
    let levelSpacing: CGFloat
    let nodeSpacing: CGFloat
    let scrollPadding: CGFloat
    let nodePositions: [UUID: CGPoint]

    var body: some View {
        if let fromNode = dag.getNode(by: fromNodeId) {
            ForEach(Array(fromNode.inputs.enumerated()), id: \.offset) { inputIndex, input in
                if case .incomingEdge(let from) = input.input {
                    EdgePath(
                        dag: dag,
                        fromOutputCoordinate: from,
                        toNodeId: fromNodeId,
                        toInputIndex: inputIndex,
                        levels: levels,
                        nodeWidth: nodeWidth,
                        nodeHeight: nodeHeight,
                        levelSpacing: levelSpacing,
                        nodeSpacing: nodeSpacing,
                        scrollPadding: scrollPadding,
                        nodePositions: nodePositions
                    )
                }
            }
        }
    }
}

struct EdgePath: View {
    let dag: DAG
    let fromOutputCoordinate: OutputCoordinate
    let toNodeId: UUID
    let toInputIndex: Int
    let levels: [[UUID]]
    let nodeWidth: CGFloat
    let nodeHeight: CGFloat
    let levelSpacing: CGFloat
    let nodeSpacing: CGFloat
    let scrollPadding: CGFloat
    let nodePositions: [UUID: CGPoint]

    var body: some View {
        Path { path in
            guard let fromPosition = getActualNodePosition(fromOutputCoordinate.nodeId),
                  let toPosition = getActualNodePosition(toNodeId) else {
                return
            }

            // Output point (right side of source node)
            let outputPoint = CGPoint(
                x: fromPosition.x + nodeWidth / 2,
                y: fromPosition.y
            )

            // Input point (left side of destination node)
            let inputPoint = CGPoint(
                x: toPosition.x - nodeWidth / 2,
                y: toPosition.y + getInputOffset(toInputIndex)
            )

            path.move(to: outputPoint)
            path.addLine(to: inputPoint)
        }
        .stroke(getOutputNodeColor(), lineWidth: 4)
    }

    private func getNodePosition(_ nodeId: UUID) -> CGPoint? {
        for (levelIndex, nodeIds) in levels.enumerated() {
            if let nodeIndex = nodeIds.firstIndex(of: nodeId) {
                let x = CGFloat(levelIndex) * levelSpacing + nodeWidth / 2
                let y = calculateNodeY(nodeIndex: nodeIndex, totalNodesInLevel: nodeIds.count)
                return CGPoint(x: x, y: y)
            }
        }
        return nil
    }

    private func calculateNodeY(nodeIndex: Int, totalNodesInLevel: Int) -> CGFloat {
        if totalNodesInLevel == 1 {
            return nodeHeight / 2
        }

        let startY = nodeHeight / 2
        return startY + CGFloat(nodeIndex) * (nodeHeight + nodeSpacing)
    }

    private func getActualNodePosition(_ nodeId: UUID) -> CGPoint? {
        // Use the current dragged position if available, otherwise fall back to calculated position
        if let draggedPosition = nodePositions[nodeId] {
            return draggedPosition
        }
        return getNodePosition(nodeId)
    }

    private func getOutputNodeColor() -> Color {
        guard let outputNode = dag.getNode(by: fromOutputCoordinate.nodeId) else {
            return Color.primary.opacity(0.6)
        }

        switch outputNode {
        case .function(let functionNode):
            switch functionNode.patch {
            case .value: return .blue
            case .sin, .cos, .sqrt, .rounded, .magnitude: return .green
            case .add, .subtract, .greaterThan, .lessThan, .equal: return .purple
            case .optionPicker: return .orange
            }
        case .layerInput: return .gray
        }
    }

    private func getInputOffset(_ inputIndex: Int) -> CGFloat {
        // For now, just center all inputs. Could be enhanced to show multiple input ports
        return 0
    }
}

#Preview {
    // Create a simple test DAG: ValueNode(4) -> SquareRootNode
    let valueNode = DAGNodeBuilder.createValueNode(value: 4)
    let sqrtInput = NodeInput.edge(
        from: OutputCoordinate(nodeId: valueNode.nodeId, portId: 0),
        nodeId: UUID(), // Will be set correctly when we create the sqrt node
        portId: 0
    )
    let sqrtNode = DAGNodeBuilder.createFunctionNode(
        patch: .sqrt,
        inputs: [sqrtInput],
        outputValue: 2.0
    )

    let dag = DAG(
        nodes: [
            valueNode.nodeId: valueNode,
            sqrtNode.nodeId: sqrtNode
        ],
        resultNodeId: sqrtNode.nodeId
    )

    return DAGGraphView(dag: dag)
        .frame(width: 1200, height: 800)
}
