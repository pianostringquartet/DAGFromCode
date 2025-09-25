//
//  SwiftSyntaxVisitor.swift
//  DAGFromCode
//
//  Created by Christian J Clampitt on 9/25/25.
//

import Foundation
import SwiftSyntax

class ProjectDataBuilderVisitor: SyntaxVisitor {
    private var nodes: [UUID: DAGNodeType] = [:]
    private var views: [PrototypeLayer] = []
    private var rootNodeId: UUID?
    private var nodeStack: [UUID] = []
    private var depth: Int = 0
    private var variableValues: [String: Double] = [:]

    // MARK: - Public Interface

    func buildProjectData() -> ProjectData {
        guard let rootId = rootNodeId else {
            return ProjectData.empty()
        }
        let dag = DAG(nodes: nodes, rootNodeId: rootId)
        return ProjectData(graph: dag, views: views)
    }

    func getRootNode() -> DAGNodeType? {
        guard let rootId = rootNodeId else { return nil }
        return nodes[rootId]
    }

    // MARK: - Internal Node Management

    internal func addNode(_ node: DAGNodeType) {
        nodes[node.id] = node
        print("\(indent())✅ Added node to project: \(node.displayName) (\(String(node.id.uuidString.prefix(8))))")
        print("\(indent())📊 Total nodes in project: \(nodes.count)")
    }

    internal func addView(_ view: PrototypeLayer) {
        views.append(view)
        print("\(indent())✅ Added view to project: \(view.layer.rawValue) (\(String(view.nodeId.uuidString.prefix(8))))")
        print("\(indent())📊 Total views in project: \(views.count)")
    }

    // MARK: - Stack Management

    internal var currentNodeStack: [UUID] {
        get { nodeStack }
        set { nodeStack = newValue }
    }

    internal func pushToStack(_ nodeId: UUID) {
        nodeStack.append(nodeId)
        print("\(indent())➕ Added node to stack: \(String(nodeId.uuidString.prefix(8)))")
        print("\(indent())📚 Stack now: \(nodeStack.map { String($0.uuidString.prefix(8)) })")
    }

    internal func popFromStack() -> UUID? {
        guard !nodeStack.isEmpty else { return nil }
        let nodeId = nodeStack.removeLast()
        print("\(indent())➖ Removed node from stack: \(String(nodeId.uuidString.prefix(8)))")
        print("\(indent())📚 Stack now: \(nodeStack.map { String($0.uuidString.prefix(8)) })")
        return nodeId
    }

    internal func replaceTopOfStack(with nodeId: UUID) {
        guard !nodeStack.isEmpty else {
            pushToStack(nodeId)
            return
        }
        let oldNodeId = nodeStack[nodeStack.count - 1]
        nodeStack[nodeStack.count - 1] = nodeId
        print("\(indent())🔄 Replaced top of stack \(String(oldNodeId.uuidString.prefix(8))) with \(String(nodeId.uuidString.prefix(8)))")
        print("\(indent())📚 Stack now: \(nodeStack.map { String($0.uuidString.prefix(8)) })")
    }

    internal func setAsRootIfAppropriate(_ nodeId: UUID) {
        if nodeStack.count == 1 && nodeStack.first == nodeId {
            rootNodeId = nodeId
            print("\(indent())👑 Set root node ID: \(String(nodeId.uuidString.prefix(8)))")
        }
    }

    internal func setAsRoot(_ nodeId: UUID) {
        rootNodeId = nodeId
        print("\(indent())👑 Set root node ID: \(String(nodeId.uuidString.prefix(8)))")
    }

    // MARK: - Variable Management

    internal func storeVariable(_ name: String, value: Double) {
        variableValues[name] = value
        print("\(indent())💾 Stored variable '\(name)' = \(value)")
        logVariableTable()
    }

    internal func lookupVariable(_ name: String) -> Double? {
        let value = variableValues[name]
        if let value = value {
            print("\(indent())✅ Found variable '\(name)' = \(value)")
        } else {
            print("\(indent())❌ Variable '\(name)' not found in table")
            logVariableTable()
        }
        return value
    }

    // MARK: - Debugging and Logging

    internal func indent() -> String {
        String(repeating: "  ", count: depth)
    }

    internal var currentDepth: Int {
        get { depth }
        set { depth = newValue }
    }

    internal func increaseDepth() {
        depth += 1
    }

    internal func decreaseDepth() {
        depth -= 1
    }

    private func logVariableTable() {
        let entries = variableValues.map { "\($0.key)=\($0.value)" }.joined(separator: ", ")
        print("\(indent())📚 Variable table now contains: [\(entries)]")
    }

    // MARK: - Utility Methods for Creating Nodes

    internal func createValueNode(_ value: Double) -> UUID {
        let valueNode = DAGNodeBuilder.createValueNode(value: value)
        addNode(valueNode)
        print("\(indent())💎 Created ValueNode with value: \(value), ID: \(String(valueNode.id.uuidString.prefix(8)))")
        return valueNode.id
    }

    internal func createFunctionNode(patch: DAGFunction, inputs: [NodeInput], outputValue: Double = 0.0) -> UUID {
        let functionNode = DAGNodeBuilder.createFunctionNode(
            patch: patch,
            inputs: inputs,
            outputValue: outputValue
        )
        addNode(functionNode)
        print("\(indent())🔧 Created \(patch.displayName) node with ID: \(String(functionNode.id.uuidString.prefix(8)))")
        return functionNode.id
    }

    internal func createLayerInputNode(layerInput: PrototypeLayerInputKind, input: NodeInput) -> UUID {
        let layerInputNode = DAGNodeBuilder.createLayerInputNode(
            layerInput: layerInput,
            input: input
        )
        addNode(layerInputNode)
        print("\(indent())🎭 Created \(layerInput.displayName) layer input node with ID: \(String(layerInputNode.id.uuidString.prefix(8)))")
        return layerInputNode.id
    }

    // MARK: - Helper Methods for Parsing

    internal func patchKind(from functionName: String) -> DAGFunction? {
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

    internal func methodPatchKind(from methodName: String) -> DAGFunction? {
        switch methodName {
        case "rounded": return .rounded
        case "magnitude": return .magnitude
        default: return nil
        }
    }

    // MARK: - Helper for Walking Code Blocks

    internal func walkCodeBlock(_ codeBlock: SyntaxProtocol) {
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

    // MARK: - Basic Debug Visitors

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

    override func visit(_ node: TokenSyntax) -> SyntaxVisitorContinueKind {
        // Check for operator tokens by matching the text
        let operatorTokens = ["+", "-", "*", "/", "=", "==", "!=", "<", ">", "<=", ">="]
        if operatorTokens.contains(node.text) {
            print("\(indent())🔣 Visiting Operator Token: '\(node.text)' (kind: \(node.tokenKind))")
        }
        return .visitChildren
    }

    // MARK: - Variable Declaration Visitor

    override func visit(_ node: VariableDeclSyntax) -> SyntaxVisitorContinueKind {
        print("\(indent())🔤 Visiting VariableDeclSyntax: \(node)")

        // Log the binding specifier (let or var)
        let bindingType = node.bindingSpecifier.text
        print("\(indent())📌 Declaration type: \(bindingType)")

        increaseDepth()

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
                            storeVariable(variableName, value: value)
                        } else {
                            print("\(indent())❌ Failed to parse integer literal: '\(literalExpr.literal.text)'")
                        }
                    } else if let literalExpr = initializer.value.as(FloatLiteralExprSyntax.self) {
                        if let value = Double(literalExpr.literal.text) {
                            print("\(indent())💎 Float literal value: \(value)")
                            storeVariable(variableName, value: value)
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

        decreaseDepth()
        return .skipChildren // Don't walk children since we processed them manually
    }

    // MARK: - Variable Reference Visitor

    override func visit(_ node: DeclReferenceExprSyntax) -> SyntaxVisitorContinueKind {
        let referenceName = node.baseName.text
        print("\(indent())🔗 Visiting DeclReferenceExprSyntax: '\(referenceName)'")

        // Check if this is a variable reference (not a function name)
        // We can distinguish by checking if it's being used as a function call's calledExpression
        let isInFunctionCall = node.parent?.is(FunctionCallExprSyntax.self) == true

        if !isInFunctionCall {
            print("\(indent())🔍 Looking up variable '\(referenceName)' in table")

            if let value = lookupVariable(referenceName) {
                print("\(indent())🎯 Creating ValueNode for variable '\(referenceName)' with value \(value)")

                // Create a ValueNode for this variable reference
                let nodeId = createValueNode(value)

                if currentNodeStack.isEmpty {
                    // This is a standalone variable reference (root of expression)
                    currentNodeStack = [nodeId]
                    setAsRootIfAppropriate(nodeId)
                    print("\(indent())👑 Set root node ID: \(String(nodeId.uuidString.prefix(8))) (standalone variable)")
                } else {
                    // This variable reference is part of a larger expression
                    pushToStack(nodeId)
                }

                return .skipChildren
            } else {
                return .visitChildren
            }
        } else {
            print("\(indent())🎯 This is a function name reference, not a variable")
            return .visitChildren
        }
    }

    // MARK: - Literal Visitors

    override func visit(_ node: IntegerLiteralExprSyntax) -> SyntaxVisitorContinueKind {
        print("\(indent())🔢 Visiting IntegerLiteralExprSyntax: '\(node.literal.text)'")

        guard let value = Double(node.literal.text) else {
            print("\(indent())⚠️ Failed to parse integer literal")
            return .skipChildren
        }

        let nodeId = createValueNode(value)

        if currentNodeStack.isEmpty {
            // This is a standalone value (root of expression)
            currentNodeStack = [nodeId]
            setAsRootIfAppropriate(nodeId)
            print("\(indent())👑 Set root node ID: \(String(nodeId.uuidString.prefix(8))) (standalone value)")
        } else {
            // This value is an argument - just add it to the stack
            pushToStack(nodeId)
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

        if currentNodeStack.isEmpty {
            // This is a standalone value (root of expression)
            currentNodeStack = [nodeId]
            setAsRootIfAppropriate(nodeId)
            print("\(indent())👑 Set root node ID: \(String(nodeId.uuidString.prefix(8))) (standalone value)")
        } else {
            // This value is an argument - just add it to the stack
            pushToStack(nodeId)
        }

        return .skipChildren
    }

    override func visit(_ node: BooleanLiteralExprSyntax) -> SyntaxVisitorContinueKind {
        print("\(indent())🔘 Visiting BooleanLiteralExprSyntax: '\(node.literal.text)'")

        // Convert boolean to double: true -> 1.0, false -> 0.0
        let value: Double = node.literal.text == "true" ? 1.0 : 0.0
        print("\(indent())💎 Boolean literal value: \(value)")

        let nodeId = createValueNode(value)

        if currentNodeStack.isEmpty {
            // This is a standalone boolean (root of expression)
            currentNodeStack = [nodeId]
            setAsRootIfAppropriate(nodeId)
            print("\(indent())👑 Set root node ID: \(String(nodeId.uuidString.prefix(8))) (standalone boolean)")
        } else {
            // This boolean is an argument - just add it to the stack
            pushToStack(nodeId)
        }

        return .skipChildren
    }

    // MARK: - Operator Visitors

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
        guard currentNodeStack.count >= 2 else {
            print("\(indent())❌ Not enough operands on stack for binary operation: \(currentNodeStack.count)")
            return .skipChildren
        }

        // Get operands from stack (right operand is on top)
        let rightNodeId = popFromStack()!
        let leftNodeId = popFromStack()!

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

        let leftUpstreamOutput = OutputCoordinate(nodeId: leftNodeId, portId: 0)
        let rightUpstreamOutput = OutputCoordinate(nodeId: rightNodeId, portId: 0)

        let leftInput = NodeInput(id: leftInputCoord, input: .incomingEdge(from: leftUpstreamOutput))
        let rightInput = NodeInput(id: rightInputCoord, input: .incomingEdge(from: rightUpstreamOutput))

        let functionNodeId = createFunctionNode(
            patch: patchKind,
            inputs: [leftInput, rightInput],
            outputValue: 0.0
        )

        // Add our node to stack
        pushToStack(functionNodeId)

        // Check if this should be the root node (if we're back to 1 item on stack)
        setAsRootIfAppropriate(functionNodeId)

        print("\(indent())✅ Created binary DAGNode: \(patchKind) with ID: \(String(functionNodeId.uuidString.prefix(8)))")

        return .skipChildren // Don't visit children since we handled them manually
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
        guard let baseNodeId = currentNodeStack.last else {
            print("\(indent())❌ No base value found on stack for method call")
            return .skipChildren
        }

        print("\(indent())⚡ Processing method call: \(String(baseNodeId.uuidString.prefix(8))).\(memberName)()")

        // Create the method node
        let nodeId = UUID()
        let inputCoord = InputCoordinate(nodeId: nodeId, portId: 0)

        let upstreamOutput = OutputCoordinate(nodeId: baseNodeId, portId: 0)
        let input = NodeInput(id: inputCoord, input: .incomingEdge(from: upstreamOutput))

        let methodNodeId = createFunctionNode(
            patch: patchKind,
            inputs: [input],
            outputValue: 0.0
        )

        // Replace base with our method node on the stack
        replaceTopOfStack(with: methodNodeId)

        // Check if this should be the root node (if we're at the end of the chain)
        setAsRootIfAppropriate(methodNodeId)

        print("\(indent())✅ Created \(patchKind) DAGNode: \(String(methodNodeId.uuidString.prefix(8)))")

        return .skipChildren
    }

    // MARK: - Control Flow Visitors

    override func visit(_ node: FunctionCallExprSyntax) -> SyntaxVisitorContinueKind {
        print("\(indent())🔵 Visiting FunctionCallExprSyntax")
        print("\(indent())📝 Raw node: \(node)")
        print("\(indent())📊 Arguments count: \(node.arguments.count)")
        increaseDepth()

        guard let declRef = node.calledExpression.as(DeclReferenceExprSyntax.self) else {
            print("\(indent())⚠️ Failed to cast calledExpression to DeclReferenceExprSyntax")
            decreaseDepth()
            return .visitChildren
        }

        let functionName = declRef.baseName.text
        print("\(indent())📌 Function name: '\(functionName)'")

        guard let patchKind = patchKind(from: functionName) else {
            print("\(indent())⚠️ Unknown function: '\(functionName)'")
            decreaseDepth()
            return .visitChildren
        }

        print("\(indent())🔍 Walking arguments first to get child nodes...")
        let stackBefore = currentNodeStack.map { String($0.uuidString.prefix(8)) }
        print("\(indent())📚 Stack BEFORE walking args: \(stackBefore)")

        walk(node.arguments)

        let stackAfter = currentNodeStack.map { String($0.uuidString.prefix(8)) }
        print("\(indent())📚 Stack AFTER walking args: \(stackAfter)")

        let inputCoord = InputCoordinate(nodeId: UUID(), portId: 0)

        let inputValue: InputValue
        if let childNodeId = currentNodeStack.last {
            let upstreamOutput = OutputCoordinate(nodeId: childNodeId, portId: 0)
            inputValue = .incomingEdge(from: upstreamOutput)
            print("\(indent())🔗 Creating edge from upstream node: \(String(childNodeId.uuidString.prefix(8)))")

            // Replace child with our function node on the stack
            let functionNodeId = createFunctionNode(
                patch: patchKind,
                inputs: [NodeInput(id: inputCoord, input: inputValue)],
                outputValue: 0.0
            )

            replaceTopOfStack(with: functionNodeId)

            print("\(indent())🔄 Replaced child \(String(childNodeId.uuidString.prefix(8))) with function node \(String(functionNodeId.uuidString.prefix(8)))")

            // Check if this should be the root node (stack should have exactly 1 item - our function node)
            setAsRootIfAppropriate(functionNodeId)

            print("\(indent())✅ Created DAGNode: \(patchKind) with ID: \(String(functionNodeId.uuidString.prefix(8)))")
        } else {
            print("\(indent())❌ No child node found in stack! Stack is empty or has no elements.")
            decreaseDepth()
            return .skipChildren
        }

        decreaseDepth()
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
        guard currentNodeStack.count >= 3 else {
            print("\(indent())❌ Not enough operands for ternary operation. Stack size: \(currentNodeStack.count)")
            return .skipChildren
        }

        // Pop the three values from stack (in reverse order since stack is LIFO)
        let trueValueNodeId = popFromStack()!  // port 2
        let falseValueNodeId = popFromStack()! // port 1
        let conditionNodeId = popFromStack()!  // port 0

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

        let optionPickerNodeId = createFunctionNode(
            patch: .optionPicker,
            inputs: [conditionInput, falseInput, trueInput],
            outputValue: 0.0
        )

        // Add to stack
        pushToStack(optionPickerNodeId)
        setAsRoot(optionPickerNodeId)

        print("\(indent())✅ Created OptionPicker DAGNode: \(String(optionPickerNodeId.uuidString.prefix(8)))")

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
        guard currentNodeStack.count >= 3 else {
            print("\(indent())❌ Not enough operands for if-else operation. Stack size: \(currentNodeStack.count)")
            return .skipChildren
        }

        // Pop the three values from stack (in reverse order since stack is LIFO)
        let trueValueNodeId = popFromStack()!  // port 2
        let falseValueNodeId = popFromStack()! // port 1
        let conditionNodeId = popFromStack()!  // port 0

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

        let optionPickerNodeId = createFunctionNode(
            patch: .optionPicker,
            inputs: [conditionInput, falseInput, trueInput],
            outputValue: 0.0
        )

        // Add to stack
        pushToStack(optionPickerNodeId)
        setAsRoot(optionPickerNodeId)

        print("\(indent())✅ Created OptionPicker DAGNode from if-else: \(String(optionPickerNodeId.uuidString.prefix(8)))")

        return .skipChildren
    }
}