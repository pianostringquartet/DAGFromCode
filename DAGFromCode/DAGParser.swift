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

        print("📋 Found \(sourceFile.statements.count) statements in source file")

        // Log each statement for debugging
        for (index, statement) in sourceFile.statements.enumerated() {
            print("📝 Statement \(index): \(type(of: statement.item)) - \(statement.item)")
        }

        let visitor = DAGBuilderVisitor(viewMode: .sourceAccurate)

        // Process variable declarations first
        var variableStatements: [CodeBlockItemSyntax] = []
        var expressionStatement: CodeBlockItemSyntax?

        for statement in sourceFile.statements {
            if statement.item.is(VariableDeclSyntax.self) {
                print("🎯 Statement is VariableDeclSyntax")
                variableStatements.append(statement)
            } else if statement.item.is(ExprSyntax.self) {
                print("🎯 Statement is ExprSyntax")
                expressionStatement = statement
            } else {
                print("⚠️ Unknown statement type: \(type(of: statement.item))")
            }
        }

        // Process variable declarations first
        if !variableStatements.isEmpty {
            print("⏯ Processing \(variableStatements.count) variable declaration(s) first...")
            for varStatement in variableStatements {
                visitor.walk(varStatement)
            }
        }

        // Process the final expression
        let expr: ExprSyntax

        if let exprStatement = expressionStatement,
           let foundExpr = exprStatement.item.as(ExprSyntax.self) {
            print("⏯ Now processing final expression...")
            print("✅ Successfully parsed expression from multi-statement source")
            expr = foundExpr
        } else {
            // Fallback: if no separate expression, try single statement as expression
            guard let firstStatement = sourceFile.statements.first,
                  let foundExpr = firstStatement.item.as(ExprSyntax.self) else {
                print("❌ Failed to extract expression from source")
                return nil
            }

            print("✅ Successfully parsed single statement as ExprSyntax")
            expr = foundExpr
        }

        print("📊 Expression type: \(type(of: expr))")
        print("📋 Expression description: \(expr)")

        // Try to identify what kind of expression this is
        if let infixExpr = expr.as(InfixOperatorExprSyntax.self) {
            print("🎯 This IS an InfixOperatorExprSyntax!")
            print("   Left operand: \(infixExpr.leftOperand)")
            print("   Operator: \(infixExpr.operator)")
            print("   Right operand: \(infixExpr.rightOperand)")
        } else {
            print("❌ This is NOT an InfixOperatorExprSyntax")
        }

        if let sequenceExpr = expr.as(SequenceExprSyntax.self) {
            print("🎯 This IS a SequenceExprSyntax!")
            print("   Elements count: \(sequenceExpr.elements.count)")
            for (index, element) in sequenceExpr.elements.enumerated() {
                print("   Element \(index): \(type(of: element)) - \(element)")
            }
        }

        // Debug: Show direct children of the expression
        print("🌳 Expression children:")
        for (index, child) in expr.children(viewMode: .sourceAccurate).enumerated() {
            print("   Child \(index): \(type(of: child)) - \(child)")
        }

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
    private var variableValues: [String: Double] = [:]

    private func indent() -> String {
        String(repeating: "  ", count: depth)
    }

    private func logVariableTable() {
        let entries = variableValues.map { "\($0.key)=\($0.value)" }.joined(separator: ", ")
        print("\(indent())📚 Variable table now contains: [\(entries)]")
    }

    // MARK: - Debug Visitors

    override func visit(_ node: BinaryOperatorExprSyntax) -> SyntaxVisitorContinueKind {
        print("\(indent())⚡ Visiting BinaryOperatorExprSyntax: \(node)")
        // Binary operators are now handled at the SequenceExprSyntax level
        return .visitChildren
    }

    override func visit(_ node: SequenceExprSyntax) -> SyntaxVisitorContinueKind {
        print("\(indent())📋 Visiting SequenceExprSyntax: \(node)")
        print("\(indent())   Elements count: \(node.elements.count)")
        for (index, element) in node.elements.enumerated() {
            print("\(indent())   Element \(index): \(type(of: element)) - \(element)")
        }

        // Handle binary operations (3 elements: left, operator, right)
        if node.elements.count == 3 {
            print("\(indent())🎯 Detected binary operation sequence")

            // Walk the left operand first
            let leftOperand = node.elements.first!
            walk(leftOperand)

            // Walk the right operand
            let rightOperand = node.elements.last!
            walk(rightOperand)

            // Now we should have both operands on the stack
            guard nodeStack.count >= 2 else {
                print("\(indent())❌ Not enough operands on stack for binary operation: \(nodeStack.count)")
                return .skipChildren
            }

            // Get the operator from the middle element
            let elementsArray = Array(node.elements)
            let operatorElement = elementsArray[1]
            guard let binaryOpExpr = operatorElement.as(BinaryOperatorExprSyntax.self) else {
                print("\(indent())❌ Middle element is not a BinaryOperatorExprSyntax: \(type(of: operatorElement))")
                return .skipChildren
            }

            let operatorText = binaryOpExpr.operator.text
            print("\(indent())🔣 Binary operator: '\(operatorText)'")

            // Get operands from stack (right operand is on top)
            let rightNodeId = nodeStack.removeLast()
            let leftNodeId = nodeStack.removeLast()

            print("\(indent())⚡ Processing binary operation: \(String(leftNodeId.uuidString.prefix(8))) \(operatorText) \(String(rightNodeId.uuidString.prefix(8)))")

            // Determine the patch type
            let patchKind: DAGPatch
            switch operatorText {
            case "+":
                patchKind = .add
            case "-":
                patchKind = .subtract
            case ">":
                patchKind = .greaterThan
            case "<":
                patchKind = .lessThan
            case "==":
                patchKind = .equal
            default:
                print("\(indent())❌ Unsupported binary operator: \(operatorText)")
                return .skipChildren
            }

            // Create the binary operation node
            let nodeId = UUID()
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

            // Check if this should be the root node (if we're back to 1 item on stack)
            if nodeStack.count == 1 {
                rootNodeId = nodeId
                print("\(indent())👑 Set root node ID: \(String(nodeId.uuidString.prefix(8)))")
            }

            print("\(indent())📚 Final stack after binary operation: \(nodeStack.map { String($0.uuidString.prefix(8)) })")

            return .skipChildren // Don't visit children since we handled them manually
        }

        return .visitChildren
    }

    override func visit(_ node: TokenSyntax) -> SyntaxVisitorContinueKind {
        // Check for operator tokens by matching the text
        let operatorTokens = ["+", "-", "*", "/", "=", "==", "!=", "<", ">", "<=", ">="]
        if operatorTokens.contains(node.text) {
            print("\(indent())🔣 Visiting Operator Token: '\(node.text)' (kind: \(node.tokenKind))")
        }
        return .visitChildren
    }

    override func visit(_ node: VariableDeclSyntax) -> SyntaxVisitorContinueKind {
        print("\(indent())🔤 Visiting VariableDeclSyntax: \(node)")

        // Log the binding specifier (let or var)
        let bindingType = node.bindingSpecifier.text
        print("\(indent())📌 Declaration type: \(bindingType)")

        depth += 1

        // Process each binding in the declaration
        for (index, binding) in node.bindings.enumerated() {
            print("\(indent())📊 Processing binding \(index): \(binding)")

            // Extract variable name from pattern
            if let identifierPattern = binding.pattern.as(IdentifierPatternSyntax.self) {
                let variableName = identifierPattern.identifier.text
                print("\(indent())📝 Variable name: '\(variableName)'")

                // Extract initial value if present
                if let initializer = binding.initializer {
                    print("\(indent())🔍 Found initializer: \(initializer)")

                    // Extract value from initializer
                    if let literalExpr = initializer.value.as(IntegerLiteralExprSyntax.self) {
                        if let value = Double(literalExpr.literal.text) {
                            print("\(indent())💎 Integer literal value: \(value)")
                            variableValues[variableName] = value
                            print("\(indent())💾 Stored variable '\(variableName)' = \(value)")
                            logVariableTable()
                        } else {
                            print("\(indent())❌ Failed to parse integer literal: '\(literalExpr.literal.text)'")
                        }
                    } else if let literalExpr = initializer.value.as(FloatLiteralExprSyntax.self) {
                        if let value = Double(literalExpr.literal.text) {
                            print("\(indent())💎 Float literal value: \(value)")
                            variableValues[variableName] = value
                            print("\(indent())💾 Stored variable '\(variableName)' = \(value)")
                            logVariableTable()
                        } else {
                            print("\(indent())❌ Failed to parse float literal: '\(literalExpr.literal.text)'")
                        }
                    } else {
                        print("\(indent())⚠️ Unsupported initializer type: \(type(of: initializer.value))")
                    }
                } else {
                    print("\(indent())⚠️ Variable '\(variableName)' has no initializer")
                }
            } else {
                print("\(indent())⚠️ Unsupported pattern type: \(type(of: binding.pattern))")
            }
        }

        depth -= 1
        return .skipChildren // Don't walk children since we processed them manually
    }

    override func visit(_ node: DeclReferenceExprSyntax) -> SyntaxVisitorContinueKind {
        let referenceName = node.baseName.text
        print("\(indent())🔗 Visiting DeclReferenceExprSyntax: '\(referenceName)'")

        // Check if this is a variable reference (not a function name)
        // We can distinguish by checking if it's being used as a function call's calledExpression
        let isInFunctionCall = node.parent?.is(FunctionCallExprSyntax.self) == true

        if !isInFunctionCall {
            print("\(indent())🔍 Looking up variable '\(referenceName)' in table")

            if let value = variableValues[referenceName] {
                print("\(indent())✅ Found variable '\(referenceName)' = \(value)")
                print("\(indent())🎯 Creating ValueNode for variable '\(referenceName)' with value \(value)")

                // Create a ValueNode for this variable reference
                let nodeId = createValueNode(value)

                if nodeStack.isEmpty {
                    // This is a standalone variable reference (root of expression)
                    rootNodeId = nodeId
                    nodeStack.append(nodeId)
                    print("\(indent())👑 Set root node ID: \(String(nodeId.uuidString.prefix(8))) (standalone variable)")
                } else {
                    // This variable reference is part of a larger expression
                    nodeStack.append(nodeId)
                    print("\(indent())➕ Added variable node to stack: \(String(nodeId.uuidString.prefix(8)))")
                }

                print("\(indent())📚 Final stack after variable reference: \(nodeStack.map { String($0.uuidString.prefix(8)) })")

                return .skipChildren
            } else {
                print("\(indent())❌ Variable '\(referenceName)' not found in table")
                logVariableTable()
                return .visitChildren
            }
        } else {
            print("\(indent())🎯 This is a function name reference, not a variable")
            return .visitChildren
        }
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


    private func patchKind(from functionName: String) -> DAGPatch? {
        switch functionName {
        case "sin": return .sin
        case "cos": return .cos
        case "sqrt": return .sqrt
        case "+": return .add
        case "-": return .subtract
        case ">": return .greaterThan
        case "<": return .lessThan
        case "==": return .equal
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

            func describeUnaryFunction(name: String) -> String {
                if let firstInput = node.inputs.first,
                   case .incomingEdge(let from) = firstInput.input {
                    print("\(indent)   Following edge to upstream: \(from.nodeId)")
                    let upstream = describeNode(from.nodeId, visited: &visited, depth: depth + 1)
                    if !upstream.isEmpty {
                        let desc = "\(upstream) -> \(name)"
                        print("\(indent)   -> \(desc)")
                        return desc
                    }
                }
                return name
            }

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
                return describeUnaryFunction(name: "SinNode")

            case .cos:
                return describeUnaryFunction(name: "CosNode")

            case .sqrt:
                return describeUnaryFunction(name: "SquareRootNode")

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

            case .greaterThan:
                if node.inputs.count >= 2 {
                    let leftInput = node.inputs[0]
                    let rightInput = node.inputs[1]

                    if case .incomingEdge(let leftFrom) = leftInput.input,
                       case .incomingEdge(let rightFrom) = rightInput.input {
                        let leftOperand = describeNode(leftFrom.nodeId, visited: &visited, depth: depth + 1)
                        let rightOperand = describeNode(rightFrom.nodeId, visited: &visited, depth: depth + 1)

                        if !leftOperand.isEmpty && !rightOperand.isEmpty {
                            let desc = "GreaterThan(\(leftOperand), \(rightOperand))"
                            print("\(indent)   -> \(desc)")
                            return desc
                        }
                    }
                }
                return "GreaterThan(?)"

            case .lessThan:
                if node.inputs.count >= 2 {
                    let leftInput = node.inputs[0]
                    let rightInput = node.inputs[1]

                    if case .incomingEdge(let leftFrom) = leftInput.input,
                       case .incomingEdge(let rightFrom) = rightInput.input {
                        let leftOperand = describeNode(leftFrom.nodeId, visited: &visited, depth: depth + 1)
                        let rightOperand = describeNode(rightFrom.nodeId, visited: &visited, depth: depth + 1)

                        if !leftOperand.isEmpty && !rightOperand.isEmpty {
                            let desc = "LessThan(\(leftOperand), \(rightOperand))"
                            print("\(indent)   -> \(desc)")
                            return desc
                        }
                    }
                }
                return "LessThan(?)"

            case .equal:
                if node.inputs.count >= 2 {
                    let leftInput = node.inputs[0]
                    let rightInput = node.inputs[1]

                    if case .incomingEdge(let leftFrom) = leftInput.input,
                       case .incomingEdge(let rightFrom) = rightInput.input {
                        let leftOperand = describeNode(leftFrom.nodeId, visited: &visited, depth: depth + 1)
                        let rightOperand = describeNode(rightFrom.nodeId, visited: &visited, depth: depth + 1)

                        if !leftOperand.isEmpty && !rightOperand.isEmpty {
                            let desc = "Equal(\(leftOperand), \(rightOperand))"
                            print("\(indent)   -> \(desc)")
                            return desc
                        }
                    }
                }
                return "Equal(?)"

            case .optionPicker:
                return "OptionPicker(?)"
            }
        }

        var visited = Set<UUID>()
        result = describeNode(rootNodeId, visited: &visited)
        print("📝 Final description: \(result)")
        return result
    }
}
