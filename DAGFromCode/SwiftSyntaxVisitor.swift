//
//  SwiftSyntaxVisitor.swift
//  DAGFromCode
//
//  Created by Christian J Clampitt on 9/25/25.
//

import Foundation
import SwiftSyntax
import SwiftOperators

class ProjectDataBuilderVisitor: SyntaxVisitor {
    private var nodes: [UUID: DAGNodeType] = [:]
    private var views: [PrototypeLayer] = []
    private var viewIndicesById: [UUID: Int] = [:]
    private var processedViewCallIds: Set<SyntaxIdentifier> = []
    private var rootNodeId: UUID?
    private var nodeStack: [UUID] = []
    private var depth: Int = 0
    private var variableValues: [String: DAGValue] = [:]
    private var variableNodes: [String: UUID] = [:]  // Maps variable names to their ValueNode UUIDs
    private var variableExpressions: [String: ExprSyntax] = [:]

    // MARK: - Public Interface

    func buildProjectData() -> ProjectData {
        if let rootId = rootNodeId ?? nodes.keys.first {
            let dag = DAG(nodes: nodes, resultNodeId: rootId)
            return ProjectData(graph: dag, views: views)
        } else {
            return ProjectData(graph: DAG.empty(), views: views)
        }
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
        viewIndicesById[view.nodeId] = views.count - 1
        print("\(indent())✅ Added view to project: \(view.layer.rawValue) (\(String(view.nodeId.uuidString.prefix(8))))")
        print("\(indent())📊 Total views in project: \(views.count)")
    }

    internal func updateView(_ view: PrototypeLayer) {
        guard let index = viewIndicesById[view.nodeId] else {
            print("\(indent())⚠️ Attempted to update unknown view: \(String(view.nodeId.uuidString.prefix(8)))")
            return
        }
        views[index] = view
        print("\(indent())🔁 Updated view at index \(index): \(view.layer.rawValue)")
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

    internal func storeVariable(
        _ name: String,
        value: DAGValue?,
        nodeId: UUID?,
        expression: ExprSyntax?
    ) {
        if let value = value {
            variableValues[name] = value
        } else {
            variableValues.removeValue(forKey: name)
        }

        if let nodeId = nodeId {
            variableNodes[name] = nodeId
        } else {
            variableNodes.removeValue(forKey: name)
        }

        if let expression {
            variableExpressions[name] = expression
        } else {
            variableExpressions.removeValue(forKey: name)
        }

        if let value = value {
            print("\(indent())💾 Stored variable '\(name)' = \(describe(value))")
        } else {
            print("\(indent())💾 Stored variable '\(name)' with unknown literal value")
        }

        if let nodeId = nodeId {
            print("\(indent())🧬 Linked variable '\(name)' to node: \(String(nodeId.uuidString.prefix(8)))")
        } else {
            print("\(indent())⚠️ Variable '\(name)' has no associated node")
        }

        logVariableTable()
    }

    internal func lookupVariable(_ name: String) -> DAGValue? {
        let value = variableValues[name]
        if let value = value {
            print("\(indent())✅ Found variable '\(name)' = \(describe(value))")
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
        let entries = variableValues.map { "\($0.key)=\(describe($0.value))" }.joined(separator: ", ")
        print("\(indent())📚 Variable table now contains: [\(entries)]")
    }

    private func describe(_ value: DAGValue) -> String {
        switch value {
        case .number(let number):
            return number.cleanNumericString
        case .boolean(let bool):
            return bool ? "true" : "false"
        case .color(let color):
            let nameComponent = color.name.map { "\($0) " } ?? ""
            return "\(nameComponent)rgba(\(color.red.cleanNumericString),\(color.green.cleanNumericString),\(color.blue.cleanNumericString),\(color.alpha.cleanNumericString))"
        }
    }

    private func outputValue(for nodeId: UUID) -> DAGValue? {
        guard let node = nodes[nodeId] else {
            return nil
        }

        switch node {
        case .function(let functionNode):
            return functionNode.output.value
        case .layerInput:
            return nil
        }
    }

    private func resolveValue(for input: NodeInput) -> DAGValue? {
        switch input.input {
        case .value(let value):
            return value
        case .incomingEdge(let from):
            guard let upstreamNode = nodes[from.nodeId] else {
                return nil
            }

            switch upstreamNode {
            case .function(let functionNode):
                return functionNode.output.value
            case .layerInput(let layerInputNode):
                return resolveValue(for: layerInputNode.input)
            }
        }
    }

    private func resolveFunctionOutput(
        patch: DAGFunction,
        inputs: [NodeInput]
    ) -> DAGValue? {
        switch patch {
        case .add:
            guard inputs.count >= 2,
                  let lhs = resolveValue(for: inputs[0])?.asNumber,
                  let rhs = resolveValue(for: inputs[1])?.asNumber else {
                return nil
            }
            return .number(lhs + rhs)
        case .subtract:
            guard inputs.count >= 2,
                  let lhs = resolveValue(for: inputs[0])?.asNumber,
                  let rhs = resolveValue(for: inputs[1])?.asNumber else {
                return nil
            }
            return .number(lhs - rhs)
        case .sin:
            guard let value = inputs.first.flatMap({ resolveValue(for: $0)?.asNumber }) else {
                return nil
            }
            return .number(sin(value))
        case .cos:
            guard let value = inputs.first.flatMap({ resolveValue(for: $0)?.asNumber }) else {
                return nil
            }
            return .number(cos(value))
        case .sqrt:
            guard let value = inputs.first.flatMap({ resolveValue(for: $0)?.asNumber }) else {
                return nil
            }
            return .number(sqrt(value))
        case .greaterThan:
            guard inputs.count >= 2,
                  let lhs = resolveValue(for: inputs[0])?.asNumber,
                  let rhs = resolveValue(for: inputs[1])?.asNumber else {
                return nil
            }
            return .boolean(lhs > rhs)
        case .lessThan:
            guard inputs.count >= 2,
                  let lhs = resolveValue(for: inputs[0])?.asNumber,
                  let rhs = resolveValue(for: inputs[1])?.asNumber else {
                return nil
            }
            return .boolean(lhs < rhs)
        case .equal:
            guard inputs.count >= 2,
                  let lhs = resolveValue(for: inputs[0]),
                  let rhs = resolveValue(for: inputs[1]) else {
                return nil
            }
            return .boolean(lhs == rhs)
        case .optionPicker:
            guard inputs.count >= 3,
                  let condition = resolveValue(for: inputs[0])?.asBoolean,
                  let falseValue = resolveValue(for: inputs[1]),
                  let trueValue = resolveValue(for: inputs[2]) else {
                return nil
            }
            return condition ? trueValue : falseValue
        case .rounded:
            guard let value = inputs.first.flatMap({ resolveValue(for: $0)?.asNumber }) else {
                return nil
            }
            return .number(value.rounded())
        case .magnitude:
            guard let value = inputs.first.flatMap({ resolveValue(for: $0)?.asNumber }) else {
                return nil
            }
            return .number(abs(value))
        case .value:
            return inputs.first.flatMap(resolveValue(for:))
        }
    }

    private func ensureNumericOperands(_ nodeIds: [UUID], context: String) -> Bool {
        for nodeId in nodeIds {
            guard let value = outputValue(for: nodeId) else {
                continue
            }

            if case .number = value {
                continue
            }

            print("\(indent())❌ Non-numeric operand encountered while building \(context); got \(describe(value))")
            return false
        }

        return true
    }

    // MARK: - Utility Methods for Creating Nodes

    internal func createValueNode(_ value: DAGValue) -> UUID {
        let valueNode = DAGNodeBuilder.createValueNode(value: value)
        addNode(valueNode)
        print("\(indent())💎 Created ValueNode with value: \(describe(value)), ID: \(String(valueNode.id.uuidString.prefix(8)))")
        return valueNode.id
    }

    internal func createValueNode(_ value: Double) -> UUID {
        createValueNode(.number(value))
    }

    internal func createFunctionNode(
        patch: DAGFunction,
        inputs: [NodeInput],
        outputValue: DAGValue = .number(0.0),
        nodeId: UUID = UUID()
    ) -> UUID {
        let resolvedOutput = resolveFunctionOutput(patch: patch, inputs: inputs) ?? outputValue
        let functionNode = DAGNodeBuilder.createFunctionNode(
            nodeId: nodeId,
            patch: patch,
            inputs: inputs,
            outputValue: resolvedOutput
        )
        addNode(functionNode)
        print("\(indent())🔧 Created \(patch.displayName) node with ID: \(String(functionNode.id.uuidString.prefix(8)))")
        return functionNode.id
    }

    internal func createLayerInputNode(layerInput: PrototypeLayerInputKind, input: NodeInput) -> UUID {
        let nodeId = UUID()
        let normalizedInput = NodeInput(
            id: InputCoordinate(nodeId: nodeId, portId: input.id.portId),
            input: input.input
        )
        let layerInputNode = DAGLayerInputNode(
            nodeId: nodeId,
            layerInput: layerInput,
            input: normalizedInput
        )
        addNode(.layerInput(layerInputNode))
        print("\(indent())🎭 Created \(layerInput.displayName) layer input node with ID: \(String(nodeId.uuidString.prefix(8)))")
        return nodeId
    }

    private func normalizeExpression(_ expression: ExprSyntax) -> ExprSyntax {
        do {
            let folded = try OperatorTable.standardOperators.foldAll(expression)
            if let expr = folded.as(ExprSyntax.self) {
                return expr
            }
        } catch {
            print("\(indent())⚠️ Failed to normalize expression: \(error)")
        }
        return expression
    }

    // MARK: - SwiftUI View Processing

    private struct SwiftUIViewModifierCall {
        let kind: PrototypeLayerInputKind
        let call: FunctionCallExprSyntax
        let memberAccess: MemberAccessExprSyntax
    }

    private struct SwiftUIViewChain {
        let rootKind: PrototypeLayerKind
        let rootCall: FunctionCallExprSyntax
        let modifiers: [SwiftUIViewModifierCall]
        let calls: [FunctionCallExprSyntax]
    }

    private func isTopLevelSwiftUIViewCall(_ node: FunctionCallExprSyntax) -> Bool {
        if let memberAccess = node.parent?.as(MemberAccessExprSyntax.self),
           memberAccess.parent?.is(FunctionCallExprSyntax.self) == true {
            return false
        }
        return true
    }

    private func parseSwiftUIViewChain(from node: FunctionCallExprSyntax) -> SwiftUIViewChain? {
        var modifiers: [SwiftUIViewModifierCall] = []
        var visitedCalls: [FunctionCallExprSyntax] = [node]
        var currentCall: FunctionCallExprSyntax? = node

        while let call = currentCall {
            if let viewKind = detectSwiftUIView(call) {
                if !visitedCalls.contains(where: { $0.id == call.id }) {
                    visitedCalls.append(call)
                }
                let orderedModifiers = Array(modifiers.reversed())
                return SwiftUIViewChain(
                    rootKind: viewKind,
                    rootCall: call,
                    modifiers: orderedModifiers,
                    calls: visitedCalls
                )
            }

            guard let memberAccess = call.calledExpression.as(MemberAccessExprSyntax.self),
                  let modifierKind = detectViewModifier(memberAccess),
                  let baseExpression = memberAccess.base?.as(FunctionCallExprSyntax.self) else {
                return nil
            }

            modifiers.append(
                SwiftUIViewModifierCall(
                    kind: modifierKind,
                    call: call,
                    memberAccess: memberAccess
                )
            )
            if !visitedCalls.contains(where: { $0.id == baseExpression.id }) {
                visitedCalls.append(baseExpression)
            }
            currentCall = baseExpression
        }

        return nil
    }

    private func processSwiftUIViewChain(_ chain: SwiftUIViewChain) {
        let layerId = UUID()
        var activeLayer = createPrototypeLayer(
            nodeId: layerId,
            layerKind: chain.rootKind
        )
        addView(activeLayer)

        for modifier in chain.modifiers {
            let artifacts = makeModifierArtifacts(for: modifier)
            activeLayer = layer(activeLayer, appending: artifacts.modifier)
            updateView(activeLayer)

            if let inputValue = artifacts.inputValue {
                let nodeInput = NodeInput(
                    id: InputCoordinate(nodeId: layerId, portId: 0),
                    input: inputValue
                )
                let layerInputNodeId = createLayerInputNode(
                    layerInput: modifier.kind,
                    input: nodeInput
                )
                setAsRoot(layerInputNodeId)
            }
        }

        for call in chain.calls {
            processedViewCallIds.insert(call.id)
        }
    }

    private func makeModifierArtifacts(
        for modifier: SwiftUIViewModifierCall
    ) -> (modifier: PrototypeLayerModifier, inputValue: InputValue?) {
        let metadata = modifierArgumentMetadata(from: modifier.call.arguments)
        var numericPayloads = metadata.numericPayloads
        let literalPayload = modifier.call.arguments.first.flatMap { evaluateLiteralValue($0.expression) }

        if numericPayloads.isEmpty,
           let computedValue = computeNumericPayload(for: modifier.call.arguments) {
            numericPayloads = [computedValue]
        }

        let protoModifier = createPrototypeLayerModifier(
            kind: modifier.kind,
            argumentDescription: metadata.argumentDescription,
            numericPayloads: numericPayloads,
            typedPayload: literalPayload
        )
        let inputValue = resolveModifierInputValue(
            kind: modifier.kind,
            arguments: modifier.call.arguments,
            numericPayloads: numericPayloads,
            literalPayload: literalPayload
        )
        return (protoModifier, inputValue)
    }

    private func resolveModifierInputValue(
        kind: PrototypeLayerInputKind,
        arguments: LabeledExprListSyntax,
        numericPayloads: [Double],
        literalPayload: DAGValue?
    ) -> InputValue? {
        guard let firstArgument = arguments.first else {
            if kind == .fill {
                print("\(indent())⚠️ .fill modifier missing argument; defaulting to clear color payload")
                return .value(.color(ColorValue(name: "clear", red: 0, green: 0, blue: 0, alpha: 0)))
            }
            return nil
        }

        if let incomingEdge = resolveIncomingEdge(from: firstArgument.expression) {
            return incomingEdge
        }

        if let literalPayload {
            switch kind {
            case .fill:
                if case .color = literalPayload {
                    return .value(literalPayload)
                }
            case .opacity, .scaleEffect:
                if let numeric = literalPayload.asNumber {
                    return .value(.number(numeric))
                }
            }
        }

        if let numeric = numericPayloads.first {
            return .value(.number(numeric))
        }

        if kind == .fill {
            print("\(indent())⚠️ .fill modifier argument unresolved; defaulting to clear color payload")
            return .value(.color(ColorValue(name: "clear", red: 0, green: 0, blue: 0, alpha: 0)))
        }

        return nil
    }

    private func computeNumericPayload(for arguments: LabeledExprListSyntax) -> Double? {
        guard let expression = arguments.first?.expression else {
            return nil
        }
        if let literal = evaluateLiteralValue(expression),
           let numeric = literal.asNumber {
            return numeric
        }

        return evaluateNumericExpression(expression)
    }

    private func evaluateLiteralValue(_ expression: ExprSyntax) -> DAGValue? {
        if let color = evaluateColorExpression(expression) {
            return .color(color)
        }

        if let booleanLiteral = expression.as(BooleanLiteralExprSyntax.self) {
            return .boolean(booleanLiteral.literal.text == "true")
        }

        if let number = evaluateNumericExpression(expression) {
            return .number(number)
        }

        return nil
    }

    private func evaluateColorExpression(_ expression: ExprSyntax) -> ColorValue? {
        if let memberAccess = expression.as(MemberAccessExprSyntax.self),
           let declRef = memberAccess.base?.as(DeclReferenceExprSyntax.self),
           declRef.baseName.text == "Color" {
            let colorName = memberAccess.declName.baseName.text
            if let namedColor = namedColorValue(colorName) {
                return namedColor
            }
        }

        if let functionCall = expression.as(FunctionCallExprSyntax.self),
           let calledExpression = functionCall.calledExpression.as(DeclReferenceExprSyntax.self),
           calledExpression.baseName.text == "Color" {
            if let initializerColor = colorValue(from: functionCall.arguments) {
                return initializerColor
            }
        }

        return nil
    }

    private func colorValue(from arguments: LabeledExprListSyntax) -> ColorValue? {
        var redComponent: Double?
        var greenComponent: Double?
        var blueComponent: Double?
        var alphaComponent: Double = 1.0

        for argument in arguments {
            guard let label = argument.label?.text else {
                continue
            }

            switch label {
            case "red":
                redComponent = evaluateNumericExpression(argument.expression)
            case "green":
                greenComponent = evaluateNumericExpression(argument.expression)
            case "blue":
                blueComponent = evaluateNumericExpression(argument.expression)
            case "opacity", "alpha":
                if let value = evaluateNumericExpression(argument.expression) {
                    alphaComponent = value
                }
            default:
                continue
            }
        }

        guard let red = redComponent,
              let green = greenComponent,
              let blue = blueComponent else {
            return nil
        }

        return ColorValue(name: nil, red: red, green: green, blue: blue, alpha: alphaComponent)
    }

    private func namedColorValue(_ name: String) -> ColorValue? {
        switch name {
        case "red":
            return ColorValue(name: name, red: 1.0, green: 0.0, blue: 0.0)
        case "green":
            return ColorValue(name: name, red: 0.0, green: 1.0, blue: 0.0)
        case "blue":
            return ColorValue(name: name, red: 0.0, green: 0.0, blue: 1.0)
        case "black":
            return ColorValue(name: name, red: 0.0, green: 0.0, blue: 0.0)
        case "white":
            return ColorValue(name: name, red: 1.0, green: 1.0, blue: 1.0)
        case "gray":
            return ColorValue(name: name, red: 0.5, green: 0.5, blue: 0.5)
        case "clear":
            return ColorValue(name: name, red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        default:
            print("\(indent())⚠️ Unhandled Color named literal: \(name)")
            return nil
        }
    }

    private func resolveIncomingEdge(from expression: ExprSyntax) -> InputValue? {
        guard let nodeId = buildNodeId(from: expression) else {
            if let declRef = expression.as(DeclReferenceExprSyntax.self) {
                let variableName = declRef.baseName.text
                if let initializerExpression = variableExpressions[variableName] {
                    print("\(indent())♻️ Attempting rebuild for variable '\(variableName)' using stored initializer")
                    if let rebuiltNodeId = buildNodeId(from: initializerExpression, allowRootMutation: true) {
                        let value = lookupVariable(variableName)
                        storeVariable(
                            variableName,
                            value: value,
                            nodeId: rebuiltNodeId,
                            expression: initializerExpression
                        )
                        let output = OutputCoordinate(nodeId: rebuiltNodeId, portId: 0)
                        return .incomingEdge(from: output)
                    }
                }
            }
            return nil
        }

        let output = OutputCoordinate(nodeId: nodeId, portId: 0)
        return .incomingEdge(from: output)
    }

    @discardableResult
    private func buildNodeId(
        from expression: ExprSyntax,
        allowRootMutation: Bool = false
    ) -> UUID? {
        let originalStackCount = currentNodeStack.count
        let previousRoot = rootNodeId
        print("\(indent())🧱 Building node ID from expression: \(expression)")

        walk(expression)

        guard currentNodeStack.count > originalStackCount,
              let newNodeId = currentNodeStack.last else {
            print("\(indent())❌ Failed to build node ID for expression: \(expression)")
            if !allowRootMutation {
                rootNodeId = previousRoot
            }
            return nil
        }

        let nodesToPop = currentNodeStack.count - originalStackCount
        for _ in 0..<nodesToPop {
            _ = popFromStack()
        }

        if !allowRootMutation {
            rootNodeId = previousRoot
        }

        print("\(indent())✅ Built node ID \(String(newNodeId.uuidString.prefix(8))) for expression: \(expression)")
        return newNodeId
    }

    internal func evaluateNumericExpression(_ expression: ExprSyntax) -> Double? {
        if let floatLiteral = expression.as(FloatLiteralExprSyntax.self),
           let value = Double(floatLiteral.literal.text) {
            return value
        }

        if let integerLiteral = expression.as(IntegerLiteralExprSyntax.self),
           let value = Double(integerLiteral.literal.text) {
            return value
        }

        if let declRef = expression.as(DeclReferenceExprSyntax.self) {
            return lookupVariable(declRef.baseName.text)?.asNumber
        }

        if let tupleExpr = expression.as(TupleExprSyntax.self),
           tupleExpr.elements.count == 1,
           let first = tupleExpr.elements.first {
            return evaluateNumericExpression(first.expression)
        }

        if let prefix = expression.as(PrefixOperatorExprSyntax.self),
           prefix.operator.text == "-",
           let value = evaluateNumericExpression(prefix.expression) {
            return -value
        }

        if let infixExpr = expression.as(InfixOperatorExprSyntax.self),
           let binaryOperator = infixExpr.operator.as(BinaryOperatorExprSyntax.self) {
            guard let leftValue = evaluateNumericExpression(infixExpr.leftOperand),
                  let rightValue = evaluateNumericExpression(infixExpr.rightOperand) else {
                return nil
            }

            switch binaryOperator.operator.text {
            case "+":
                return leftValue + rightValue
            case "-":
                return leftValue - rightValue
            case "*":
                return leftValue * rightValue
            case "/":
                guard rightValue != 0 else { return nil }
                return leftValue / rightValue
            default:
                return nil
            }
        }

        if let sequenceExpr = expression.as(SequenceExprSyntax.self) {
            return evaluateNumericSequence(sequenceExpr)
        }

        return nil
    }

    private func evaluateNumericSequence(_ sequence: SequenceExprSyntax) -> Double? {
        guard let firstOperand = sequence.elements.first,
              let initialValue = evaluateNumericExpression(firstOperand) else {
            return nil
        }

        var result = initialValue
        var iterator = sequence.elements.makeIterator()
        _ = iterator.next() // consume first operand

        while let operatorExpr = iterator.next() {
            guard let binaryOperator = operatorExpr.as(BinaryOperatorExprSyntax.self),
                  let rhsExpr = iterator.next(),
                  let rhsValue = evaluateNumericExpression(rhsExpr) else {
                return nil
            }

            switch binaryOperator.operator.text {
            case "+":
                result += rhsValue
            case "-":
                result -= rhsValue
            case "*":
                result *= rhsValue
            case "/":
                guard rhsValue != 0 else { return nil }
                result /= rhsValue
            default:
                return nil
            }
        }

        return result
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

                    let rawExpression = initializer.value
                    let expression = normalizeExpression(rawExpression)
                    let literalValue = evaluateLiteralValue(expression)
                    let nodeId = buildNodeId(from: expression, allowRootMutation: true)

                    if let nodeId = nodeId {
                        storeVariable(
                            variableName,
                            value: literalValue,
                            nodeId: nodeId,
                            expression: expression
                        )
                    } else if let literalValue {
                        print("\(indent())⚠️ Expression produced literal value but no node; creating value node manually")
                        let createdNodeId = createValueNode(literalValue)
                        storeVariable(
                            variableName,
                            value: literalValue,
                            nodeId: createdNodeId,
                            expression: expression
                        )
                    } else {
                        print("\(indent())⚠️ Unsupported initializer type: \(type(of: expression))")
                        storeVariable(variableName, value: nil, nodeId: nil, expression: expression)
                    }
                } else {
                    print("\(indent())⚠️ Variable '\(variableName)' has no initializer")
                    storeVariable(variableName, value: nil, nodeId: nil, expression: nil)
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

        if referenceName == "Color" {
            print("\(indent())ℹ️ Treating 'Color' as type reference")
            return .visitChildren
        }

        // Check if this is a variable reference (not a function name)
        // We can distinguish by checking if it's being used as a function call's calledExpression
        let isInFunctionCall = node.parent?.is(FunctionCallExprSyntax.self) == true

        if !isInFunctionCall {
            print("\(indent())🔍 Looking up variable '\(referenceName)' in table")

            if let value = lookupVariable(referenceName) {
                // Look up the existing ValueNode for this variable instead of creating a new one
                var nodeId: UUID
                if let existingNodeId = variableNodes[referenceName] {
                    print("\(indent())🎯 Reusing existing ValueNode for variable '\(referenceName)': \(String(existingNodeId.uuidString.prefix(8)))")
                    nodeId = existingNodeId
                } else {
                    if let expression = variableExpressions[referenceName],
                       let rebuiltNodeId = buildNodeId(from: expression, allowRootMutation: true) {
                        print("\(indent())♻️ Rebuilt DAG node for variable '\(referenceName)': \(String(rebuiltNodeId.uuidString.prefix(8)))")
                        storeVariable(referenceName, value: value, nodeId: rebuiltNodeId, expression: expression)
                        nodeId = rebuiltNodeId
                    } else {
                        print("\(indent())⚠️ Variable '\(referenceName)' not found in node registry, creating new ValueNode")
                        let createdNodeId = createValueNode(value)
                        storeVariable(
                            referenceName,
                            value: value,
                            nodeId: createdNodeId,
                            expression: variableExpressions[referenceName]
                        )
                        nodeId = createdNodeId
                    }
                }

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

        let nodeId = createValueNode(.number(value))

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

        let nodeId = createValueNode(.number(value))

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

        let value = node.literal.text == "true"
        let dagValue = DAGValue.boolean(value)
        print("\(indent())💎 Boolean literal value: \(value)")

        let nodeId = createValueNode(dagValue)

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

        let operandContext = "operator '\(operatorText)'"
        guard ensureNumericOperands([leftNodeId, rightNodeId], context: operandContext) else {
            return .skipChildren
        }

        let defaultOutput: DAGValue
        switch patchKind {
        case .add, .subtract:
            defaultOutput = .number(0.0)
        case .greaterThan, .lessThan, .equal:
            defaultOutput = .boolean(false)
        default:
            defaultOutput = .number(0.0)
        }

        let functionNodeId = createFunctionNode(
            patch: patchKind,
            inputs: [leftInput, rightInput],
            outputValue: defaultOutput,
            nodeId: nodeId
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

        if let colorValue = evaluateColorExpression(ExprSyntax(node)) {
            print("\(indent())🎨 Detected color literal via member access")
            let nodeId = createValueNode(.color(colorValue))

            if currentNodeStack.isEmpty {
                currentNodeStack = [nodeId]
                setAsRootIfAppropriate(nodeId)
            } else {
                pushToStack(nodeId)
            }

            return .skipChildren
        }

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

        guard ensureNumericOperands([baseNodeId], context: "method '\(memberName)' call") else {
            return .skipChildren
        }

        let methodNodeId = createFunctionNode(
            patch: patchKind,
            inputs: [input],
            outputValue: .number(0.0),
            nodeId: nodeId
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
        defer { decreaseDepth() }

        if processedViewCallIds.contains(node.id) {
            print("\(indent())ℹ️ Function call already processed as part of SwiftUI chain")
            return .skipChildren
        }

        if let chain = parseSwiftUIViewChain(from: node),
           isTopLevelSwiftUIViewCall(node) {
            print("\(indent())🎨 Detected SwiftUI view chain with root '\(chain.rootKind.rawValue)' and \(chain.modifiers.count) modifier(s)")
            processSwiftUIViewChain(chain)
            return .skipChildren
        }

        if let colorValue = evaluateColorExpression(ExprSyntax(node)) {
            print("\(indent())🎨 Detected color literal via initializer")
            let nodeId = createValueNode(.color(colorValue))

            if currentNodeStack.isEmpty {
                currentNodeStack = [nodeId]
                setAsRootIfAppropriate(nodeId)
            } else {
                pushToStack(nodeId)
            }

            return .skipChildren
        }

        guard let declRef = node.calledExpression.as(DeclReferenceExprSyntax.self) else {
            print("\(indent())⚠️ Failed to cast calledExpression to DeclReferenceExprSyntax")
            return .visitChildren
        }

        let functionName = declRef.baseName.text
        print("\(indent())📌 Function name: '\(functionName)'")

        guard let patchKind = patchKind(from: functionName) else {
            print("\(indent())⚠️ Unknown function: '\(functionName)'")
            return .visitChildren
        }

        print("\(indent())🔍 Walking arguments first to get child nodes...")
        let stackBefore = currentNodeStack.map { String($0.uuidString.prefix(8)) }
        print("\(indent())📚 Stack BEFORE walking args: \(stackBefore)")

        walk(node.arguments)

        let stackAfter = currentNodeStack.map { String($0.uuidString.prefix(8)) }
        print("\(indent())📚 Stack AFTER walking args: \(stackAfter)")

        guard let childNodeId = currentNodeStack.last else {
            print("\(indent())❌ No child node found in stack! Stack is empty or has no elements.")
            return .skipChildren
        }

        let nodeId = UUID()
        let inputCoord = InputCoordinate(nodeId: nodeId, portId: 0)
        let upstreamOutput = OutputCoordinate(nodeId: childNodeId, portId: 0)
        let inputValue = NodeInput(id: inputCoord, input: .incomingEdge(from: upstreamOutput))

        guard ensureNumericOperands([childNodeId], context: "function '\(functionName)' call") else {
            return .skipChildren
        }

        let functionNodeId = createFunctionNode(
            patch: patchKind,
            inputs: [inputValue],
            outputValue: .number(0.0),
            nodeId: nodeId
        )

        replaceTopOfStack(with: functionNodeId)

        print("\(indent())🔄 Replaced child \(String(childNodeId.uuidString.prefix(8))) with function node \(String(functionNodeId.uuidString.prefix(8)))")

        setAsRootIfAppropriate(functionNodeId)

        print("\(indent())✅ Created DAGNode: \(patchKind) with ID: \(String(functionNodeId.uuidString.prefix(8)))")

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

        if let conditionValue = outputValue(for: conditionNodeId),
           case .boolean = conditionValue {
            // ok
        } else {
            print("\(indent())❌ Ternary condition does not resolve to a boolean value")
            return .skipChildren
        }

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

        let pickerOutput = outputValue(for: trueValueNodeId) ?? .number(0.0)

        let optionPickerNodeId = createFunctionNode(
            patch: .optionPicker,
            inputs: [conditionInput, falseInput, trueInput],
            outputValue: pickerOutput,
            nodeId: nodeId
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

        if let conditionValue = outputValue(for: conditionNodeId),
           case .boolean = conditionValue {
            // ok
        } else {
            print("\(indent())❌ If condition does not resolve to a boolean value")
            return .skipChildren
        }

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

        let pickerOutput = outputValue(for: trueValueNodeId) ?? .number(0.0)

        let optionPickerNodeId = createFunctionNode(
            patch: .optionPicker,
            inputs: [conditionInput, falseInput, trueInput],
            outputValue: pickerOutput,
            nodeId: nodeId
        )

        // Add to stack
        pushToStack(optionPickerNodeId)
        setAsRoot(optionPickerNodeId)

        print("\(indent())✅ Created OptionPicker DAGNode from if-else: \(String(optionPickerNodeId.uuidString.prefix(8)))")

        return .skipChildren
    }
}
