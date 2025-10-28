//
//  DAGFromCode.swift
//  DAGFromCode
//
//  Created by Christian J Clampitt on 9/24/25.
//

import Foundation
import SwiftSyntax
import SwiftParser


// MARK: the entirety of the data we can pull from a Swift code string

// A directed acyclic graph representing parsed Swift expressions
struct DAG: Equatable {
    let nodes: [UUID: DAGNodeType] // Dictionary for O(1) node lookups
    let resultNodeId: UUID          // The node representing the final expression result (may have incoming edges)

    func getResultNode() -> DAGNodeType? {
        return nodes[resultNodeId]
    }

    func getAllNodes() -> [DAGNodeType] {
        return Array(nodes.values)
    }

    func getNode(by id: UUID) -> DAGNodeType? {
        return nodes[id]
    }

    func getRootNode() -> DAGNodeType? {
        return nodes[resultNodeId]
    }
}

// The result of parsing a Swift code string
struct ProjectData {
    let graph: DAG                 // The DAG structure
    let views: [PrototypeLayer]    // the contents of the prototype window
}


// MARK: layers in the prototype window; these never appear directly in the DAG

struct PrototypeLayer: Equatable, Hashable {
    let nodeId: UUID
    let layer: PrototypeLayerKind
    var modifiers: [PrototypeLayerModifier]

    init(
        nodeId: UUID,
        layer: PrototypeLayerKind,
        modifiers: [PrototypeLayerModifier] = []
    ) {
        self.nodeId = nodeId
        self.layer = layer
        self.modifiers = modifiers
    }
    
    // Simplifying assumption: a layer input appears in the DAG just if it has an incoming edge or a non-default value.
}

// MARK: typed payload support

struct ColorValue: Equatable, Hashable {
    let name: String?
    let red: Double
    let green: Double
    let blue: Double
    let alpha: Double

    init(name: String? = nil, red: Double, green: Double, blue: Double, alpha: Double = 1.0) {
        self.name = name
        self.red = red
        self.green = green
        self.blue = blue
        self.alpha = alpha
    }
}

/// Typed payload stored by value nodes and literal-producing expressions.
enum DAGValue: Equatable, Hashable {
    case number(Double)
    case boolean(Bool)
    case color(ColorValue)

    var asNumber: Double? {
        if case let .number(value) = self {
            return value
        }
        return nil
    }

    var asBoolean: Bool? {
        if case let .boolean(value) = self {
            return value
        }
        return nil
    }

    var asColor: ColorValue? {
        if case let .color(value) = self {
            return value
        }
        return nil
    }
}

struct PrototypeLayerModifier: Equatable, Hashable {
    let kind: PrototypeLayerInputKind
    let argumentDescription: String?
    let numericPayloads: [Double]
    let typedPayload: DAGValue?

    init(
        kind: PrototypeLayerInputKind,
        argumentDescription: String? = nil,
        numericPayloads: [Double] = [],
        typedPayload: DAGValue? = nil
    ) {
        self.kind = kind
        self.argumentDescription = argumentDescription
        self.numericPayloads = numericPayloads
        self.typedPayload = typedPayload
    }
}

// i.e. Layer or SwiftUI view
enum PrototypeLayerKind: String, Equatable, Hashable, Identifiable {
    case rectangle, // SwiftUI Rectangle
         ellipse // SwiftUI Ellipse
    
    var id: String {
        self.rawValue
    }
}


// MARK: nodes that appear in the DAG

// Nodes that can comprise a DAG
enum DAGNodeType: Equatable {
    case function(DAGFunctionNode),
         layerInput(DAGLayerInputNode)
    
    var id: UUID {
        switch self {
        case .function(let x):
            return x.nodeId
        case .layerInput(let x):
            return x.nodeId
        }
    }
    
    var inputs: [NodeInput] {
        switch self {
        case .function(let x):
            return x.inputs
        case .layerInput(let x):
            return [x.input]
        }
    }
    
    var outputs: NodeOutput? {
        switch self {
        case .function(let x):
            return x.output
        case .layerInput:
            return nil
        }
    }
}

// i.e. PatchNode or Swift function/method/expression
struct DAGFunctionNode: Equatable, Hashable {
    let nodeId: UUID
    let patch: DAGFunction
    let inputs: [NodeInput] // array of inputs (empty for value nodes, 1+ for function nodes)
    let output: NodeOutput // single output for now
}

// i.e. Patch or name of Swift function/method/expression
enum DAGFunction: String, Equatable, Hashable, Identifiable {
    
    case value // i.e. identity
    
    // single input, single output, same type (Double)
    case sin, cos, sqrt
    
    // infix operators
    case add, // i.e. `+`
         subtract, // i.e. `-`
         greaterThan, // i.e. `>`
         lessThan, // i.e. `<`
         equal // i.e. `==`
    
    // ternary expressions, if/else
    case optionPicker
    
    // methods
    case rounded, magnitude
    
    
    var id: String {
        self.rawValue
    }
}

// A layer's input on the DAG
struct DAGLayerInputNode: Equatable, Hashable {
    let nodeId: UUID // ties back to parent layer-node
    let layerInput: PrototypeLayerInputKind
    let input: NodeInput
}

// i.e. LayerInput or SwiftUI view modififer
// note: LayerInputs can appear in the DAG as nodes
enum PrototypeLayerInputKind: String, Equatable, Hashable {
    case opacity, scaleEffect, fill
}

// MARK: node inputs and outputs

struct NodeInput: Equatable, Hashable {
    let id: InputCoordinate
    let input: InputValue
}

// Input could have a static, manually-entered `value` OR an `incomingEdge` from an upstream node's output
/// Represents a layer input port, either as a literal payload or an incoming edge.
enum InputValue: Equatable, Hashable {
    case value(DAGValue)
    case incomingEdge(from: OutputCoordinate)
}

struct NodeOutput: Equatable, Hashable {
    let id: OutputCoordinate

    /// Typed payload generated by this node when no outgoing edge overrides it.
    let value: DAGValue
}


// MARK: "Coordinates": unique identifiers of a given node's input or output

struct InputCoordinate: Equatable, Hashable {
    let nodeId: UUID
    let portId: Int // 0 = first input, 1 = second input, etc.
}

struct OutputCoordinate: Equatable, Hashable {
    let nodeId: UUID
    let portId: Int // 0 = first output, 1 = second output, etc.
}
