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
        print("\(indent())📝 Raw node: \(node)")
        print("\(indent())📊 Arguments count: \(node.arguments.count)")
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

        print("\(indent())🔍 Walking arguments first to get child nodes...")
        print("\(indent())📚 Stack BEFORE walking args: \(nodeStack.map { String($0.uuidString.prefix(8)) })")

        walk(node.arguments)

        print("\(indent())📚 Stack AFTER walking args: \(nodeStack.map { String($0.uuidString.prefix(8)) })")

        let inputCoord = InputCoordinate(nodeId: nodeId, portId: 0)
        let outputCoord = OutputCoordinate(nodeId: nodeId, portId: 0)

        let inputValue: InputValue
        if let childNodeId = nodeStack.last {
            let upstreamOutput = OutputCoordinate(nodeId: childNodeId, portId: 0)
            inputValue = .incomingEdge(from: upstreamOutput)
            print("\(indent())🔗 Creating edge from upstream node: \(String(childNodeId.uuidString.prefix(8)))")

            // Replace child with our function node on the stack
            nodeStack[nodeStack.count - 1] = nodeId
            print("\(indent())🔄 Replaced child \(String(childNodeId.uuidString.prefix(8))) with function node \(String(nodeId.uuidString.prefix(8)))")
        } else {
            print("\(indent())❌ No child node found in stack! Stack is empty or has no elements.")
            depth -= 1
            return .skipChildren
        }

        let input = NodeInput(id: inputCoord, input: inputValue)
        let output = NodeOutput(id: outputCoord, value: 0.0)

        let dagNode = DAGNode(
            nodeId: nodeId,
            kind: patchKind,
            inputs: [input],
            output: output
        )

        nodes.append(dagNode)
        print("\(indent())✅ Created DAGNode: \(patchKind) with ID: \(String(nodeId.uuidString.prefix(8)))")

        // Check if this should be the root node (stack should have exactly 1 item - our function node)
        if nodeStack.count == 1 && nodeStack.first == nodeId {
            rootNodeId = nodeId
            print("\(indent())👑 Set root node ID: \(String(nodeId.uuidString.prefix(8)))")
        }

        print("\(indent())📚 Final stack after function creation: \(nodeStack.map { String($0.uuidString.prefix(8)) })")

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
            // This is a standalone value (root of expression)
            rootNodeId = nodeId
            nodeStack.append(nodeId)
            print("\(indent())👑 Set root node ID: \(String(nodeId.uuidString.prefix(8))) (standalone value)")
        } else {
            // This value is an argument - just add it to the stack
            nodeStack.append(nodeId)
            print("\(indent())➕ Added value node to stack: \(String(nodeId.uuidString.prefix(8)))")
        }

        print("\(indent())📚 Final stack after integer literal: \(nodeStack.map { String($0.uuidString.prefix(8)) })")

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
            // This is a standalone value (root of expression)
            rootNodeId = nodeId
            nodeStack.append(nodeId)
            print("\(indent())👑 Set root node ID: \(String(nodeId.uuidString.prefix(8))) (standalone value)")
        } else {
            // This value is an argument - just add it to the stack
            nodeStack.append(nodeId)
            print("\(indent())➕ Added value node to stack: \(String(nodeId.uuidString.prefix(8)))")
        }

        print("\(indent())📚 Final stack after float literal: \(nodeStack.map { String($0.uuidString.prefix(8)) })")

        return .skipChildren
    }

    private func createValueNode(_ value: Double) -> UUID {
        let nodeId = UUID()
        print("\(indent())💎 Creating ValueNode with value: \(value), ID: \(String(nodeId.uuidString.prefix(8)))")

        let inputCoord = InputCoordinate(nodeId: nodeId, portId: 0)
        let outputCoord = OutputCoordinate(nodeId: nodeId, portId: 0)

        let input = NodeInput(id: inputCoord, input: .value(value))
        let output = NodeOutput(id: outputCoord, value: value)

        // Value nodes have one input containing the static value
        let dagNode = DAGNode(
            nodeId: nodeId,
            kind: .value,
            inputs: [input],
            output: output
        )

        nodes.append(dagNode)
        print("\(indent())✅ Added ValueNode to nodes array (total nodes: \(nodes.count))")
        return nodeId
    }

    override func visit(_ node: InfixOperatorExprSyntax) -> SyntaxVisitorContinueKind {
        print("\(indent())⚡ Visiting InfixOperatorExprSyntax")
        print("\(indent())📝 Raw node: \(node)")
        depth += 1

        // InfixOperatorExprSyntax has: leftOperand, operatorOperand (as ExprSyntax), rightOperand
        guard let binaryOp = node.operatorOperand.as(BinaryOperatorExprSyntax.self) else {
            print("\(indent())⚠️ Operator is not a BinaryOperatorExprSyntax")
            depth -= 1
            return .visitChildren
        }

        let operatorText = binaryOp.operator.text
        print("\(indent())🔣 Operator: '\(operatorText)'")

        guard let patchKind = patchKind(from: operatorText) else {
            print("\(indent())⚠️ Unknown operator: '\(operatorText)'")
            depth -= 1
            return .visitChildren
        }

        let nodeId = UUID()
        print("\(indent())🆔 Created node ID: \(nodeId) for \(patchKind)")

        print("\(indent())🔍 Walking left operand...")
        walk(node.leftOperand)

        guard let leftNodeId = nodeStack.last else {
            print("\(indent())❌ No left operand found in stack!")
            depth -= 1
            return .skipChildren
        }
        print("\(indent())👈 Got left operand: \(String(leftNodeId.uuidString.prefix(8)))")

        print("\(indent())🔍 Walking right operand...")
        walk(node.rightOperand)

        guard let rightNodeId = nodeStack.last else {
            print("\(indent())❌ No right operand found in stack!")
            depth -= 1
            return .skipChildren
        }
        print("\(indent())👉 Got right operand: \(String(rightNodeId.uuidString.prefix(8)))")

        // Remove both operands from stack
        nodeStack.removeLast() // right operand
        nodeStack.removeLast() // left operand

        // Create binary operator node with two inputs
        let leftInputCoord = InputCoordinate(nodeId: nodeId, portId: 0)
        let rightInputCoord = InputCoordinate(nodeId: nodeId, portId: 1)
        let outputCoord = OutputCoordinate(nodeId: nodeId, portId: 0)

        let leftUpstreamOutput = OutputCoordinate(nodeId: leftNodeId, portId: 0)
        let rightUpstreamOutput = OutputCoordinate(nodeId: rightNodeId, portId: 0)

        let leftInput = NodeInput(id: leftInputCoord, input: .incomingEdge(from: leftUpstreamOutput))
        let rightInput = NodeInput(id: rightInputCoord, input: .incomingEdge(from: rightUpstreamOutput))
        let output = NodeOutput(id: outputCoord, value: 0.0)

        let dagNode = DAGNode(
            nodeId: nodeId,
            kind: patchKind,
            inputs: [leftInput, rightInput],
            output: output
        )

        nodes.append(dagNode)
        print("\(indent())✅ Created binary DAGNode: \(patchKind) with ID: \(String(nodeId.uuidString.prefix(8)))")

        // Add our node to stack
        nodeStack.append(nodeId)

        // Check if this should be the root node
        if nodeStack.count == 1 {
            rootNodeId = nodeId
            print("\(indent())👑 Set root node ID: \(String(nodeId.uuidString.prefix(8)))")
        }

        print("\(indent())📚 Final stack after infix operation: \(nodeStack.map { String($0.uuidString.prefix(8)) })")

        depth -= 1
        return .skipChildren
    }

    private func patchKind(from functionName: String) -> DAGPatch? {
        switch functionName {
        case "sin": return .sin
        case "cos": return .cos
        case "sqrt": return .sqrt
        case "+": return .add
        case "-": return .subtract
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
                if let firstInput = node.inputs.first,
                   case .value(let val) = firstInput.input {
                    let desc = "ValueNode(\(Int(val)))"
                    print("\(indent)   -> \(desc)")
                    return desc
                }
                return "ValueNode(?)"

            case .sin:
                if let firstInput = node.inputs.first,
                   case .incomingEdge(let from) = firstInput.input {
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
                if let firstInput = node.inputs.first,
                   case .incomingEdge(let from) = firstInput.input {
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
                if let firstInput = node.inputs.first,
                   case .incomingEdge(let from) = firstInput.input {
                    print("\(indent)   Following edge to upstream: \(from.nodeId)")
                    let upstream = describeNode(from.nodeId, visited: &visited, depth: depth + 1)
                    if !upstream.isEmpty {
                        let desc = "\(upstream) -> SquareRootNode"
                        print("\(indent)   -> \(desc)")
                        return desc
                    }
                }
                return "SquareRootNode"

            case .add:
                if node.inputs.count >= 2 {
                    let leftInput = node.inputs[0]
                    let rightInput = node.inputs[1]

                    if case .incomingEdge(let leftFrom) = leftInput.input,
                       case .incomingEdge(let rightFrom) = rightInput.input {
                        let leftOperand = describeNode(leftFrom.nodeId, visited: &visited, depth: depth + 1)
                        let rightOperand = describeNode(rightFrom.nodeId, visited: &visited, depth: depth + 1)

                        if !leftOperand.isEmpty && !rightOperand.isEmpty {
                            let desc = "Add(\(leftOperand), \(rightOperand))"
                            print("\(indent)   -> \(desc)")
                            return desc
                        }
                    }
                }
                return "Add(?)"

            case .subtract:
                if node.inputs.count >= 2 {
                    let leftInput = node.inputs[0]
                    let rightInput = node.inputs[1]

                    if case .incomingEdge(let leftFrom) = leftInput.input,
                       case .incomingEdge(let rightFrom) = rightInput.input {
                        let leftOperand = describeNode(leftFrom.nodeId, visited: &visited, depth: depth + 1)
                        let rightOperand = describeNode(rightFrom.nodeId, visited: &visited, depth: depth + 1)

                        if !leftOperand.isEmpty && !rightOperand.isEmpty {
                            let desc = "Subtract(\(leftOperand), \(rightOperand))"
                            print("\(indent)   -> \(desc)")
                            return desc
                        }
                    }
                }
                return "Subtract(?)"
            }
        }

        var visited = Set<UUID>()
        result = describeNode(rootNodeId, visited: &visited)
        print("📝 Final description: \(result)")
        return result
    }
}
