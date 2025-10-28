//
//  DAGGraphView.swift
//  DAGFromCode
//
//  Created by Christian J Clampitt on 9/25/25.
//

import SwiftUI
#if os(macOS) && !targetEnvironment(macCatalyst)
import AppKit
#elseif canImport(UIKit)
import UIKit
#endif

private enum NodePortKind: Hashable {
    case input
    case output
}

private struct NodePortAnchor: Hashable {
    let nodeId: UUID
    let portId: Int
    let kind: NodePortKind
}

private struct NodePortAnchorsKey: PreferenceKey {
    static var defaultValue: [NodePortAnchor: Anchor<CGPoint>] = [:]

    static func reduce(value: inout [NodePortAnchor: Anchor<CGPoint>], nextValue: () -> [NodePortAnchor: Anchor<CGPoint>]) {
        value.merge(nextValue(), uniquingKeysWith: { $1 })
    }
}

private enum DAGCanvasCoordinateSpace {
    static let name = "dagCanvas"
}

private func defaultNodeY(
    nodeIndex: Int,
    totalNodesInLevel: Int,
    nodeHeight: CGFloat,
    nodeSpacing: CGFloat
) -> CGFloat {
    if totalNodesInLevel == 1 {
        return nodeHeight / 2
    }

    let startY = nodeHeight / 2
    return startY + CGFloat(nodeIndex) * (nodeHeight + nodeSpacing)
}

private func defaultNodePosition(
    levelIndex: Int,
    nodeIndex: Int,
    totalNodesInLevel: Int,
    nodeWidth: CGFloat,
    nodeHeight: CGFloat,
    levelSpacing: CGFloat,
    nodeSpacing: CGFloat,
    scrollPadding: CGFloat
) -> CGPoint {
    CGPoint(
        x: CGFloat(levelIndex) * levelSpacing + nodeWidth / 2 + scrollPadding,
        y: defaultNodeY(
            nodeIndex: nodeIndex,
            totalNodesInLevel: totalNodesInLevel,
            nodeHeight: nodeHeight,
            nodeSpacing: nodeSpacing
        ) + scrollPadding
    )
}

struct DAGGraphView: View {
    let dag: DAG
    private let layerLookup: [UUID: PrototypeLayer]
    private let nodeWidth: CGFloat = 360
    private let nodeHeight: CGFloat = 160
    private let levelSpacing: CGFloat = 460
    private let nodeSpacing: CGFloat = 70
    private let scrollPadding: CGFloat = 100
    private let minZoom: CGFloat = 0.6
    private let maxZoom: CGFloat = 2.5

    @State private var nodePositions: [UUID: CGPoint] = [:]
    @State private var zoomScale: CGFloat = 1.0
    @GestureState private var magnifyBy: CGFloat = 1.0
    @State private var panOffset: CGSize = .zero
    @GestureState private var backgroundPanTranslation: CGSize = .zero

    init(dag: DAG, layers: [PrototypeLayer] = []) {
        self.dag = dag
        self.layerLookup = Dictionary(uniqueKeysWithValues: layers.map { ($0.nodeId, $0) })
    }

    var body: some View {
        GeometryReader { proxy in
            let levels = buildDAGLevels(dag)
            let layoutMetrics = calculateLayoutMetrics(
                levels: levels,
                nodePositions: nodePositions
            )
            let dimensions = layoutMetrics.dimensions
            let contentOffset = layoutMetrics.offset
            let effectiveZoom = clampScale(zoomScale * magnifyBy)
            let panTranslation = backgroundPanTranslation
            let effectivePanOffset = CGSize(
                width: panOffset.width + panTranslation.width,
                height: panOffset.height + panTranslation.height
            )

            ZStack(alignment: .topLeading) {
                Color.clear
                    .contentShape(Rectangle())
                    .frame(width: proxy.size.width, height: proxy.size.height)
                    .gesture(backgroundPanGesture)

                DAGCanvasView(
                    dag: dag,
                    levels: levels,
                    dimensions: dimensions,
                    nodeWidth: nodeWidth,
                    nodeHeight: nodeHeight,
                    levelSpacing: levelSpacing,
                    nodeSpacing: nodeSpacing,
                    scrollPadding: scrollPadding,
                    layerLookup: layerLookup,
                    contentOffset: contentOffset,
                    nodePositions: $nodePositions
                )
                .coordinateSpace(name: DAGCanvasCoordinateSpace.name)
                .frame(width: dimensions.width, height: dimensions.height)
                .scaleEffect(effectiveZoom, anchor: .topLeading)
                .offset(effectivePanOffset)
            }
            .frame(width: proxy.size.width, height: proxy.size.height, alignment: .topLeading)
            .simultaneousGesture(magnificationGesture)
            .overlay(alignment: .topTrailing) {
                zoomControls(currentScale: effectiveZoom)
                    .padding()
            }
        }
        .background(Color.platformControlBackground)
        .id(dag.resultNodeId) // Force view recreation when DAG changes
    }
    
    private var magnificationGesture: some Gesture {
        MagnificationGesture()
            .updating($magnifyBy) { value, state, _ in
                state = value
            }
            .onEnded { value in
                zoomScale = clampScale(zoomScale * value)
            }
    }

    private var backgroundPanGesture: some Gesture {
        DragGesture(minimumDistance: 0)
            .updating($backgroundPanTranslation) { value, state, _ in
                state = value.translation
            }
            .onEnded { value in
                panOffset.width += value.translation.width
                panOffset.height += value.translation.height
            }
    }
    
    private func clampScale(_ scale: CGFloat) -> CGFloat {
        min(max(scale, minZoom), maxZoom)
    }
    
    @ViewBuilder
    private func zoomControls(currentScale: CGFloat) -> some View {
        VStack(spacing: 8) {
            Button {
                zoomScale = clampScale(zoomScale * 1.2)
            } label: {
                Image(systemName: "plus.magnifyingglass")
                    .font(.title2)
                    .padding(8)
            }
            .buttonStyle(.plain)
            .background(.ultraThinMaterial)
            .clipShape(Circle())

            Button {
                zoomScale = clampScale(zoomScale / 1.2)
            } label: {
                Image(systemName: "minus.magnifyingglass")
                    .font(.title2)
                    .padding(8)
            }
            .buttonStyle(.plain)
            .background(.ultraThinMaterial)
            .clipShape(Circle())

            Text("\(Int(currentScale * 100))%")
                .font(.caption)
                .padding(.horizontal, 8)
                .padding(.vertical, 4)
                .background(.ultraThinMaterial)
                .clipShape(Capsule())
        }
    }
    
    private func calculateCanvasDimensions(levels: [[UUID]]) -> CGSize {
        let totalWidth = CGFloat(max(1, levels.count - 1)) * levelSpacing + nodeWidth + (2 * scrollPadding)
        let maxNodesInLevel = levels.map(\.count).max() ?? 1
        let totalHeight = CGFloat(max(1, maxNodesInLevel - 1)) * (nodeHeight + nodeSpacing) + nodeHeight + (2 * scrollPadding)
        return CGSize(width: totalWidth, height: totalHeight)
    }

    private func calculateLayoutMetrics(
        levels: [[UUID]],
        nodePositions: [UUID: CGPoint]
    ) -> (dimensions: CGSize, offset: CGPoint) {
        let baseDimensions = calculateCanvasDimensions(levels: levels)

        var minX = CGFloat.greatestFiniteMagnitude
        var minY = CGFloat.greatestFiniteMagnitude
        var maxX = CGFloat.leastNormalMagnitude
        var maxY = CGFloat.leastNormalMagnitude

        for (levelIndex, nodeIds) in levels.enumerated() {
            for (nodeIndex, nodeId) in nodeIds.enumerated() {
                let defaultPosition = defaultNodePosition(
                    levelIndex: levelIndex,
                    nodeIndex: nodeIndex,
                    totalNodesInLevel: nodeIds.count,
                    nodeWidth: nodeWidth,
                    nodeHeight: nodeHeight,
                    levelSpacing: levelSpacing,
                    nodeSpacing: nodeSpacing,
                    scrollPadding: scrollPadding
                )

                let position = nodePositions[nodeId] ?? defaultPosition
                let halfWidth = nodeWidth / 2
                let halfHeight = nodeHeight / 2

                minX = min(minX, position.x - halfWidth)
                maxX = max(maxX, position.x + halfWidth)
                minY = min(minY, position.y - halfHeight)
                maxY = max(maxY, position.y + halfHeight)
            }
        }

        guard minX.isFinite, minY.isFinite, maxX.isFinite, maxY.isFinite else {
            return (baseDimensions, .zero)
        }

        let contentWidth = maxX - minX
        let contentHeight = maxY - minY

        let additionalLeftInset = max(0, scrollPadding - minX)
        let additionalTopInset = max(0, scrollPadding - minY)

        let widthWithInsets = contentWidth + scrollPadding + (scrollPadding + additionalLeftInset)
        let heightWithInsets = contentHeight + scrollPadding + (scrollPadding + additionalTopInset)

        let dimensions = CGSize(
            width: max(baseDimensions.width, widthWithInsets),
            height: max(baseDimensions.height, heightWithInsets)
        )

        let contentOffset = CGPoint(x: additionalLeftInset, y: additionalTopInset)
        return (dimensions, contentOffset)
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
    let layerLookup: [UUID: PrototypeLayer]
    let contentOffset: CGPoint
    @Binding var nodePositions: [UUID: CGPoint]

    var body: some View {
        ZStack {
            DAGNodesLayer(
                dag: dag,
                levels: levels,
                nodeWidth: nodeWidth,
                nodeHeight: nodeHeight,
                levelSpacing: levelSpacing,
                nodeSpacing: nodeSpacing,
                scrollPadding: scrollPadding,
                layerLookup: layerLookup,
                contentOffset: contentOffset,
                nodePositions: $nodePositions
            )
        }
        .frame(width: dimensions.width, height: dimensions.height)
        .overlayPreferenceValue(NodePortAnchorsKey.self) { anchorMap in
            GeometryReader { proxy in
                Canvas { context, _ in
                    drawEdges(context: &context, proxy: proxy, anchors: anchorMap)
                }
                .allowsHitTesting(false)
            }
        }
    }
    
    private func drawEdges(
        context: inout GraphicsContext,
        proxy: GeometryProxy,
        anchors: [NodePortAnchor: Anchor<CGPoint>]
    ) {
        for node in dag.nodes.values {
            for input in node.inputs {
                guard case .incomingEdge(let from) = input.input else { continue }
                
                let sourceKey = NodePortAnchor(nodeId: from.nodeId, portId: from.portId, kind: .output)
                let targetKey = NodePortAnchor(nodeId: node.id, portId: input.id.portId, kind: .input)
                
                guard let sourceAnchor = anchors[sourceKey],
                      let targetAnchor = anchors[targetKey] else {
                    continue
                }
                
                let startPoint = proxy[sourceAnchor]
                let endPoint = proxy[targetAnchor]
                
                var path = Path()
                path.move(to: startPoint)
                
                let horizontalOffset = max(40, abs(endPoint.x - startPoint.x) * 0.35)
                let control1 = CGPoint(x: startPoint.x + horizontalOffset, y: startPoint.y)
                let control2 = CGPoint(x: endPoint.x - horizontalOffset, y: endPoint.y)
                
                path.addCurve(to: endPoint, control1: control1, control2: control2)
                
                let strokeColor = edgeColor(for: from.nodeId)
                context.stroke(path, with: .color(strokeColor), lineWidth: 4)
            }
        }
    }
    
    private func edgeColor(for nodeId: UUID) -> Color {
        guard let node = dag.getNode(by: nodeId) else {
            return Color.primary.opacity(0.6)
        }
        
        switch node {
        case .function(let functionNode):
            switch functionNode.output.value {
            case .number:
                return fallbackEdgeColor(for: functionNode.patch)
            case .boolean(let flag):
                return flag ? Color.green.opacity(0.85) : Color.red.opacity(0.85)
            case .color(let colorValue):
                let base = Color(colorValue: colorValue)
                let adjustedOpacity = max(0.45, min(colorValue.alpha, 1.0))
                return base.opacity(adjustedOpacity)
            }
        case .layerInput:
            return .gray
        }
    }
    
    private func fallbackEdgeColor(for patch: DAGFunction) -> Color {
        switch patch {
        case .value: return .blue
        case .sin, .cos, .sqrt, .rounded, .magnitude: return .green
        case .add, .subtract, .greaterThan, .lessThan, .equal: return .purple
        case .optionPicker: return .orange
        }
    }
}

private extension Color {
    static var platformControlBackground: Color {
#if os(macOS) && !targetEnvironment(macCatalyst)
        Color(NSColor.controlBackgroundColor)
#elseif canImport(UIKit)
        Color(UIColor.systemBackground)
#else
        Color.gray.opacity(0.1)
#endif
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
    let layerLookup: [UUID: PrototypeLayer]
    let contentOffset: CGPoint
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
                    layerLookup: layerLookup,
                    contentOffset: contentOffset,
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
    let layerLookup: [UUID: PrototypeLayer]
    let contentOffset: CGPoint
    @Binding var nodePositions: [UUID: CGPoint]
    @State private var dragStartPosition: CGPoint = .zero
    
    var body: some View {
        if let node = dag.getNode(by: nodeId) {
            let defaultPosition = defaultNodePosition(
                levelIndex: levelIndex,
                nodeIndex: nodeIndex,
                totalNodesInLevel: totalNodesInLevel,
                nodeWidth: nodeWidth,
                nodeHeight: nodeHeight,
                levelSpacing: levelSpacing,
                nodeSpacing: nodeSpacing,
                scrollPadding: scrollPadding
            )
            let currentPosition = nodePositions[nodeId] ?? defaultPosition
            let displayPosition = CGPoint(
                x: currentPosition.x + contentOffset.x,
                y: currentPosition.y + contentOffset.y
            )

            NodeView(dag: dag, node: node, parentLayer: layerLookup[node.nodeId])
                .frame(width: nodeWidth, height: nodeHeight)
                .position(displayPosition)
                .gesture(
                    DragGesture(coordinateSpace: .named(DAGCanvasCoordinateSpace.name))
                        .onChanged { value in
                            if value.translation == .zero {
                                dragStartPosition = nodePositions[nodeId] ?? defaultPosition
                            }
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
}

struct NodeView: View {
    let dag: DAG
    let node: DAGNodeType
    let parentLayer: PrototypeLayer?

    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 12)
                .fill(nodeBackgroundColor)
                .stroke(nodeStrokeColor, lineWidth: 2)

            VStack(spacing: 12) {
                Text(nodeDisplayName)
                    .font(.title2)
                    .fontWeight(.semibold)
                    .foregroundColor(.primary)
                    .multilineTextAlignment(.center)
                    .lineLimit(2)
                    .minimumScaleFactor(0.8)

                HStack(alignment: .top, spacing: 16) {
                    inputsColumn

                    if hasInputs && hasOutput {
                        Divider()
                            .frame(maxHeight: .infinity)
                    }

                    outputsColumn
                }

                Text(String(node.nodeId.uuidString.prefix(5)))
                    .font(.caption2)
                    .foregroundColor(.secondary)
                    .opacity(0.7)

                if let summary = parentLayerSummary {
                    Text("View: \(summary)")
                        .font(.caption2)
                        .foregroundColor(.secondary)
                        .opacity(0.7)
                }

                layerModifierDetail
            }
            .padding()
        }
    }

    private var nodeInputs: [NodeInput] {
        switch node {
        case .function(let functionNode):
            return functionNode.inputs
        case .layerInput(let layerInputNode):
            return [layerInputNode.input]
        }
    }

    private var nodeOutputValue: DAGValue? {
        switch node {
        case .function(let functionNode):
            return functionNode.output.value
        case .layerInput:
            return nodeInputs.first.flatMap(resolvedValue(for:))
        }
    }

    private var hasInputs: Bool {
        !nodeInputs.isEmpty
    }

    private var outputPortId: Int? {
        switch node {
        case .function(let functionNode):
            return functionNode.output.id.portId
        case .layerInput:
            return nil
        }
    }

    private var hasOutput: Bool {
        outputPortId != nil && nodeOutputValue != nil
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

    private var parentLayerSummary: String? {
        guard case .layerInput = node else { return nil }

        if let parentLayer {
            let name = parentLayer.layer.rawValue.capitalized
            let identifier = String(parentLayer.nodeId.uuidString.prefix(6))
            return "\(name) · \(identifier)"
        } else {
            return "Unknown"
        }
    }

    @ViewBuilder
    private var layerModifierDetail: some View {
        if case .layerInput(let layerInputNode) = node,
           layerInputNode.layerInput == .fill,
           let colorPayload = resolvedFillColorPayload {
            VStack(spacing: 4) {
                Text("Resolved Fill")
                    .font(.caption2.bold())
                    .foregroundColor(.secondary)
                ValueBadgeView(value: .color(colorPayload))
            }
        }
    }

    private var resolvedFillColorPayload: ColorValue? {
        if let modifierColor = parentLayer?.modifiers.first(where: { $0.kind == .fill })?.typedPayload?.asColor {
            return modifierColor
        }

        if let incoming = incomingColorPayload {
            return incoming
        }

        return nil
    }

    private var incomingColorPayload: ColorValue? {
        guard case .layerInput(let layerInputNode) = node,
              case .incomingEdge(let coordinate) = layerInputNode.input.input,
              let upstreamNode = dag.getNode(by: coordinate.nodeId),
              case .function(let functionNode) = upstreamNode,
              case .color(let colorValue) = functionNode.output.value else {
            return nil
        }
        return colorValue
    }

    private func resolvedValue(for input: NodeInput) -> DAGValue? {
        switch input.input {
        case .value(let value):
            return value
        case .incomingEdge(let from):
            guard let upstreamNode = dag.getNode(by: from.nodeId) else {
                return nil
            }
            switch upstreamNode {
            case .function(let functionNode):
                return functionNode.output.value
            case .layerInput(let layerInputNode):
                return resolvedValue(for: layerInputNode.input)
            }
        }
    }

    @ViewBuilder
    private var inputsColumn: some View {
        VStack(alignment: .leading, spacing: 6) {
            Text("Inputs")
                .font(.caption2.bold())
                .foregroundColor(.secondary)

            if hasInputs {
                ForEach(nodeInputs, id: \.id) { input in
                    inputRow(for: input)
                }
            } else {
                placeholderRow(alignment: .leading)
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }

    @ViewBuilder
    private var outputsColumn: some View {
        VStack(alignment: .trailing, spacing: 6) {
            Text("Outputs")
                .font(.caption2.bold())
                .foregroundColor(.secondary)
                .frame(maxWidth: .infinity, alignment: .trailing)

            if let portId = outputPortId, let value = nodeOutputValue {
                outputRow(value: value, portId: portId)
            } else {
                placeholderRow(alignment: .trailing)
            }
        }
        .frame(maxWidth: .infinity, alignment: .trailing)
    }

    @ViewBuilder
    private func inputRow(for input: NodeInput) -> some View {
        HStack(spacing: 8) {
            Text("Port \(input.id.portId)")
                .font(.caption2)
                .foregroundColor(.secondary)
            Spacer(minLength: 4)
            badge(for: resolvedValue(for: input))
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .anchorPreference(key: NodePortAnchorsKey.self, value: .leading) { anchor in
            [
                NodePortAnchor(
                    nodeId: node.id,
                    portId: input.id.portId,
                    kind: .input
                ): anchor
            ]
        }
    }

    @ViewBuilder
    private func outputRow(value: DAGValue, portId: Int) -> some View {
        HStack(spacing: 8) {
            Spacer(minLength: 4)
            Text("Port \(portId)")
                .font(.caption2)
                .foregroundColor(.secondary)
            badge(for: value)
        }
        .frame(maxWidth: .infinity, alignment: .trailing)
        .anchorPreference(key: NodePortAnchorsKey.self, value: .trailing) { anchor in
            [
                NodePortAnchor(
                    nodeId: node.id,
                    portId: portId,
                    kind: .output
                ): anchor
            ]
        }
    }

    @ViewBuilder
    private func badge(for value: DAGValue?) -> some View {
        if let value {
            ValueBadgeView(value: value)
        } else {
            placeholderPill
        }
    }

    private func placeholderRow(alignment: HorizontalAlignment) -> some View {
        let frameAlignment = Alignment(horizontal: alignment, vertical: .center)
        return placeholderPill
            .frame(maxWidth: .infinity, alignment: frameAlignment)
    }

    private var placeholderPill: some View {
        Text("—")
            .font(.caption)
            .foregroundColor(.secondary)
            .padding(.horizontal, 12)
            .padding(.vertical, 6)
            .background(Color.secondary.opacity(0.12))
            .clipShape(Capsule())
    }
}

private struct ValueBadgeView: View {
    let value: DAGValue

    var body: some View {
        switch value {
        case .number(let number):
            NumberBadge(value: number)
        case .boolean(let flag):
            BooleanBadge(value: flag)
        case .color(let colorValue):
            ColorSwatchView(colorValue: colorValue)
        }
    }
}

private struct NumberBadge: View {
    let value: Double

    var body: some View {
        Text(value.cleanNumericString)
            .font(.title3)
            .fontWeight(.medium)
            .padding(.horizontal, 12)
            .padding(.vertical, 6)
            .background(Color.blue.opacity(0.12))
            .foregroundColor(.blue)
            .clipShape(Capsule())
            .accessibilityLabel("Number \(value.cleanNumericString)")
    }
}

private struct BooleanBadge: View {
    let value: Bool

    private var palette: (background: Color, foreground: Color) {
        if value {
            return (Color.green.opacity(0.18), Color.green)
        } else {
            return (Color.red.opacity(0.18), Color.red)
        }
    }

    var body: some View {
        Text(value ? "True" : "False")
            .font(.headline)
            .padding(.horizontal, 12)
            .padding(.vertical, 6)
            .background(palette.background)
            .foregroundColor(palette.foreground)
            .clipShape(Capsule())
            .overlay(
                Capsule()
                    .stroke(palette.foreground.opacity(0.45), lineWidth: 1)
            )
            .accessibilityLabel(value ? "Boolean true" : "Boolean false")
    }
}

private struct ColorSwatchView: View {
    let colorValue: ColorValue

    private var formattedName: String {
        if let name = colorValue.name, !name.isEmpty {
            return name
        }
        return "Custom"
    }

    var body: some View {
        HStack(spacing: 10) {
            RoundedRectangle(cornerRadius: 6)
                .fill(Color(colorValue: colorValue))
                .frame(width: 30, height: 30)
                .overlay(
                    RoundedRectangle(cornerRadius: 6)
                        .stroke(Color.primary.opacity(0.08), lineWidth: 1)
                )

            VStack(alignment: .leading, spacing: 2) {
                Text(formattedName)
                    .font(.caption)
                    .foregroundColor(.primary)
                    .lineLimit(1)
                Text(colorValue.rgbaDescription)
                    .font(.caption2)
                    .foregroundColor(.secondary)
                    .lineLimit(1)
            }
        }
        .frame(maxWidth: .infinity)
        .accessibilityElement(children: .ignore)
        .accessibilityLabel("\(formattedName) color, \(colorValue.rgbaDescription)")
    }
}

private extension Color {
    init(colorValue: ColorValue) {
        self.init(
            red: colorValue.red,
            green: colorValue.green,
            blue: colorValue.blue,
            opacity: colorValue.alpha
        )
    }
}

private extension ColorValue {
    var rgbaDescription: String {
        let components = [
            "r: \(red.rgbaComponentString)",
            "g: \(green.rgbaComponentString)",
            "b: \(blue.rgbaComponentString)",
            "a: \(alpha.rgbaComponentString)"
        ]
        return components.joined(separator: " ")
    }
}

private extension Double {
    var rgbaComponentString: String {
        String(format: "%.2f", self)
    }
}

#Preview {
    // Create a simple test DAG: ValueNode(4) -> SquareRootNode with typed payloads
    let valueNodeId = UUID()
    let valueInput = NodeInput(
        id: InputCoordinate(nodeId: valueNodeId, portId: 0),
        input: .value(.number(4))
    )
    let valueFunction = DAGFunctionNode(
        nodeId: valueNodeId,
        patch: .value,
        inputs: [valueInput],
        output: NodeOutput(
            id: OutputCoordinate(nodeId: valueNodeId, portId: 0),
            value: .number(4)
        )
    )
    let valueNode: DAGNodeType = .function(valueFunction)

    let sqrtNodeId = UUID()
    let sqrtInput = NodeInput(
        id: InputCoordinate(nodeId: sqrtNodeId, portId: 0),
        input: .incomingEdge(from: OutputCoordinate(nodeId: valueNodeId, portId: 0))
    )
    let sqrtFunction = DAGFunctionNode(
        nodeId: sqrtNodeId,
        patch: .sqrt,
        inputs: [sqrtInput],
        output: NodeOutput(
            id: OutputCoordinate(nodeId: sqrtNodeId, portId: 0),
            value: .number(2)
        )
    )
    let sqrtNode: DAGNodeType = .function(sqrtFunction)

    let dag = DAG(
        nodes: [
            valueNodeId: valueNode,
            sqrtNodeId: sqrtNode
        ],
        resultNodeId: sqrtNodeId
    )

    return DAGGraphView(dag: dag)
        .frame(width: 1200, height: 800)
}
