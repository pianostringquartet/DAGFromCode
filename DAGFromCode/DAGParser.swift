//
//  DAGParser.swift
//  DAGFromCode
//
//  Created by Christian J Clampitt on 9/24/25.
//

import Foundation
import SwiftSyntax
import SwiftParser

struct DAG {
    let nodes: [DAGNode]
    let rootNodeId: UUID

    func getRootNode() -> DAGNode? {
        nodes.first { $0.nodeId == rootNodeId }
    }
}

class DAGParser {

    static func parse(_ source: String) -> DAG? {
        let sourceFile = Parser.parse(source: source)

        guard let firstStatement = sourceFile.statements.first,
              let expr = firstStatement.item.as(ExprSyntax.self) else {
            return nil
        }

        let visitor = DAGBuilderVisitor(viewMode: .sourceAccurate)
        visitor.walk(expr)

        if let rootNodeId = visitor.rootNodeId {
            return DAG(nodes: visitor.nodes, rootNodeId: rootNodeId)
        }

        return nil
    }
}

private class DAGBuilderVisitor: SyntaxVisitor {
    var nodes: [DAGNode] = []
    var rootNodeId: UUID?
    private var nodeStack: [UUID] = []

    override func visit(_ node: FunctionCallExprSyntax) -> SyntaxVisitorContinueKind {
        guard let declRef = node.calledExpression.as(DeclReferenceExprSyntax.self) else {
            return .visitChildren
        }

        let functionName = declRef.baseName.text
        guard let patchKind = patchKind(from: functionName) else {
            return .visitChildren
        }

        let nodeId = UUID()
        nodeStack.append(nodeId)

        walk(node.arguments)

        nodeStack.removeLast()

        let inputCoord = InputCoordinate(nodeId: nodeId)
        let outputCoord = OutputCoordinate(nodeId: nodeId)

        let inputValue: InputValue
        if let childNodeId = nodeStack.last {
            let upstreamOutput = OutputCoordinate(nodeId: childNodeId)
            inputValue = .incomingEdge(from: upstreamOutput)
        } else {
            return .skipChildren
        }

        let input = NodeInput(id: inputCoord, input: inputValue)
        let output = NodeOutput(id: outputCoord, value: 0.0)

        let dagNode = DAGNode(
            nodeId: nodeId,
            kind: patchKind,
            input: input,
            output: output
        )

        nodes.append(dagNode)

        if nodeStack.isEmpty {
            rootNodeId = nodeId
        } else {
            nodeStack[nodeStack.count - 1] = nodeId
        }

        return .skipChildren
    }

    override func visit(_ node: IntegerLiteralExprSyntax) -> SyntaxVisitorContinueKind {
        guard let value = Double(node.literal.text) else {
            return .skipChildren
        }

        let nodeId = createValueNode(value)

        if nodeStack.isEmpty {
            rootNodeId = nodeId
        } else {
            nodeStack[nodeStack.count - 1] = nodeId
        }

        return .skipChildren
    }

    override func visit(_ node: FloatLiteralExprSyntax) -> SyntaxVisitorContinueKind {
        guard let value = Double(node.literal.text) else {
            return .skipChildren
        }

        let nodeId = createValueNode(value)

        if nodeStack.isEmpty {
            rootNodeId = nodeId
        } else {
            nodeStack[nodeStack.count - 1] = nodeId
        }

        return .skipChildren
    }

    private func createValueNode(_ value: Double) -> UUID {
        let nodeId = UUID()
        let inputCoord = InputCoordinate(nodeId: nodeId)
        let outputCoord = OutputCoordinate(nodeId: nodeId)

        let input = NodeInput(id: inputCoord, input: .value(value))
        let output = NodeOutput(id: outputCoord, value: value)

        let dagNode = DAGNode(
            nodeId: nodeId,
            kind: .value,
            input: input,
            output: output
        )

        nodes.append(dagNode)
        return nodeId
    }

    private func patchKind(from functionName: String) -> DAGPatch? {
        switch functionName {
        case "sin": return .sin
        case "cos": return .cos
        case "sqrt": return .sqrt
        default: return nil
        }
    }
}

extension DAG: CustomStringConvertible {
    var description: String {
        var result = ""

        func describeNode(_ nodeId: UUID, visited: inout Set<UUID>) -> String {
            guard !visited.contains(nodeId) else { return "" }
            visited.insert(nodeId)

            guard let node = nodes.first(where: { $0.nodeId == nodeId }) else {
                return "Unknown"
            }

            switch node.kind {
            case .value:
                if case .value(let val) = node.input.input {
                    return "ValueNode(\(Int(val)))"
                }
                return "ValueNode(?)"

            case .sin:
                if case .incomingEdge(let from) = node.input.input {
                    let upstream = describeNode(from.nodeId, visited: &visited)
                    if !upstream.isEmpty {
                        return "\(upstream) -> SinNode"
                    }
                }
                return "SinNode"

            case .cos:
                if case .incomingEdge(let from) = node.input.input {
                    let upstream = describeNode(from.nodeId, visited: &visited)
                    if !upstream.isEmpty {
                        return "\(upstream) -> CosNode"
                    }
                }
                return "CosNode"

            case .sqrt:
                if case .incomingEdge(let from) = node.input.input {
                    let upstream = describeNode(from.nodeId, visited: &visited)
                    if !upstream.isEmpty {
                        return "\(upstream) -> SquareRootNode"
                    }
                }
                return "SquareRootNode"
            }
        }

        var visited = Set<UUID>()
        result = describeNode(rootNodeId, visited: &visited)
        return result
    }
}