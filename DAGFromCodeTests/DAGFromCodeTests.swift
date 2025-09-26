//
//  DAGFromCodeTests.swift
//  DAGFromCodeTests
//
//  Created by Christian J Clampitt on 9/24/25.
//

import Testing
import Foundation
@testable import DAGFromCode

// MARK: - Supporting Types for Testing

enum InputSource {
    case value(Double)
    case nodeWithFunction(DAGFunction)
    case valueNode(Double)
}

struct NodeRoleClassification {
    let leafNodes: [DAGFunctionNode]
    let intermediateNodes: [DAGFunctionNode]
    let rootNode: DAGFunctionNode?
}

extension DAGNodeType {
    var functionNode: DAGFunctionNode? {
        if case .function(let node) = self {
            return node
        }
        return nil
    }
}

struct DAGFromCodeTests {

    // MARK: - DAG Analysis Helper Functions

    func findNodesByFunction(_ dag: DAG, function: DAGFunction) -> [DAGFunctionNode] {
        return dag.getAllNodes().compactMap { node in
            if case .function(let functionNode) = node, functionNode.patch == function {
                return functionNode
            }
            return nil
        }
    }

    func findValueNodes(_ dag: DAG, withValue value: Double) -> [DAGFunctionNode] {
        return dag.getAllNodes().compactMap { node in
            if case .function(let functionNode) = node,
               functionNode.patch == .value,
               let firstInput = functionNode.inputs.first,
               case .value(let nodeValue) = firstInput.input,
               nodeValue == value {
                return functionNode
            }
            return nil
        }
    }

    func validateInputSources(_ dag: DAG, nodeId: UUID, expectedSources: [InputSource]) -> Bool {
        guard let node = dag.getNode(by: nodeId),
              case .function(let functionNode) = node else {
            return false
        }

        guard functionNode.inputs.count == expectedSources.count else {
            return false
        }

        for (index, expectedSource) in expectedSources.enumerated() {
            let actualInput = functionNode.inputs[index]

            switch (actualInput.input, expectedSource) {
            case (.value(let actualValue), .value(let expectedValue)):
                if actualValue != expectedValue { return false }

            case (.incomingEdge(let from), .nodeWithFunction(let expectedFunction)):
                guard let sourceNode = dag.getNode(by: from.nodeId),
                      case .function(let sourceFunctionNode) = sourceNode,
                      sourceFunctionNode.patch == expectedFunction else {
                    return false
                }

            case (.incomingEdge(let from), .valueNode(let expectedValue)):
                guard let sourceNode = dag.getNode(by: from.nodeId),
                      case .function(let sourceFunctionNode) = sourceNode,
                      sourceFunctionNode.patch == .value,
                      let firstInput = sourceFunctionNode.inputs.first,
                      case .value(let sourceValue) = firstInput.input,
                      sourceValue == expectedValue else {
                    return false
                }

            default:
                return false
            }
        }

        return true
    }

    func classifyNodesByRole(_ dag: DAG) -> NodeRoleClassification {
        let allNodes = dag.getAllNodes()
        var leafNodes: [DAGFunctionNode] = []
        var intermediateNodes: [DAGFunctionNode] = []
        var rootNode: DAGFunctionNode?

        for node in allNodes {
            if case .function(let functionNode) = node {
                if functionNode.nodeId == dag.resultNodeId {
                    rootNode = functionNode
                } else if functionNode.inputs.allSatisfy({ input in
                    if case .value = input.input { return true }
                    return false
                }) {
                    leafNodes.append(functionNode)
                } else {
                    intermediateNodes.append(functionNode)
                }
            }
        }

        return NodeRoleClassification(leafNodes: leafNodes, intermediateNodes: intermediateNodes, rootNode: rootNode)
    }

    func validateTopologicalOrder(_ dag: DAG) -> Bool {
        let allNodes = dag.getAllNodes()
        var visited: Set<UUID> = []
        var visiting: Set<UUID> = []

        func hasCycle(_ nodeId: UUID) -> Bool {
            if visiting.contains(nodeId) { return true }
            if visited.contains(nodeId) { return false }

            visiting.insert(nodeId)

            guard let node = dag.getNode(by: nodeId) else { return false }

            for input in node.inputs {
                if case .incomingEdge(let from) = input.input {
                    if hasCycle(from.nodeId) { return true }
                }
            }

            visiting.remove(nodeId)
            visited.insert(nodeId)
            return false
        }

        for node in allNodes {
            if !visited.contains(node.id) && hasCycle(node.id) {
                return false
            }
        }

        return true
    }

    func traceExecutionPath(from startNodeId: UUID, in dag: DAG) -> [DAGFunction] {
        var path: [DAGFunction] = []
        var visited: Set<UUID> = []

        func trace(_ nodeId: UUID) {
            guard !visited.contains(nodeId),
                  let node = dag.getNode(by: nodeId),
                  case .function(let functionNode) = node else {
                return
            }

            visited.insert(nodeId)
            path.append(functionNode.patch)

            for input in functionNode.inputs {
                if case .incomingEdge(let from) = input.input {
                    trace(from.nodeId)
                }
            }
        }

        trace(startNodeId)
        return path
    }

    @Test func parseSimpleValue() throws {
        let source = "4"
        let projectData = ProjectDataParser.parse(source)

        #expect(projectData != nil)
        #expect(projectData?.graph.nodes.count == 1)
        #expect(projectData?.description == "ValueNode(4)")

        let rootNode = projectData?.graph.getRootNode()
        switch rootNode {
        case .function(let functionNode):
            #expect(functionNode.patch == .value)
            if let firstInput = functionNode.inputs.first,
               case .value(let val) = firstInput.input {
                #expect(val == 4.0)
            } else {
                Issue.record("Expected value input")
            }
        case .layerInput:
            Issue.record("Expected function node, got layer input")
        case nil:
            Issue.record("Expected root node")
        }
    }

    @Test func parseSingleFunction() throws {
        let source = "sin(1)"
        let projectData = ProjectDataParser.parse(source)

        #expect(projectData != nil)
        #expect(projectData?.graph.nodes.count == 2)
        #expect(projectData?.description == "ValueNode(1) -> SinNode")

        let rootNode = projectData?.graph.getRootNode()
        #expect(rootNode?.patch == .sin)
    }

    @Test func parseNestedFunctions() throws {
        let source = "sin(sqrt(4))"
        let projectData = ProjectDataParser.parse(source)

        #expect(projectData != nil)
        #expect(projectData?.graph.nodes.count == 3)
        #expect(projectData?.description == "ValueNode(4) -> SquareRootNode -> SinNode")

        let rootNode = projectData?.graph.getRootNode()
        #expect(rootNode?.patch == .sin)
    }

    @Test func parseTripleNested() throws {
        let source = "cos(sin(sqrt(4)))"
        let projectData = ProjectDataParser.parse(source)

        #expect(projectData != nil)
        #expect(projectData?.graph.nodes.count == 4)
        #expect(projectData?.description == "ValueNode(4) -> SquareRootNode -> SinNode -> CosNode")

        let rootNode = projectData?.graph.getRootNode()
        #expect(rootNode?.patch == .cos)
    }

    @Test func parseCosSin() throws {
        let source = "cos(sin(1))"
        let projectData = ProjectDataParser.parse(source)

        #expect(projectData != nil)
        #expect(projectData?.graph.nodes.count == 3)
        #expect(projectData?.description == "ValueNode(1) -> SinNode -> CosNode")

        let rootNode = projectData?.graph.getRootNode()
        #expect(rootNode?.patch == .cos)
    }

    @Test func parseFloatValue() throws {
        let source = "2.5"
        let projectData = ProjectDataParser.parse(source)

        #expect(projectData != nil)
        #expect(projectData?.graph.nodes.count == 1)
        #expect(projectData?.description == "ValueNode(2)")

        let rootNode = projectData?.graph.getRootNode()
        #expect(rootNode?.patch == .value)
        if let firstInput = rootNode?.inputs.first,
           case .value(let val) = firstInput.input {
            #expect(val == 2.5)
        } else {
            Issue.record("Expected value input")
        }
    }

    @Test func parseSqrtOnly() throws {
        let source = "sqrt(9)"
        let projectData = ProjectDataParser.parse(source)

        #expect(projectData != nil)
        #expect(projectData?.graph.nodes.count == 2)
        #expect(projectData?.description == "ValueNode(9) -> SquareRootNode")

        let rootNode = projectData?.graph.getRootNode()
        #expect(rootNode?.patch == .sqrt)
    }

    @Test func verifyNodeConnections() throws {
        let source = "sin(sqrt(4))"
        let projectData = ProjectDataParser.parse(source)

        #expect(projectData != nil)
        guard let projectData = projectData else { return }

        let sinNode = projectData.graph.getRootNode()
        #expect(sinNode?.patch == .sin)

        if let sinInput = sinNode?.inputs.first,
           case .incomingEdge(let from) = sinInput.input {
            let sqrtNode = projectData.graph.nodes[from.nodeId]
            #expect(sqrtNode?.patch == .sqrt)

            if let sqrtInput = sqrtNode?.inputs.first,
               case .incomingEdge(let from2) = sqrtInput.input {
                let valueNode = projectData.graph.nodes[from2.nodeId]
                #expect(valueNode?.patch == .value)
                if let valueInput = valueNode?.inputs.first,
                   case .value(let val) = valueInput.input {
                    #expect(val == 4.0)
                }
            }
        }
    }

    // MARK: - Infix Operator Tests

    @Test func parseSimpleAddition() throws {
        let source = "1 + 2"
        let projectData = ProjectDataParser.parse(source)

        #expect(projectData != nil)
        #expect(projectData?.graph.nodes.count == 3) // 1, 2, +
        #expect(projectData?.description == "Add(ValueNode(1), ValueNode(2))")

        let rootNode = projectData?.graph.getRootNode()
        #expect(rootNode?.patch == .add)
        #expect(rootNode?.inputs.count == 2)
    }

    @Test func parseSimpleSubtraction() throws {
        let source = "5 - 3"
        let projectData = ProjectDataParser.parse(source)

        #expect(projectData != nil)
        #expect(projectData?.graph.nodes.count == 3) // 5, 3, -
        #expect(projectData?.description == "Subtract(ValueNode(5), ValueNode(3))")

        let rootNode = projectData?.graph.getRootNode()
        #expect(rootNode?.patch == .subtract)
        #expect(rootNode?.inputs.count == 2)
    }

    @Test func parseNestedFunctionWithAddition() throws {
        let source = "sin(1 + 2)"
        let projectData = ProjectDataParser.parse(source)

        #expect(projectData != nil)
        #expect(projectData?.graph.nodes.count == 4) // 1, 2, +, sin
        #expect(projectData?.description == "Add(ValueNode(1), ValueNode(2)) -> SinNode")

        let rootNode = projectData?.graph.getRootNode()
        #expect(rootNode?.patch == .sin)
    }

    @Test func parseNestedFunctionWithSubtraction() throws {
        let source = "cos(5 - 3)"
        let projectData = ProjectDataParser.parse(source)

        #expect(projectData != nil)
        #expect(projectData?.graph.nodes.count == 4) // 5, 3, -, cos
        #expect(projectData?.description == "Subtract(ValueNode(5), ValueNode(3)) -> CosNode")

        let rootNode = projectData?.graph.getRootNode()
        #expect(rootNode?.patch == .cos)
    }

    @Test func verifyBinaryOperatorConnections() throws {
        let source = "1 + 2"
        let projectData = ProjectDataParser.parse(source)

        #expect(projectData != nil)
        guard let projectData = projectData else { return }

        let addNode = projectData.graph.getRootNode()
        #expect(addNode?.patch == .add)
        #expect(addNode?.inputs.count == 2)

        // Verify left input (port 0)
        if let leftInput = addNode?.inputs.first,
           case .incomingEdge(let leftFrom) = leftInput.input {
            let leftValueNode = projectData.graph.nodes[leftFrom.nodeId]
            #expect(leftValueNode?.patch == .value)
            if let valueInput = leftValueNode?.inputs.first,
               case .value(let val) = valueInput.input {
                #expect(val == 1.0)
            }
        }

        // Verify right input (port 1)
        if addNode?.inputs.count ?? 0 > 1,
           let rightInput = addNode?.inputs[1],
           case .incomingEdge(let rightFrom) = rightInput.input {
            let rightValueNode = projectData.graph.nodes[rightFrom.nodeId]
            #expect(rightValueNode?.patch == .value)
            if let valueInput = rightValueNode?.inputs.first,
               case .value(let val) = valueInput.input {
                #expect(val == 2.0)
            }
        }
    }

    // MARK: - Variable Declaration Tests

    @Test func parseLetVariableDeclaration() throws {
        let source = """
        let x = 16
        cos(sqrt(x))
        """
        let projectData = ProjectDataParser.parse(source)

        #expect(projectData != nil)
        #expect(projectData?.graph.nodes.count == 3) // 16, sqrt, cos
        #expect(projectData?.description == "ValueNode(16) -> SquareRootNode -> CosNode")

        let rootNode = projectData?.graph.getRootNode()
        #expect(rootNode?.patch == .cos)
    }

    @Test func parseVarVariableDeclaration() throws {
        let source = """
        var x = 4
        cos(sqrt(x))
        """
        let projectData = ProjectDataParser.parse(source)

        #expect(projectData != nil)
        #expect(projectData?.graph.nodes.count == 3) // 4, sqrt, cos
        #expect(projectData?.description == "ValueNode(4) -> SquareRootNode -> CosNode")

        let rootNode = projectData?.graph.getRootNode()
        #expect(rootNode?.patch == .cos)
    }

    @Test func parseFloatVariableDeclaration() throws {
        let source = """
        let x = 2.5
        sin(x)
        """
        let projectData = ProjectDataParser.parse(source)

        #expect(projectData != nil)
        #expect(projectData?.graph.nodes.count == 2) // 2.5, sin
        #expect(projectData?.description == "ValueNode(2) -> SinNode")

        let rootNode = projectData?.graph.getRootNode()
        #expect(rootNode?.patch == .sin)
    }

    @Test func verifyVariableReferenceConnections() throws {
        let source = """
        let x = 9
        sqrt(x)
        """
        let projectData = ProjectDataParser.parse(source)

        #expect(projectData != nil)
        guard let projectData = projectData else { return }

        let sqrtNode = projectData.graph.getRootNode()
        #expect(sqrtNode?.patch == .sqrt)

        if let sqrtInput = sqrtNode?.inputs.first,
           case .incomingEdge(let from) = sqrtInput.input {
            let valueNode = projectData.graph.nodes[from.nodeId]
            #expect(valueNode?.patch == .value)
            if let valueInput = valueNode?.inputs.first,
               case .value(let val) = valueInput.input {
                #expect(val == 9.0)
            }
        }
    }

    // MARK: - Multiple Variable Declaration Tests

    @Test func parseMultipleVariableDeclarations() throws {
        let source = """
        let x = 8
        let y = 8
        x + y
        """
        let projectData = ProjectDataParser.parse(source)

        #expect(projectData != nil)
        #expect(projectData?.graph.nodes.count == 3) // x(8), y(8), +
        #expect(projectData?.description == "Add(ValueNode(8), ValueNode(8))")

        let rootNode = projectData?.graph.getRootNode()
        #expect(rootNode?.patch == .add)
        #expect(rootNode?.inputs.count == 2)
    }

    @Test func parseMixedVariableDeclarations() throws {
        let source = """
        var a = 3
        let b = 5
        a - b
        """
        let projectData = ProjectDataParser.parse(source)

        #expect(projectData != nil)
        #expect(projectData?.graph.nodes.count == 3) // a(3), b(5), -
        #expect(projectData?.description == "Subtract(ValueNode(3), ValueNode(5))")

        let rootNode = projectData?.graph.getRootNode()
        #expect(rootNode?.patch == .subtract)
        #expect(rootNode?.inputs.count == 2)
    }

    @Test func parseMultipleVariablesDifferentValues() throws {
        let source = """
        let x = 10
        let y = 20
        x + y
        """
        let projectData = ProjectDataParser.parse(source)

        #expect(projectData != nil)
        #expect(projectData?.graph.nodes.count == 3) // x(10), y(20), +
        #expect(projectData?.description == "Add(ValueNode(10), ValueNode(20))")

        let rootNode = projectData?.graph.getRootNode()
        #expect(rootNode?.patch == .add)
    }

    @Test func verifyMultipleVariableConnections() throws {
        let source = """
        let x = 8
        let y = 8
        x + y
        """
        let projectData = ProjectDataParser.parse(source)

        #expect(projectData != nil)
        guard let projectData = projectData else { return }

        let addNode = projectData.graph.getRootNode()
        #expect(addNode?.patch == .add)
        #expect(addNode?.inputs.count == 2)

        // Verify both inputs are from separate ValueNodes
        guard let leftInput = addNode?.inputs.first,
              case .incomingEdge(let leftFrom) = leftInput.input,
              let rightInput = addNode?.inputs.last,
              case .incomingEdge(let rightFrom) = rightInput.input else {
            #expect(Bool(false), "Expected both inputs to be incoming edges")
            return
        }

        // Find both value nodes
        let leftValueNode = projectData.graph.nodes[leftFrom.nodeId]
        let rightValueNode = projectData.graph.nodes[rightFrom.nodeId]

        #expect(leftValueNode?.patch == .value)
        #expect(rightValueNode?.patch == .value)

        // Verify they are different node instances (separate ValueNodes)
        #expect(leftValueNode?.nodeId != rightValueNode?.nodeId)

        // Verify both have value 8
        if let leftValueInput = leftValueNode?.inputs.first,
           case .value(let leftVal) = leftValueInput.input {
            #expect(leftVal == 8.0)
        }

        if let rightValueInput = rightValueNode?.inputs.first,
           case .value(let rightVal) = rightValueInput.input {
            #expect(rightVal == 8.0)
        }
    }

    @Test func parseMultipleVariablesInNestedExpression() throws {
        let source = """
        let a = 4
        let b = 9
        sin(a + b)
        """
        let projectData = ProjectDataParser.parse(source)

        #expect(projectData != nil)
        #expect(projectData?.graph.nodes.count == 4) // a(4), b(9), +, sin
        #expect(projectData?.description == "Add(ValueNode(4), ValueNode(9)) -> SinNode")

        let rootNode = projectData?.graph.getRootNode()
        #expect(rootNode?.patch == .sin)
    }

    // MARK: - Comparison Operator Tests

    @Test func parseGreaterThan() throws {
        let source = "5 > 3"
        let projectData = ProjectDataParser.parse(source)

        #expect(projectData != nil)
        #expect(projectData?.graph.nodes.count == 3) // 5, 3, >
        #expect(projectData?.description == "GreaterThan(ValueNode(5), ValueNode(3))")

        let rootNode = projectData?.graph.getRootNode()
        #expect(rootNode?.patch == .greaterThan)
        #expect(rootNode?.inputs.count == 2)
    }

    @Test func parseLessThan() throws {
        let source = "2 < 10"
        let projectData = ProjectDataParser.parse(source)

        #expect(projectData != nil)
        #expect(projectData?.graph.nodes.count == 3) // 2, 10, <
        #expect(projectData?.description == "LessThan(ValueNode(2), ValueNode(10))")

        let rootNode = projectData?.graph.getRootNode()
        #expect(rootNode?.patch == .lessThan)
        #expect(rootNode?.inputs.count == 2)
    }

    @Test func parseEqual() throws {
        let source = """
        let x = 7
        x == 5
        """
        let projectData = ProjectDataParser.parse(source)

        #expect(projectData != nil)
        #expect(projectData?.graph.nodes.count == 3) // x(7), 5, ==
        #expect(projectData?.description == "Equal(ValueNode(7), ValueNode(5))")

        let rootNode = projectData?.graph.getRootNode()
        #expect(rootNode?.patch == .equal)
        #expect(rootNode?.inputs.count == 2)
    }

    // MARK: - Ternary Expression Tests

    @Test func parseSimpleTernary() throws {
        let source = "true ? 5 : 10"
        let projectData = ProjectDataParser.parse(source)

        #expect(projectData != nil)
        #expect(projectData?.graph.nodes.count == 4) // true, 5, 10, ?:
        #expect(projectData?.description == "OptionPicker(ValueNode(1), ValueNode(10), ValueNode(5))")

        let rootNode = projectData?.graph.getRootNode()
        #expect(rootNode?.patch == .optionPicker)
        #expect(rootNode?.inputs.count == 3)
    }

    @Test func parseComparisonTernary() throws {
        let source = "5 > 4 ? 100 : 0"
        let projectData = ProjectDataParser.parse(source)

        #expect(projectData != nil)
        #expect(projectData?.graph.nodes.count == 6) // 5, 4, >, 100, 0, ?:
        #expect(projectData?.description == "OptionPicker(GreaterThan(ValueNode(5), ValueNode(4)), ValueNode(0), ValueNode(100))")

        let rootNode = projectData?.graph.getRootNode()
        #expect(rootNode?.patch == .optionPicker)
        #expect(rootNode?.inputs.count == 3)
    }

    @Test func parseVariableTernary() throws {
        let source = """
        let x = 8
        let y = 12
        x > y ? x : y
        """
        let projectData = ProjectDataParser.parse(source)

        #expect(projectData != nil)
        #expect(projectData?.graph.nodes.count == 4) // ValueNode(8), ValueNode(12), GreaterThan, OptionPicker
//        #expect(projectData?.description == "OptionPicker(GreaterThan(ValueNode(8), ValueNode(12)), ValueNode(12), ValueNode(8))")

        let rootNode = projectData?.graph.getRootNode()
        #expect(rootNode?.patch == .optionPicker)
        #expect(rootNode?.inputs.count == 3)
    }

    @Test func parseNestedTernary() throws {
        let source = "true ? (false ? 1 : 2) : 3"
        let projectData = ProjectDataParser.parse(source)

        #expect(projectData != nil)
        #expect(projectData?.graph.nodes.count == 7) // true, false, 1, 2, 3, inner ?:, outer ?:
        #expect(projectData?.description == "OptionPicker(ValueNode(1), ValueNode(3), OptionPicker(ValueNode(0), ValueNode(2), ValueNode(1)))")

        let rootNode = projectData?.graph.getRootNode()
        #expect(rootNode?.patch == .optionPicker)
        #expect(rootNode?.inputs.count == 3)
    }

    @Test func verifyTernaryConnections() throws {
        let source = "true ? 5 : 10"
        let projectData = ProjectDataParser.parse(source)

        #expect(projectData != nil)
        guard let projectData = projectData else { return }

        let ternaryNode = projectData.graph.getRootNode()
        #expect(ternaryNode?.patch == .optionPicker)
        #expect(ternaryNode?.inputs.count == 3)

        // Verify condition input (port 0)
        if let conditionInput = ternaryNode?.inputs.first,
           case .incomingEdge(let conditionFrom) = conditionInput.input {
            let conditionValueNode = projectData.graph.nodes[conditionFrom.nodeId]
            #expect(conditionValueNode?.patch == .value)
            if let valueInput = conditionValueNode?.inputs.first,
               case .value(let val) = valueInput.input {
                #expect(val == 1.0) // true = 1.0
            }
        }

        // Verify false value input (port 1)
        if ternaryNode?.inputs.count ?? 0 > 1,
           let falseInput = ternaryNode?.inputs[1],
           case .incomingEdge(let falseFrom) = falseInput.input {
            let falseValueNode = projectData.graph.nodes[falseFrom.nodeId]
            #expect(falseValueNode?.patch == .value)
            if let valueInput = falseValueNode?.inputs.first,
               case .value(let val) = valueInput.input {
                #expect(val == 10.0)
            }
        }

        // Verify true value input (port 2)
        if ternaryNode?.inputs.count ?? 0 > 2,
           let trueInput = ternaryNode?.inputs[2],
           case .incomingEdge(let trueFrom) = trueInput.input {
            let trueValueNode = projectData.graph.nodes[trueFrom.nodeId]
            #expect(trueValueNode?.patch == .value)
            if let valueInput = trueValueNode?.inputs.first,
               case .value(let val) = valueInput.input {
                #expect(val == 5.0)
            }
        }
    }

    // MARK: - If-Else Expression Tests

    @Test func parseSimpleIfElse() throws {
        let source = "if true { 5 } else { 10 }"
        let projectData = ProjectDataParser.parse(source)

        #expect(projectData != nil)
        #expect(projectData?.graph.nodes.count == 4) // true, 5, 10, if-else
        #expect(projectData?.description == "OptionPicker(ValueNode(1), ValueNode(10), ValueNode(5))")

        let rootNode = projectData?.graph.getRootNode()
        #expect(rootNode?.patch == .optionPicker)
        #expect(rootNode?.inputs.count == 3)
    }

    @Test func parseComparisonIfElse() throws {
        let source = "if 5 > 4 { 100 } else { 0 }"
        let projectData = ProjectDataParser.parse(source)

        #expect(projectData != nil)
        guard let dag = projectData?.graph else {
            #expect(Bool(false), "Expected valid DAG")
            return
        }

        #expect(dag.nodes.count == 6) // 5, 4, >, 100, 0, if-else

        // Find all node types
        let value5Nodes = findValueNodes(dag, withValue: 5.0)
        let value4Nodes = findValueNodes(dag, withValue: 4.0)
        let value100Nodes = findValueNodes(dag, withValue: 100.0)
        let value0Nodes = findValueNodes(dag, withValue: 0.0)
        let greaterThanNodes = findNodesByFunction(dag, function: .greaterThan)
        let optionPickerNodes = findNodesByFunction(dag, function: .optionPicker)

        // Verify exact counts
        #expect(value5Nodes.count == 1, "Expected exactly one ValueNode with value 5")
        #expect(value4Nodes.count == 1, "Expected exactly one ValueNode with value 4")
        #expect(value100Nodes.count == 1, "Expected exactly one ValueNode with value 100")
        #expect(value0Nodes.count == 1, "Expected exactly one ValueNode with value 0")
        #expect(greaterThanNodes.count == 1, "Expected exactly one GreaterThan node")
        #expect(optionPickerNodes.count == 1, "Expected exactly one OptionPicker node")

        // Validate input connections for GreaterThan: should receive 5 and 4
        let greaterThanNode = greaterThanNodes.first!
        let expectedGreaterThanSources: [InputSource] = [.valueNode(5.0), .valueNode(4.0)]
        #expect(validateInputSources(dag, nodeId: greaterThanNode.nodeId, expectedSources: expectedGreaterThanSources),
                "GreaterThan node should receive inputs from ValueNode(5) and ValueNode(4)")

        // Validate input connections for OptionPicker: should receive condition from GreaterThan, then false value (0), then true value (100)
        let optionPickerNode = optionPickerNodes.first!
        let expectedOptionPickerSources: [InputSource] = [.nodeWithFunction(.greaterThan), .valueNode(0.0), .valueNode(100.0)]
        #expect(validateInputSources(dag, nodeId: optionPickerNode.nodeId, expectedSources: expectedOptionPickerSources),
                "OptionPicker node should receive condition from GreaterThan, false value 0, and true value 100")

        // Verify node roles
        let roles = classifyNodesByRole(dag)
        #expect(roles.leafNodes.count == 4, "Expected 4 leaf nodes (all value nodes)")
        #expect(roles.intermediateNodes.count == 1, "Expected 1 intermediate node (GreaterThan)")
        #expect(roles.rootNode?.patch == .optionPicker, "Expected OptionPicker as root node")

        // Verify graph structure
        #expect(validateTopologicalOrder(dag), "DAG should be acyclic")
    }

    @Test func parseVariableIfElse() throws {
        let source = """
        let x = 8
        let y = 12
        if x > y { x } else { y }
        """
        let projectData = ProjectDataParser.parse(source)

        #expect(projectData != nil)
        guard let dag = projectData?.graph else {
            #expect(Bool(false), "Expected valid DAG")
            return
        }

        #expect(dag.nodes.count == 4) // ValueNode(8), ValueNode(12), GreaterThan, OptionPicker

        // Structural validation using helper functions
        let valueNodes8 = findValueNodes(dag, withValue: 8.0)
        let valueNodes12 = findValueNodes(dag, withValue: 12.0)
        let greaterThanNodes = findNodesByFunction(dag, function: .greaterThan)
        let optionPickerNodes = findNodesByFunction(dag, function: .optionPicker)

        #expect(valueNodes8.count == 1, "Expected exactly one ValueNode with value 8")
        #expect(valueNodes12.count == 1, "Expected exactly one ValueNode with value 12")
        #expect(greaterThanNodes.count == 1, "Expected exactly one GreaterThan node")
        #expect(optionPickerNodes.count == 1, "Expected exactly one OptionPicker node")

        // Validate connections: GreaterThan should receive inputs from both value nodes
        let greaterThanNode = greaterThanNodes.first!
        let expectedGreaterThanSources: [InputSource] = [.valueNode(8.0), .valueNode(12.0)]
        #expect(validateInputSources(dag, nodeId: greaterThanNode.nodeId, expectedSources: expectedGreaterThanSources),
                "GreaterThan node should receive inputs from ValueNode(8) and ValueNode(12)")

        // Validate connections: OptionPicker should receive condition from GreaterThan and values from both value nodes
        let optionPickerNode = optionPickerNodes.first!
        let expectedOptionPickerSources: [InputSource] = [.nodeWithFunction(.greaterThan), .valueNode(12.0), .valueNode(8.0)]
        #expect(validateInputSources(dag, nodeId: optionPickerNode.nodeId, expectedSources: expectedOptionPickerSources),
                "OptionPicker node should receive condition from GreaterThan and values from both ValueNodes")

        // Validate node roles
        let nodeRoles = classifyNodesByRole(dag)
        #expect(nodeRoles.leafNodes.count == 2, "Expected 2 leaf nodes (value nodes)")
        #expect(nodeRoles.intermediateNodes.count == 1, "Expected 1 intermediate node (GreaterThan)")
        #expect(nodeRoles.rootNode?.patch == .optionPicker, "Expected OptionPicker as root node")

        // Validate topological structure (no cycles)
        #expect(validateTopologicalOrder(dag), "DAG should have valid topological order (no cycles)")
    }

    @Test func parseNestedIfElse() throws {
        let source = "if true { if false { 1 } else { 2 } } else { 3 }"
        let projectData = ProjectDataParser.parse(source)

        #expect(projectData != nil)
        #expect(projectData?.graph.nodes.count == 7) // true, false, 1, 2, 3, inner if-else, outer if-else
        #expect(projectData?.description == "OptionPicker(ValueNode(1), ValueNode(3), OptionPicker(ValueNode(0), ValueNode(2), ValueNode(1)))")

        let rootNode = projectData?.graph.getRootNode()
        #expect(rootNode?.patch == .optionPicker)
        #expect(rootNode?.inputs.count == 3)
    }

    @Test func verifyIfElseConnections() throws {
        let source = "if true { 5 } else { 10 }"
        let projectData = ProjectDataParser.parse(source)

        #expect(projectData != nil)
        guard let projectData = projectData else { return }

        let ifElseNode = projectData.graph.getRootNode()
        #expect(ifElseNode?.patch == .optionPicker)
        #expect(ifElseNode?.inputs.count == 3)

        // Verify condition input (port 0)
        if let conditionInput = ifElseNode?.inputs.first,
           case .incomingEdge(let conditionFrom) = conditionInput.input {
            let conditionValueNode = projectData.graph.nodes[conditionFrom.nodeId]
            #expect(conditionValueNode?.patch == .value)
            if let valueInput = conditionValueNode?.inputs.first,
               case .value(let val) = valueInput.input {
                #expect(val == 1.0) // true = 1.0
            }
        }

        // Verify false value input (port 1)
        if ifElseNode?.inputs.count ?? 0 > 1,
           let falseInput = ifElseNode?.inputs[1],
           case .incomingEdge(let falseFrom) = falseInput.input {
            let falseValueNode = projectData.graph.nodes[falseFrom.nodeId]
            #expect(falseValueNode?.patch == .value)
            if let valueInput = falseValueNode?.inputs.first,
               case .value(let val) = valueInput.input {
                #expect(val == 10.0)
            }
        }

        // Verify true value input (port 2)
        if ifElseNode?.inputs.count ?? 0 > 2,
           let trueInput = ifElseNode?.inputs[2],
           case .incomingEdge(let trueFrom) = trueInput.input {
            let trueValueNode = projectData.graph.nodes[trueFrom.nodeId]
            #expect(trueValueNode?.patch == .value)
            if let valueInput = trueValueNode?.inputs.first,
               case .value(let val) = valueInput.input {
                #expect(val == 5.0)
            }
        }
    }

    // MARK: - Method Chaining Tests

    @Test func parseSimpleRounded() throws {
        let source = "5.9.rounded()"
        let projectData = ProjectDataParser.parse(source)

        #expect(projectData != nil)
        #expect(projectData?.graph.nodes.count == 2)
        #expect(projectData?.description == "ValueNode(5) -> RoundedNode")

        let rootNode = projectData?.graph.getRootNode()
        #expect(rootNode?.patch == .rounded)
    }

    @Test func parseSimpleMagnitude() throws {
        let source = "5.9.magnitude"
        let projectData = ProjectDataParser.parse(source)

        #expect(projectData != nil)
        #expect(projectData?.graph.nodes.count == 2)
        #expect(projectData?.description == "ValueNode(5) -> MagnitudeNode")

        let rootNode = projectData?.graph.getRootNode()
        #expect(rootNode?.patch == .magnitude)
    }

    @Test func parseMethodChaining() throws {
        let source = "5.9.rounded().magnitude"
        let projectData = ProjectDataParser.parse(source)

        #expect(projectData != nil)
        #expect(projectData?.graph.nodes.count == 3)
        #expect(projectData?.description == "ValueNode(5) -> RoundedNode -> MagnitudeNode")

        let rootNode = projectData?.graph.getRootNode()
        #expect(rootNode?.patch == .magnitude)
    }

//    @Test func parseNegativeMagnitude() throws {
//        let source = "(-3.2).magnitude"
//        let projectData = ProjectDataParser.parse(source)
//
//        #expect(projectData != nil)
//        #expect(projectData?.graph.nodes.count == 2)
//        #expect(projectData?.description == "ValueNode(-3) -> MagnitudeNode")
//
//        let rootNode = projectData?.graph.getRootNode()
//        #expect(rootNode?.patch == .magnitude)
//    }

    @Test func parseVariableMethod() throws {
        let source = """
        let x = 2.7
        x.rounded()
        """
        let projectData = ProjectDataParser.parse(source)

        #expect(projectData != nil)
        #expect(projectData?.graph.nodes.count == 2)
        #expect(projectData?.description == "ValueNode(2) -> RoundedNode")

        let rootNode = projectData?.graph.getRootNode()
        #expect(rootNode?.patch == .rounded)
    }

    @Test func parseNestedWithMethod() throws {
        let source = "sin(5.9.rounded())"
        let projectData = ProjectDataParser.parse(source)

        #expect(projectData != nil)
        #expect(projectData?.graph.nodes.count == 3)
        #expect(projectData?.description == "ValueNode(5) -> RoundedNode -> SinNode")

        let rootNode = projectData?.graph.getRootNode()
        #expect(rootNode?.patch == .sin)
    }

    @Test func validateStructuralIntegrityComprehensive() throws {
        let source = """
        let x = 1.0
        let y = 2.0
        sin(x + y) * 2.0
        """
        let projectData = ProjectDataParser.parse(source)

        #expect(projectData != nil)
        guard let dag = projectData?.graph else {
            #expect(Bool(false), "Expected valid DAG")
            return
        }

        // Test all structural properties
        #expect(validateTopologicalOrder(dag), "DAG should be acyclic")

        // Test node role classification
        let roles = classifyNodesByRole(dag)
        #expect(roles.rootNode != nil, "Should have exactly one root node")
        #expect(roles.leafNodes.count >= 2, "Should have at least two leaf nodes (value nodes)")

        // Test that all nodes are reachable from root
        let rootNodeId = dag.resultNodeId
        let executionPath = traceExecutionPath(from: rootNodeId, in: dag)
        #expect(!executionPath.isEmpty, "Should be able to trace execution path from root")

        // Test specific function types exist
        let hasValueNodes = !findNodesByFunction(dag, function: .value).isEmpty
        #expect(hasValueNodes, "Should contain value nodes")

        // Verify we have a complex enough graph with multiple operations
        #expect(dag.nodes.count >= 3, "Should have multiple nodes for a complex expression")
    }

    @Test func parseVariableReuseInTernary() throws {
        let source = """
        let x = 8
        let y = 12
        x > y ? x : y
        """
        let projectData = ProjectDataParser.parse(source)

        #expect(projectData != nil)
        guard let projectData = projectData else { return }

        // Should have exactly 4 nodes: ValueNode(8), ValueNode(12), GreaterThan, OptionPicker
        #expect(projectData.graph.nodes.count == 4, "Expected 4 nodes but got \(projectData.graph.nodes.count)")

        let rootNode = projectData.graph.getRootNode()
        #expect(rootNode?.patch == .optionPicker)

        // Verify the OptionPicker has 3 inputs: condition, false-value, true-value
        guard let optionPickerNode = rootNode?.functionNode else {
            #expect(Bool(false), "Root node should be an OptionPicker function node")
            return
        }
        #expect(optionPickerNode.inputs.count == 3)

        // Find the GreaterThan node (should be input 0 - condition)
        guard let conditionInput = optionPickerNode.inputs.first,
              case .incomingEdge(let conditionFrom) = conditionInput.input,
              let greaterThanNode = projectData.graph.nodes[conditionFrom.nodeId]?.functionNode else {
            #expect(Bool(false), "Expected condition input to be from GreaterThan node")
            return
        }
        #expect(greaterThanNode.patch == .greaterThan)

        // Verify GreaterThan has 2 inputs from ValueNodes
        #expect(greaterThanNode.inputs.count == 2)

        // Count the actual ValueNodes
        let valueNodes = projectData.graph.nodes.values.compactMap { $0.functionNode }.filter { $0.patch == .value }
        #expect(valueNodes.count == 2, "Expected exactly 2 ValueNodes but found \(valueNodes.count)")

        // Verify we have one ValueNode(8) and one ValueNode(12)
        let values = valueNodes.compactMap { node -> Double? in
            guard let input = node.inputs.first, case .value(let val) = input.input else { return nil }
            return val
        }.sorted()
        #expect(values == [8.0, 12.0], "Expected values [8.0, 12.0] but got \(values)")
    }
}
