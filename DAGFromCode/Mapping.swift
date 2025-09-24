//
//  DAGFromCode.swift
//  DAGFromCode
//
//  Created by Christian J Clampitt on 9/24/25.
//

import Foundation
import SwiftSyntax
import SwiftParser


// "Coordinates": unique identifiers of a given node's input or output

struct InputCoordinate: Equatable, Hashable {
    let nodeId: UUID
    let portId: Int
}

struct OutputCoordinate: Equatable, Hashable {
    let nodeId: UUID
    let portId: Int
}

struct NodeInput: Equatable, Hashable {
    let id: InputCoordinate
    let input: InputValue
}

// Input could have a static, manually-entered `value` OR an `incomingEdge` from an upstream node's output
enum InputValue: Equatable, Hashable {
    case value(Double)
    case incomingEdge(from: OutputCoordinate)
}

struct NodeOutput: Equatable, Hashable {
    let id: OutputCoordinate
    let value: Double
}

struct DAGNode {
    let nodeId: UUID
    let kind: NodePatch
    let input: NodeInput // value or or incoming edge (from upstream output)
    let output: NodeOutput
}

enum NodePatch: String, Equatable, Codable, Hashable, Identifiable {
    
    case value
    
    // single input, single output, same type (Double)
    case sin, cos, sqrt
    
    var id: String {
        self.rawValue
    }
}
