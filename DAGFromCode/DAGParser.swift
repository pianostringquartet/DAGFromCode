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
        print("\n🔍 DAGParser.parse() starting with source: '\(source)'")
        let sourceFile = Parser.parse(source: source)

        guard let firstStatement = sourceFile.statements.first,
              let expr = firstStatement.item.as(ExprSyntax.self) else {
            print("❌ Failed to extract expression from source")
            return nil
        }

        print("✅ Successfully parsed source into ExprSyntax")
        print("📊 Expression type: \(type(of: expr))")

        let visitor = DAGBuilderVisitor(viewMode: .sourceAccurate)
        print("🚶 Starting syntax tree walk...")
        visitor.walk(expr)

        if let rootNodeId = visitor.rootNodeId {
            let dag = DAG(nodes: visitor.nodes, rootNodeId: rootNodeId)
            print("✅ DAG created successfully:")
            print("  - Root node ID: \(rootNodeId)")
            print("  - Total nodes: \(visitor.nodes.count)")
            print("  - DAG description: \(dag.description)")
            return dag
        }

        print("❌ Failed to create DAG - no root node ID")
        return nil
    }
}

private class DAGBuilderVisitor: SyntaxVisitor {
    var nodes: [DAGNode] = []
    var rootNodeId: UUID?
    private var nodeStack: [UUID] = []
    private var depth: Int = 0

    private func indent() -> String {
        String(repeating: "  ", count: depth)
    }

    override func visit(_ node: FunctionCallExprSyntax) -> SyntaxVisitorContinueKind {
        print("\(indent())🔵 Visiting FunctionCallExprSyntax")
        depth += 1

        guard let declRef = node.calledExpression.as(DeclReferenceExprSyntax.self) else {
            print("\(indent())⚠️ Failed to cast calledExpression to DeclReferenceExprSyntax")
            depth -= 1
            return .visitChildren
        }

        let functionName = declRef.baseName.text
        print("\(indent())📌 Function name: '\(functionName)'")

        guard let patchKind = patchKind(from: functionName) else {
            print("\(indent())⚠️ Unknown function: '\(functionName)'")
            depth -= 1
            return .visitChildren
        }

        let nodeId = UUID()
        print("\(indent())🆔 Created node ID: \(nodeId) for \(patchKind)")
        nodeStack.append(nodeId)
        print("\(indent())📚 Stack after push: \(nodeStack.count) items")

        print("\(indent())🔍 Walking arguments...")
        walk(node.arguments)

        nodeStack.removeLast()
        print("\(indent())📚 Stack after pop: \(nodeStack.count) items")

        let inputCoord = InputCoordinate(nodeId: nodeId)
        let outputCoord = OutputCoordinate(nodeId: nodeId)

        let inputValue: InputValue
        if let childNodeId = nodeStack.last {
            let upstreamOutput = OutputCoordinate(nodeId: childNodeId)
            inputValue = .incomingEdge(from: upstreamOutput)
            print("\(indent())🔗 Creating edge from upstream node: \(childNodeId)")
        } else {
            print("\(indent())❌ No child node found in stack!")
            depth -= 1
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
        print("\(indent())✅ Created DAGNode: \(patchKind) with ID: \(nodeId)")

        if nodeStack.isEmpty {
            rootNodeId = nodeId
            print("\(indent())👑 Set root node ID: \(nodeId)")
        } else {
            nodeStack[nodeStack.count - 1] = nodeId
            print("\(indent())🔄 Replaced stack top with current node ID")
        }

        depth -= 1
        return .skipChildren
    }

    override func visit(_ node: IntegerLiteralExprSyntax) -> SyntaxVisitorContinueKind {
        print("\(indent())🔢 Visiting IntegerLiteralExprSyntax: '\(node.literal.text)'")

        guard let value = Double(node.literal.text) else {
            print("\(indent())⚠️ Failed to parse integer literal")
            return .skipChildren
        }

        let nodeId = createValueNode(value)

        if nodeStack.isEmpty {
            rootNodeId = nodeId
            print("\(indent())👑 Set root node ID: \(nodeId) (value node)")
        } else {
            nodeStack[nodeStack.count - 1] = nodeId
            print("\(indent())🔄 Replaced stack top with value node ID: \(nodeId)")
        }

        return .skipChildren
    }

    override func visit(_ node: FloatLiteralExprSyntax) -> SyntaxVisitorContinueKind {
        print("\(indent())🔢 Visiting FloatLiteralExprSyntax: '\(node.literal.text)'")

        guard let value = Double(node.literal.text) else {
            print("\(indent())⚠️ Failed to parse float literal")
            return .skipChildren
        }

        let nodeId = createValueNode(value)

        if nodeStack.isEmpty {
            rootNodeId = nodeId
            print("\(indent())👑 Set root node ID: \(nodeId) (value node)")
        } else {
            nodeStack[nodeStack.count - 1] = nodeId
            print("\(indent())🔄 Replaced stack top with value node ID: \(nodeId)")
        }

        return .skipChildren
    }

    private func createValueNode(_ value: Double) -> UUID {
        let nodeId = UUID()
        print("\(indent())💎 Creating ValueNode with value: \(value), ID: \(nodeId)")

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
        print("\(indent())✅ Added ValueNode to nodes array (total nodes: \(nodes.count))")
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
        print("\n📝 Building DAG description...")
        print("   Root node ID: \(rootNodeId)")
        print("   Total nodes: \(nodes.count)")

        var result = ""

        func describeNode(_ nodeId: UUID, visited: inout Set<UUID>, depth: Int = 0) -> String {
            let indent = String(repeating: "  ", count: depth)

            guard !visited.contains(nodeId) else {
                print("\(indent)⚠️ Already visited node: \(nodeId)")
                return ""
            }
            visited.insert(nodeId)

            guard let node = nodes.first(where: { $0.nodeId == nodeId }) else {
                print("\(indent)❌ Could not find node: \(nodeId)")
                return "Unknown"
            }

            print("\(indent)📍 Describing node: \(node.kind) (ID: \(nodeId))")

            switch node.kind {
            case .value:
                if case .value(let val) = node.input.input {
                    let desc = "ValueNode(\(Int(val)))"
                    print("\(indent)   -> \(desc)")
                    return desc
                }
                return "ValueNode(?)"

            case .sin:
                if case .incomingEdge(let from) = node.input.input {
                    print("\(indent)   Following edge to upstream: \(from.nodeId)")
                    let upstream = describeNode(from.nodeId, visited: &visited, depth: depth + 1)
                    if !upstream.isEmpty {
                        let desc = "\(upstream) -> SinNode"
                        print("\(indent)   -> \(desc)")
                        return desc
                    }
                }
                return "SinNode"

            case .cos:
                if case .incomingEdge(let from) = node.input.input {
                    print("\(indent)   Following edge to upstream: \(from.nodeId)")
                    let upstream = describeNode(from.nodeId, visited: &visited, depth: depth + 1)
                    if !upstream.isEmpty {
                        let desc = "\(upstream) -> CosNode"
                        print("\(indent)   -> \(desc)")
                        return desc
                    }
                }
                return "CosNode"

            case .sqrt:
                if case .incomingEdge(let from) = node.input.input {
                    print("\(indent)   Following edge to upstream: \(from.nodeId)")
                    let upstream = describeNode(from.nodeId, visited: &visited, depth: depth + 1)
                    if !upstream.isEmpty {
                        let desc = "\(upstream) -> SquareRootNode"
                        print("\(indent)   -> \(desc)")
                        return desc
                    }
                }
                return "SquareRootNode"
            }
        }

        var visited = Set<UUID>()
        result = describeNode(rootNodeId, visited: &visited)
        print("📝 Final description: \(result)")
        return result
    }
}