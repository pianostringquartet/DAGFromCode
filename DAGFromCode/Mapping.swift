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
struct DAG {
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
    
    // Simplifying assumption: a layer input appears in the DAG just if it has an incoming edge or a non-default value.
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
enum DAGNodeType {
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
    case opacity, scaleEffect
}

// MARK: node inputs and outputs

struct NodeInput: Equatable, Hashable {
    let id: InputCoordinate
    let input: InputValue
}

// Input could have a static, manually-entered `value` OR an `incomingEdge` from an upstream node's output
enum InputValue: Equatable, Hashable {
    
    // TODO: expand? Exact associatedValue type doesn't really matter while we're just interested in
    case value(Double)
    
    case incomingEdge(from: OutputCoordinate)
}

struct NodeOutput: Equatable, Hashable {
    let id: OutputCoordinate
    
    // TODO: see note on `InputValue.value`
    let value: Double
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



