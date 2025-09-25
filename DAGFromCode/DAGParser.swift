//
//  DAGParser.swift
//  DAGFromCode
//
//  Created by Christian J Clampitt on 9/24/25.
//

import Foundation
import SwiftSyntax
import SwiftParser
import SwiftOperators

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
            print("🔍 Analyzing statement.item type: \(type(of: statement.item))")
            print("🔍 Statement.item content: \(statement.item)")

            // Check what the actual item is by trying all possible cases
            switch statement.item {
            case let .expr(expr):
                print("🔍 Found .expr case with type: \(type(of: expr))")
                if expr.is(IfExprSyntax.self) {
                    print("🎯 Statement is IfExprSyntax (if expression)")
                } else {
                    print("🎯 Statement is ExprSyntax (other expression type: \(type(of: expr)))")
                }
                expressionStatement = statement
            case let .decl(decl):
                print("🔍 Found .decl case with type: \(type(of: decl))")
                if decl.is(VariableDeclSyntax.self) {
                    print("🎯 Statement is VariableDeclSyntax")
                    variableStatements.append(statement)
                } else {
                    print("🎯 Statement is other DeclSyntax: \(type(of: decl))")
                }
            case let .stmt(stmt):
                print("🔍 Found .stmt case with type: \(type(of: stmt))")
                print("🔍 Statement content: \(stmt)")

                // Check if this statement contains an IfExprSyntax that can be treated as an expression
                if let ifExpr = stmt.as(IfExprSyntax.self) {
                    print("🔍 Direct cast: This .stmt is an IfExprSyntax - treating as expression")
                    expressionStatement = statement
                } else {
                    // Check if it's an ExpressionStmtSyntax wrapping an expression
                    print("🔍 Checking for statement wrappers...")

                    // Try different statement wrapper types
                    if let exprStmt = stmt.as(ExpressionStmtSyntax.self) {
                        print("🔍 Found ExpressionStmtSyntax wrapper")
                        if exprStmt.expression.is(IfExprSyntax.self) {
                            print("🔍 ExpressionStmtSyntax contains IfExprSyntax - treating as expression")
                            expressionStatement = statement
                        } else {
                            print("⚠️ ExpressionStmtSyntax does not contain IfExprSyntax: \(type(of: exprStmt.expression))")
                        }
                    } else {
                        print("⚠️ Statement (not expression) type: \(type(of: stmt))")
                    }
                }
            @unknown default:
                print("⚠️ Unknown CodeBlockItemSyntax.Item case: \(statement.item)")
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

        if let exprStatement = expressionStatement {
            print("⏯ Now processing final expression...")
            // Extract the actual ExprSyntax from the CodeBlockItemSyntax.Item
            switch exprStatement.item {
            case let .expr(foundExpr):
                print("✅ Successfully extracted ExprSyntax from .expr case")
                expr = foundExpr
            case let .stmt(stmt):
                // Handle statements that contain IfExprSyntax
                if let ifExpr = stmt.as(IfExprSyntax.self) {
                    print("✅ Successfully extracted IfExprSyntax from .stmt case (direct)")
                    expr = ExprSyntax(ifExpr)
                } else if let exprStmt = stmt.as(ExpressionStmtSyntax.self) {
                    if let ifExpr = exprStmt.expression.as(IfExprSyntax.self) {
                        print("✅ Successfully extracted IfExprSyntax from ExpressionStmtSyntax wrapper")
                        expr = ExprSyntax(ifExpr)
                    } else {
                        print("❌ ExpressionStmtSyntax does not contain IfExprSyntax")
                        return nil
                    }
                } else {
                    print("❌ Statement does not contain an IfExprSyntax")
                    return nil
                }
            default:
                print("❌ Expression statement is not a supported case")
                return nil
            }
        } else {
            // Fallback: if no separate expression, try single statement as expression
            guard let firstStatement = sourceFile.statements.first else {
                print("❌ No statements found in source")
                return nil
            }

            switch firstStatement.item {
            case let .expr(foundExpr):
                print("✅ Successfully parsed single statement as ExprSyntax")
                expr = foundExpr
            case let .stmt(stmt):
                // Handle statements that contain IfExprSyntax in fallback case too
                if let ifExpr = stmt.as(IfExprSyntax.self) {
                    print("✅ Successfully parsed IfExprSyntax as expression in fallback (direct)")
                    expr = ExprSyntax(ifExpr)
                } else if let exprStmt = stmt.as(ExpressionStmtSyntax.self) {
                    if let ifExpr = exprStmt.expression.as(IfExprSyntax.self) {
                        print("✅ Successfully parsed IfExprSyntax from ExpressionStmtSyntax in fallback")
                        expr = ExprSyntax(ifExpr)
                    } else {
                        print("❌ ExpressionStmtSyntax does not contain IfExprSyntax in fallback")
                        return nil
                    }
                } else {
                    print("❌ First statement does not contain an IfExprSyntax")
                    return nil
                }
            default:
                print("❌ First statement is not a supported type")
                return nil
            }
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

        // Use SwiftOperators to fold flat sequences into proper tree structures
        print("🔄 Folding expression tree using SwiftOperators...")
        let foldedExpr: ExprSyntax
        do {
            foldedExpr = try OperatorTable.standardOperators.foldAll(expr).as(ExprSyntax.self)!
            print("✅ Expression folded successfully")
            print("📊 Folded expression type: \(type(of: foldedExpr))")
            print("📋 Folded expression: \(foldedExpr)")
        } catch {
            print("❌ Failed to fold expression: \(error)")
            print("⚠️ Falling back to original expression")
            foldedExpr = expr
        }

        print("🚶 Starting syntax tree walk...")
        visitor.walk(foldedExpr)

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

        // With SwiftOperators, most sequences should be folded into proper tree structures.
        // This visitor now only handles true sequences that couldn't be folded.
        print("\(indent())⚠️ Unfolded SequenceExprSyntax - processing as simple sequence")

        return .visitChildren
    }

    override func visit(_ node: InfixOperatorExprSyntax) -> SyntaxVisitorContinueKind {
        print("\(indent())⚡ Visiting InfixOperatorExprSyntax: \(node)")

        let operatorText = node.operator.trimmedDescription
        print("\(indent())🔣 Binary operator: '\(operatorText)'")
        print("\(indent())📍 Left operand: \(node.leftOperand)")
        print("\(indent())📍 Right operand: \(node.rightOperand)")

        // Walk operands first
        walk(node.leftOperand)
        walk(node.rightOperand)

        // Now we should have both operands on the stack
        guard nodeStack.count >= 2 else {
            print("\(indent())❌ Not enough operands on stack for binary operation: \(nodeStack.count)")
            return .skipChildren
        }

        // Get operands from stack (right operand is on top)
        let rightNodeId = nodeStack.removeLast()
        let leftNodeId = nodeStack.removeLast()

        print("\(indent())⚡ Processing binary operation: \(String(leftNodeId.uuidString.prefix(8))) \(operatorText) \(String(rightNodeId.uuidString.prefix(8)))")

        // Determine the patch type
        let patchKind: DAGFunction
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
            kind: .patch(patchKind),
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
            kind: .patch(patchKind),
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

    override func visit(_ node: BooleanLiteralExprSyntax) -> SyntaxVisitorContinueKind {
        print("\(indent())🔘 Visiting BooleanLiteralExprSyntax: '\(node.literal.text)'")

        // Convert boolean to double: true -> 1.0, false -> 0.0
        let value: Double = node.literal.text == "true" ? 1.0 : 0.0
        print("\(indent())💎 Boolean literal value: \(value)")

        let nodeId = createValueNode(value)

        if nodeStack.isEmpty {
            // This is a standalone boolean (root of expression)
            rootNodeId = nodeId
            nodeStack.append(nodeId)
            print("\(indent())👑 Set root node ID: \(String(nodeId.uuidString.prefix(8))) (standalone boolean)")
        } else {
            // This boolean is an argument - just add it to the stack
            nodeStack.append(nodeId)
            print("\(indent())➕ Added boolean node to stack: \(String(nodeId.uuidString.prefix(8)))")
        }

        print("\(indent())📚 Final stack after boolean literal: \(nodeStack.map { String($0.uuidString.prefix(8)) })")

        return .skipChildren
    }

    override func visit(_ node: TernaryExprSyntax) -> SyntaxVisitorContinueKind {
        print("\(indent())🔀 Visiting TernaryExprSyntax: \(node)")

        // Walk the three parts in the order they'll be processed
        // We need to process them so they end up on the stack in the right order for our OptionPicker

        // First, walk the condition
        print("\(indent())  🔍 Processing condition: \(node.conditionExpression)")
        walk(node.conditionExpression)

        // Then walk the false value (secondChoice)
        print("\(indent())  ❌ Processing false value: \(node.secondChoice)")
        walk(node.secondChoice)

        // Finally walk the true value (firstChoice)
        print("\(indent())  ✅ Processing true value: \(node.firstChoice)")
        walk(node.firstChoice)

        // Now we should have 3 items on the stack: [condition, falseValue, trueValue]
        guard nodeStack.count >= 3 else {
            print("\(indent())❌ Not enough operands for ternary operation. Stack size: \(nodeStack.count)")
            return .skipChildren
        }

        // Pop the three values from stack (in reverse order since stack is LIFO)
        let trueValueNodeId = nodeStack.removeLast()  // port 2
        let falseValueNodeId = nodeStack.removeLast() // port 1
        let conditionNodeId = nodeStack.removeLast()  // port 0

        print("\(indent())⚡ Processing ternary operation: \(String(conditionNodeId.uuidString.prefix(8))) ? \(String(trueValueNodeId.uuidString.prefix(8))) : \(String(falseValueNodeId.uuidString.prefix(8)))")

        // Create the OptionPicker node
        let nodeId = UUID()
        let conditionInputCoord = InputCoordinate(nodeId: nodeId, portId: 0)
        let falseInputCoord = InputCoordinate(nodeId: nodeId, portId: 1)
        let trueInputCoord = InputCoordinate(nodeId: nodeId, portId: 2)

        let conditionInput = NodeInput(
            id: conditionInputCoord,
            input: .incomingEdge(from: OutputCoordinate(nodeId: conditionNodeId, portId: 0))
        )

        let falseInput = NodeInput(
            id: falseInputCoord,
            input: .incomingEdge(from: OutputCoordinate(nodeId: falseValueNodeId, portId: 0))
        )

        let trueInput = NodeInput(
            id: trueInputCoord,
            input: .incomingEdge(from: OutputCoordinate(nodeId: trueValueNodeId, portId: 0))
        )

        let output = NodeOutput(id: OutputCoordinate(nodeId: nodeId, portId: 0), value: 0.0)

        let dagNode = DAGNode(
            nodeId: nodeId,
            kind: .patch(.optionPicker),
            inputs: [conditionInput, falseInput, trueInput],
            output: output
        )

        nodes.append(dagNode)
        print("\(indent())✅ Created OptionPicker DAGNode: \(String(nodeId.uuidString.prefix(8)))")

        // Set as root and add to stack
        rootNodeId = nodeId
        nodeStack.append(nodeId)

        print("\(indent())👑 Set root node ID: \(String(nodeId.uuidString.prefix(8)))")
        print("\(indent())📚 Final stack after ternary operation: \(nodeStack.map { String($0.uuidString.prefix(8)) })")

        return .skipChildren
    }

    override func visit(_ node: IfExprSyntax) -> SyntaxVisitorContinueKind {
        print("\(indent())🔄 Visiting IfExprSyntax: \(node)")

        // Extract condition - should be first item in conditions array
        guard let condition = node.conditions.first else {
            print("\(indent())❌ No condition found in if statement")
            return .skipChildren
        }

        // Process condition
        print("\(indent())  🔍 Processing if condition: \(condition)")
        walk(condition)

        // Process else body (false value)
        if let elseBody = node.elseBody {
            print("\(indent())  ❌ Processing else body: \(elseBody)")
            walkCodeBlock(elseBody)
        } else {
            print("\(indent())❌ No else clause found - if-else is required for DAG")
            return .skipChildren
        }

        // Process if body (true value)
        print("\(indent())  ✅ Processing if body: \(node.body)")
        walkCodeBlock(node.body)

        // Now we should have 3 items on the stack: [condition, falseValue, trueValue]
        guard nodeStack.count >= 3 else {
            print("\(indent())❌ Not enough operands for if-else operation. Stack size: \(nodeStack.count)")
            return .skipChildren
        }

        // Pop the three values from stack (in reverse order since stack is LIFO)
        let trueValueNodeId = nodeStack.removeLast()  // port 2
        let falseValueNodeId = nodeStack.removeLast() // port 1
        let conditionNodeId = nodeStack.removeLast()  // port 0

        print("\(indent())⚡ Processing if-else operation: if \(String(conditionNodeId.uuidString.prefix(8))) { \(String(trueValueNodeId.uuidString.prefix(8))) } else { \(String(falseValueNodeId.uuidString.prefix(8))) }")

        // Create the OptionPicker node (same logic as ternary)
        let nodeId = UUID()
        let conditionInputCoord = InputCoordinate(nodeId: nodeId, portId: 0)
        let falseInputCoord = InputCoordinate(nodeId: nodeId, portId: 1)
        let trueInputCoord = InputCoordinate(nodeId: nodeId, portId: 2)

        let conditionInput = NodeInput(
            id: conditionInputCoord,
            input: .incomingEdge(from: OutputCoordinate(nodeId: conditionNodeId, portId: 0))
        )

        let falseInput = NodeInput(
            id: falseInputCoord,
            input: .incomingEdge(from: OutputCoordinate(nodeId: falseValueNodeId, portId: 0))
        )

        let trueInput = NodeInput(
            id: trueInputCoord,
            input: .incomingEdge(from: OutputCoordinate(nodeId: trueValueNodeId, portId: 0))
        )

        let output = NodeOutput(id: OutputCoordinate(nodeId: nodeId, portId: 0), value: 0.0)

        let dagNode = DAGNode(
            nodeId: nodeId,
            kind: .patch(.optionPicker),
            inputs: [conditionInput, falseInput, trueInput],
            output: output
        )

        nodes.append(dagNode)
        print("\(indent())✅ Created OptionPicker DAGNode from if-else: \(String(nodeId.uuidString.prefix(8)))")

        // Set as root and add to stack
        rootNodeId = nodeId
        nodeStack.append(nodeId)

        print("\(indent())👑 Set root node ID: \(String(nodeId.uuidString.prefix(8)))")
        print("\(indent())📚 Final stack after if-else operation: \(nodeStack.map { String($0.uuidString.prefix(8)) })")

        return .skipChildren
    }

    override func visit(_ node: MemberAccessExprSyntax) -> SyntaxVisitorContinueKind {
        print("\(indent())🔗 Visiting MemberAccessExprSyntax: \(node)")

        // Get method name using the correct non-deprecated API
        let memberName = node.declName.baseName.text
        print("\(indent())📌 Method name: '\(memberName)'")

        // Check if this is a supported Double method
        guard let patchKind = methodPatchKind(from: memberName) else {
            print("\(indent())⚠️ Unsupported method: '\(memberName)'")
            return .visitChildren
        }

        // Walk the base expression (the object the method is called on) - handle optional base
        guard let base = node.base else {
            print("\(indent())❌ No base expression found for member access")
            return .skipChildren
        }

        print("\(indent())🔍 Walking base expression: \(base)")
        walk(base)

        // Now we should have the base value on the stack
        guard let baseNodeId = nodeStack.last else {
            print("\(indent())❌ No base value found on stack for method call")
            return .skipChildren
        }

        print("\(indent())⚡ Processing method call: \(String(baseNodeId.uuidString.prefix(8))).\(memberName)()")

        // Create the method node
        let nodeId = UUID()
        let inputCoord = InputCoordinate(nodeId: nodeId, portId: 0)
        let outputCoord = OutputCoordinate(nodeId: nodeId, portId: 0)

        let upstreamOutput = OutputCoordinate(nodeId: baseNodeId, portId: 0)
        let input = NodeInput(id: inputCoord, input: .incomingEdge(from: upstreamOutput))
        let output = NodeOutput(id: outputCoord, value: 0.0)

        let dagNode = DAGNode(
            nodeId: nodeId,
            kind: .patch(patchKind),
            inputs: [input],
            output: output
        )

        nodes.append(dagNode)
        print("\(indent())✅ Created \(patchKind) DAGNode: \(String(nodeId.uuidString.prefix(8)))")

        // Replace base with our method node on the stack
        nodeStack[nodeStack.count - 1] = nodeId
        print("\(indent())🔄 Replaced base node with method node: \(String(nodeId.uuidString.prefix(8)))")

        // Check if this should be the root node (if we're at the end of the chain)
        if nodeStack.count == 1 {
            rootNodeId = nodeId
            print("\(indent())👑 Set root node ID: \(String(nodeId.uuidString.prefix(8)))")
        }

        print("\(indent())📚 Final stack after method call: \(nodeStack.map { String($0.uuidString.prefix(8)) })")

        return .skipChildren
    }

    // Helper method to extract expression from code block
    private func walkCodeBlock(_ codeBlock: SyntaxProtocol) {
        print("\(indent())🧱 Walking code block: \(codeBlock)")

        // Handle different types of code blocks/statements
        if let codeBlockSyntax = codeBlock.as(CodeBlockSyntax.self) {
            // Extract single expression from code block statements
            if let firstStatement = codeBlockSyntax.statements.first {
                print("\(indent())📝 Processing first statement in code block: \(firstStatement)")
                walk(firstStatement)
            }
        } else {
            // Direct expression (fallback)
            print("\(indent())📝 Processing direct expression: \(codeBlock)")
            walk(codeBlock)
        }
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
            kind: .patch(.value),
            inputs: [input],
            output: output
        )

        nodes.append(dagNode)
        print("\(indent())✅ Added ValueNode to nodes array (total nodes: \(nodes.count))")
        return nodeId
    }


    private func patchKind(from functionName: String) -> DAGFunction? {
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

    private func methodPatchKind(from methodName: String) -> DAGFunction? {
        switch methodName {
        case "rounded": return .rounded
        case "magnitude": return .magnitude
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
            case .patch(let patchKind):
                switch patchKind {
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

            case .rounded:
                return describeUnaryFunction(name: "RoundedNode")

            case .magnitude:
                return describeUnaryFunction(name: "MagnitudeNode")

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
                if node.inputs.count >= 3 {
                    let conditionInput = node.inputs[0]
                    let falseInput = node.inputs[1]
                    let trueInput = node.inputs[2]

                    if case .incomingEdge(let conditionFrom) = conditionInput.input,
                       case .incomingEdge(let falseFrom) = falseInput.input,
                       case .incomingEdge(let trueFrom) = trueInput.input {
                        let conditionOperand = describeNode(conditionFrom.nodeId, visited: &visited, depth: depth + 1)
                        let falseOperand = describeNode(falseFrom.nodeId, visited: &visited, depth: depth + 1)
                        let trueOperand = describeNode(trueFrom.nodeId, visited: &visited, depth: depth + 1)

                        if !conditionOperand.isEmpty && !falseOperand.isEmpty && !trueOperand.isEmpty {
                            let desc = "OptionPicker(\(conditionOperand), \(falseOperand), \(trueOperand))"
                            print("\(indent)   -> \(desc)")
                            return desc
                        }
                    }
                }
                return "OptionPicker(?)"
                }

            case .layer(let layerKind):
                // Handle layer nodes if needed in the future
                return "Layer(\(layerKind))"
            }
        }

        var visited = Set<UUID>()
        result = describeNode(rootNodeId, visited: &visited)
        print("📝 Final description: \(result)")
        return result
    }
}
