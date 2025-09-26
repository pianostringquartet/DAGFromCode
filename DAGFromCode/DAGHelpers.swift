//
//  DAGHelpers.swift
//  DAGFromCode
//
//  Created by Christian J Clampitt on 9/25/25.
//

import Foundation

// MARK: - Protocols for unified node handling

protocol DAGNodeProtocol {
    var nodeId: UUID { get }
    var inputs: [NodeInput] { get }
}

extension DAGNodeType: DAGNodeProtocol {
    var nodeId: UUID {
        switch self {
        case .function(let node):
            return node.nodeId
        case .layerInput(let node):
            return node.nodeId
        }
    }

    // inputs property is already defined in Mapping.swift for DAGNodeType
}

extension DAGFunctionNode: DAGNodeProtocol {}
extension DAGLayerInputNode: DAGNodeProtocol {
    var inputs: [NodeInput] {
        [input]
    }
}

// MARK: - Builder pattern for creating nodes

struct DAGNodeBuilder {

    static func createValueNode(value: Double) -> DAGNodeType {
        let nodeId = UUID()
        let output = NodeOutput(
            id: OutputCoordinate(nodeId: nodeId, portId: 0),
            value: value
        )

        // Create input with the value (this is what tests and descriptions expect)
        let input = NodeInput(
            id: InputCoordinate(nodeId: nodeId, portId: 0),
            input: .value(value)
        )

        let functionNode = DAGFunctionNode(
            nodeId: nodeId,
            patch: .value,
            inputs: [input],
            output: output
        )
        return .function(functionNode)
    }

    static func createFunctionNode(
        patch: DAGFunction,
        inputs: [NodeInput],
        outputValue: Double
    ) -> DAGNodeType {
        let nodeId = UUID()
        let output = NodeOutput(
            id: OutputCoordinate(nodeId: nodeId, portId: 0),
            value: outputValue
        )
        let functionNode = DAGFunctionNode(
            nodeId: nodeId,
            patch: patch,
            inputs: inputs,
            output: output
        )
        return .function(functionNode)
    }

    static func createLayerInputNode(
        layerInput: PrototypeLayerInputKind,
        input: NodeInput
    ) -> DAGNodeType {
        let nodeId = UUID()
        let layerInputNode = DAGLayerInputNode(
            nodeId: nodeId,
            layerInput: layerInput,
            input: input
        )
        return .layerInput(layerInputNode)
    }
}

// MARK: - Extensions for easier value creation

extension NodeInput {
    static func value(_ value: Double, nodeId: UUID, portId: Int = 0) -> NodeInput {
        NodeInput(
            id: InputCoordinate(nodeId: nodeId, portId: portId),
            input: .value(value)
        )
    }

    static func edge(from outputCoordinate: OutputCoordinate, nodeId: UUID, portId: Int = 0) -> NodeInput {
        NodeInput(
            id: InputCoordinate(nodeId: nodeId, portId: portId),
            input: .incomingEdge(from: outputCoordinate)
        )
    }
}

extension OutputCoordinate {
    static func from(node: DAGNodeType, portId: Int = 0) -> OutputCoordinate {
        OutputCoordinate(nodeId: node.id, portId: portId)
    }
}

// MARK: - DAG extensions

extension DAG {
    static func empty(resultNodeId: UUID = UUID()) -> DAG {
        DAG(nodes: [:], resultNodeId: resultNodeId)
    }

    func addingNode(_ node: DAGNodeType, setAsResultNode: Bool = false) -> DAG {
        var newNodes = nodes
        newNodes[node.id] = node
        let newResultNodeId = setAsResultNode ? node.id : self.resultNodeId
        return DAG(nodes: newNodes, resultNodeId: newResultNodeId)
    }

    func settingRoot(_ nodeId: UUID) -> DAG {
        DAG(nodes: nodes, resultNodeId: nodeId)
    }
}

// MARK: - ProjectData extensions

extension ProjectData {
    static func empty() -> ProjectData {
        ProjectData(graph: DAG.empty(), views: [])
    }

    func addingNode(_ node: DAGNodeType, setAsResultNode: Bool = false) -> ProjectData {
        let newGraph = graph.addingNode(node, setAsResultNode: setAsResultNode)
        return ProjectData(graph: newGraph, views: views)
    }

    func addingView(_ view: PrototypeLayer) -> ProjectData {
        var newViews = views
        newViews.append(view)
        return ProjectData(graph: graph, views: newViews)
    }

    func settingRoot(_ nodeId: UUID) -> ProjectData {
        let newGraph = graph.settingRoot(nodeId)
        return ProjectData(graph: newGraph, views: views)
    }
}

// MARK: - Debug and display helpers

extension DAGFunction {
    var displayName: String {
        switch self {
        case .value: return "Value"
        case .sin: return "Sin"
        case .cos: return "Cos"
        case .sqrt: return "Sqrt"
        case .add: return "Add"
        case .subtract: return "Subtract"
        case .greaterThan: return ">"
        case .lessThan: return "<"
        case .equal: return "=="
        case .optionPicker: return "Option"
        case .rounded: return "Rounded"
        case .magnitude: return "Magnitude"
        }
    }
}

extension DAGNodeType {
    var displayName: String {
        switch self {
        case .function(let node):
            return node.patch.displayName
        case .layerInput(let node):
            return node.layerInput.rawValue.capitalized
        }
    }

    var hasOutput: Bool {
        switch self {
        case .function:
            return true
        case .layerInput:
            return false
        }
    }

    /// Returns the function node if this is a function type, nil otherwise
    var functionNode: DAGFunctionNode? {
        switch self {
        case .function(let node): return node
        case .layerInput: return nil
        }
    }

    /// Returns the layer input node if this is a layer input type, nil otherwise
    var layerInputNode: DAGLayerInputNode? {
        switch self {
        case .function: return nil
        case .layerInput(let node): return node
        }
    }

    /// Convenience property to check the patch type for function nodes
    var patch: DAGFunction? {
        return functionNode?.patch
    }
}

extension PrototypeLayerInputKind {
    var displayName: String {
        switch self {
        case .opacity: return "Opacity"
        case .scaleEffect: return "Scale Effect"
        }
    }
}
