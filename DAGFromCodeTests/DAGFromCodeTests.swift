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

// Using actual DAG types: InputValue and OutputCoordinate from DAGFromCode/Mapping.swift

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

    func validateInputSources(_ dag: DAG, nodeId: UUID, expectedSources: [InputValue]) -> Bool {
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

            case (.incomingEdge(let actualFrom), .incomingEdge(let expectedFrom)):
                if actualFrom.nodeId != expectedFrom.nodeId || actualFrom.portId != expectedFrom.portId {
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
                // Check if this is the root node
                if functionNode.nodeId == dag.resultNodeId {
                    rootNode = functionNode
                }

                // Check if this is a leaf node (has only .value inputs)
                let isLeaf = functionNode.inputs.allSatisfy({ input in
                    if case .value = input.input { return true }
                    return false
                })

                if isLeaf {
                    leafNodes.append(functionNode)
                } else if functionNode.nodeId != dag.resultNodeId {
                    // Only add to intermediate if it's not the root node
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
        return path.filter { $0 != .value }
    }

    @Test func parseSimpleValue() throws {
        let source = "4"
        let projectData = ProjectDataParser.parse(source)

        #expect(projectData != nil)
        guard let dag = projectData?.graph else {
            #expect(Bool(false), "Expected valid DAG")
            return
        }

        #expect(dag.nodes.count == 1)

        // Enhanced structural validation
        let value4Nodes = findValueNodes(dag, withValue: 4.0)
        let allValueNodes = findNodesByFunction(dag, function: .value)

        // Verify exact counts using helper functions
        #expect(value4Nodes.count == 1, "Expected exactly one ValueNode with value 4")
        #expect(allValueNodes.count == 1, "Expected exactly one Value node total")

        // Validate node roles for single value
        let nodeRoles = classifyNodesByRole(dag)
        #expect(nodeRoles.leafNodes.count == 1, "Expected 1 leaf node (the value node)")
        #expect(nodeRoles.intermediateNodes.count == 0, "Expected 0 intermediate nodes")
        #expect(nodeRoles.rootNode?.patch == .value, "Expected Value node as root")

        // Validate topological structure
        #expect(validateTopologicalOrder(dag), "DAG should have valid topological order")

        // Original detailed validation (preserved)
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
        guard let dag = projectData?.graph else {
            #expect(Bool(false), "Expected valid DAG")
            return
        }

        #expect(dag.nodes.count == 2) // ValueNode(1), Sin

        // Find all node types
        let value1Nodes = findValueNodes(dag, withValue: 1.0)
        let sinNodes = findNodesByFunction(dag, function: .sin)

        // Verify exact counts
        #expect(value1Nodes.count == 1, "Expected exactly one ValueNode with value 1")
        #expect(sinNodes.count == 1, "Expected exactly one Sin node")

        // Validate connections: Sin should receive input from ValueNode(1)
        let sinNode = sinNodes.first!
        let expectedSinSources: [InputValue] = [.incomingEdge(from: OutputCoordinate(nodeId: value1Nodes[0].nodeId, portId: 0))]
        #expect(validateInputSources(dag, nodeId: sinNode.nodeId, expectedSources: expectedSinSources),
                "Sin node should receive input from ValueNode(1)")

        // Validate node roles
        let nodeRoles = classifyNodesByRole(dag)
        #expect(nodeRoles.leafNodes.count == 1, "Expected 1 leaf node (value node)")
        #expect(nodeRoles.intermediateNodes.count == 0, "Expected 0 intermediate nodes")
        #expect(nodeRoles.rootNode?.patch == .sin, "Expected Sin as root node")

        // Validate topological structure
        #expect(validateTopologicalOrder(dag), "DAG should have valid topological order (no cycles)")

        // Validate execution path
        let executionPath = traceExecutionPath(from: dag.resultNodeId, in: dag)
        #expect(executionPath.contains(.sin), "Execution path should include sin")
        // Value nodes are excluded from execution path (operation chain focus)
    }

    @Test func parseNestedFunctions() throws {
        let source = "sin(sqrt(4))"
        let projectData = ProjectDataParser.parse(source)

        #expect(projectData != nil)
        guard let dag = projectData?.graph else {
            #expect(Bool(false), "Expected valid DAG")
            return
        }

        #expect(dag.nodes.count == 3) // ValueNode(4), Sqrt, Sin

        // Find all node types
        let value4Nodes = findValueNodes(dag, withValue: 4.0)
        let sqrtNodes = findNodesByFunction(dag, function: .sqrt)
        let sinNodes = findNodesByFunction(dag, function: .sin)

        // Verify exact counts
        #expect(value4Nodes.count == 1, "Expected exactly one ValueNode with value 4")
        #expect(sqrtNodes.count == 1, "Expected exactly one Sqrt node")
        #expect(sinNodes.count == 1, "Expected exactly one Sin node")

        // Validate connections: Sqrt should receive input from ValueNode(4)
        let sqrtNode = sqrtNodes.first!
        let expectedSqrtSources: [InputValue] = [.incomingEdge(from: OutputCoordinate(nodeId: value4Nodes[0].nodeId, portId: 0))]
        #expect(validateInputSources(dag, nodeId: sqrtNode.nodeId, expectedSources: expectedSqrtSources),
                "Sqrt node should receive input from ValueNode(4)")

        // Validate connections: Sin should receive input from Sqrt node
        let sinNode = sinNodes.first!
        let expectedSinSources: [InputValue] = [.incomingEdge(from: OutputCoordinate(nodeId: sqrtNode.nodeId, portId: 0))]
        #expect(validateInputSources(dag, nodeId: sinNode.nodeId, expectedSources: expectedSinSources),
                "Sin node should receive input from Sqrt node")

        // Validate node roles
        let nodeRoles = classifyNodesByRole(dag)
        #expect(nodeRoles.leafNodes.count == 1, "Expected 1 leaf node (value node)")
        #expect(nodeRoles.intermediateNodes.count == 1, "Expected 1 intermediate node (Sqrt)")
        #expect(nodeRoles.rootNode?.patch == .sin, "Expected Sin as root node")

        // Validate topological structure and execution path
        #expect(validateTopologicalOrder(dag), "DAG should have valid topological order (no cycles)")
        let executionPath = traceExecutionPath(from: dag.resultNodeId, in: dag)
        #expect(executionPath.contains(.sin), "Execution path should include sin")
        #expect(executionPath.contains(.sqrt), "Execution path should include sqrt")
        // Value nodes are excluded from execution path (operation chain focus)

        // Validate execution order in path (should process sqrt→sin)
        #expect(executionPath.count >= 2, "Execution path should include all operation functions")
    }

    @Test func parseTripleNested() throws {
        let source = "cos(sin(sqrt(4)))"
        let projectData = ProjectDataParser.parse(source)

        #expect(projectData != nil)
        guard let dag = projectData?.graph else {
            #expect(Bool(false), "Expected valid DAG")
            return
        }

        #expect(dag.nodes.count == 4) // ValueNode(4), Sqrt, Sin, Cos

        // Find all node types
        let value4Nodes = findValueNodes(dag, withValue: 4.0)
        let sqrtNodes = findNodesByFunction(dag, function: .sqrt)
        let sinNodes = findNodesByFunction(dag, function: .sin)
        let cosNodes = findNodesByFunction(dag, function: .cos)

        // Verify exact counts
        #expect(value4Nodes.count == 1, "Expected exactly one ValueNode with value 4")
        #expect(sqrtNodes.count == 1, "Expected exactly one Sqrt node")
        #expect(sinNodes.count == 1, "Expected exactly one Sin node")
        #expect(cosNodes.count == 1, "Expected exactly one Cos node")

        // Validate connections: Sqrt ← ValueNode(4)
        let sqrtNode = sqrtNodes.first!
        let expectedSqrtSources: [InputValue] = [.incomingEdge(from: OutputCoordinate(nodeId: value4Nodes[0].nodeId, portId: 0))]
        #expect(validateInputSources(dag, nodeId: sqrtNode.nodeId, expectedSources: expectedSqrtSources),
                "Sqrt node should receive input from ValueNode(4)")

        // Validate connections: Sin ← Sqrt
        let sinNode = sinNodes.first!
        let expectedSinSources: [InputValue] = [.incomingEdge(from: OutputCoordinate(nodeId: sqrtNode.nodeId, portId: 0))]
        #expect(validateInputSources(dag, nodeId: sinNode.nodeId, expectedSources: expectedSinSources),
                "Sin node should receive input from Sqrt node")

        // Validate connections: Cos ← Sin
        let cosNode = cosNodes.first!
        let expectedCosSources: [InputValue] = [.incomingEdge(from: OutputCoordinate(nodeId: sinNode.nodeId, portId: 0))]
        #expect(validateInputSources(dag, nodeId: cosNode.nodeId, expectedSources: expectedCosSources),
                "Cos node should receive input from Sin node")

        // Validate node roles
        let nodeRoles = classifyNodesByRole(dag)
        #expect(nodeRoles.leafNodes.count == 1, "Expected 1 leaf node (value node)")
        #expect(nodeRoles.intermediateNodes.count == 2, "Expected 2 intermediate nodes (Sqrt, Sin)")
        #expect(nodeRoles.rootNode?.patch == .cos, "Expected Cos as root node")

        // Validate topological structure and execution path
        #expect(validateTopologicalOrder(dag), "DAG should have valid topological order (no cycles)")
        let executionPath = traceExecutionPath(from: dag.resultNodeId, in: dag)
        #expect(executionPath.contains(.cos), "Execution path should include cos")
        #expect(executionPath.contains(.sin), "Execution path should include sin")
        #expect(executionPath.contains(.sqrt), "Execution path should include sqrt")
        // Value nodes are excluded from execution path (operation chain focus)

        // Validate complete chain: sqrt→sin→cos
        #expect(executionPath.count >= 3, "Execution path should include all operation functions")
    }

    @Test func parseCosSin() throws {
        let source = "cos(sin(1))"
        let projectData = ProjectDataParser.parse(source)

        #expect(projectData != nil)
        guard let dag = projectData?.graph else {
            #expect(Bool(false), "Expected valid DAG")
            return
        }

        #expect(dag.nodes.count == 3) // ValueNode(1), Sin, Cos

        // Find all node types
        let value1Nodes = findValueNodes(dag, withValue: 1.0)
        let sinNodes = findNodesByFunction(dag, function: .sin)
        let cosNodes = findNodesByFunction(dag, function: .cos)

        // Verify exact counts
        #expect(value1Nodes.count == 1, "Expected exactly one ValueNode with value 1")
        #expect(sinNodes.count == 1, "Expected exactly one Sin node")
        #expect(cosNodes.count == 1, "Expected exactly one Cos node")

        // Validate connections: Sin ← ValueNode(1)
        let sinNode = sinNodes.first!
        let expectedSinSources: [InputValue] = [.incomingEdge(from: OutputCoordinate(nodeId: value1Nodes[0].nodeId, portId: 0))]
        #expect(validateInputSources(dag, nodeId: sinNode.nodeId, expectedSources: expectedSinSources),
                "Sin node should receive input from ValueNode(1)")

        // Validate connections: Cos ← Sin
        let cosNode = cosNodes.first!
        let expectedCosSources: [InputValue] = [.incomingEdge(from: OutputCoordinate(nodeId: sinNode.nodeId, portId: 0))]
        #expect(validateInputSources(dag, nodeId: cosNode.nodeId, expectedSources: expectedCosSources),
                "Cos node should receive input from Sin node")

        // Validate node roles
        let nodeRoles = classifyNodesByRole(dag)
        #expect(nodeRoles.leafNodes.count == 1, "Expected 1 leaf node (value node)")
        #expect(nodeRoles.intermediateNodes.count == 1, "Expected 1 intermediate node (Sin)")
        #expect(nodeRoles.rootNode?.patch == .cos, "Expected Cos as root node")

        // Validate topological structure and execution path
        #expect(validateTopologicalOrder(dag), "DAG should have valid topological order (no cycles)")
        let executionPath = traceExecutionPath(from: dag.resultNodeId, in: dag)
        #expect(executionPath.contains(.cos), "Execution path should include cos")
        #expect(executionPath.contains(.sin), "Execution path should include sin")
        // Value nodes are excluded from execution path (operation chain focus)
    }

    @Test func parseFloatValue() throws {
        let source = "2.5"
        let projectData = ProjectDataParser.parse(source)

        #expect(projectData != nil)
        guard let dag = projectData?.graph else {
            #expect(Bool(false), "Expected valid DAG")
            return
        }

        #expect(dag.nodes.count == 1)

        // Enhanced structural validation for float value
        let value25Nodes = findValueNodes(dag, withValue: 2.5)
        let allValueNodes = findNodesByFunction(dag, function: .value)

        // Verify exact counts using helper functions
        #expect(value25Nodes.count == 1, "Expected exactly one ValueNode with value 2.5")
        #expect(allValueNodes.count == 1, "Expected exactly one Value node total")

        // Validate node roles for single float value
        let nodeRoles = classifyNodesByRole(dag)
        #expect(nodeRoles.leafNodes.count == 1, "Expected 1 leaf node (the float value node)")
        #expect(nodeRoles.intermediateNodes.count == 0, "Expected 0 intermediate nodes")
        #expect(nodeRoles.rootNode?.patch == .value, "Expected Value node as root")

        // Validate topological structure
        #expect(validateTopologicalOrder(dag), "DAG should have valid topological order")

        // Original validation (preserved)
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
        guard let dag = projectData?.graph else {
            #expect(Bool(false), "Expected valid DAG")
            return
        }

        #expect(dag.nodes.count == 2) // ValueNode(9), Sqrt

        // Find all node types
        let value9Nodes = findValueNodes(dag, withValue: 9.0)
        let sqrtNodes = findNodesByFunction(dag, function: .sqrt)

        // Verify exact counts
        #expect(value9Nodes.count == 1, "Expected exactly one ValueNode with value 9")
        #expect(sqrtNodes.count == 1, "Expected exactly one Sqrt node")

        // Validate connections: Sqrt ← ValueNode(9)
        let sqrtNode = sqrtNodes.first!
        let expectedSqrtSources: [InputValue] = [.incomingEdge(from: OutputCoordinate(nodeId: value9Nodes[0].nodeId, portId: 0))]
        #expect(validateInputSources(dag, nodeId: sqrtNode.nodeId, expectedSources: expectedSqrtSources),
                "Sqrt node should receive input from ValueNode(9)")

        // Validate node roles
        let nodeRoles = classifyNodesByRole(dag)
        #expect(nodeRoles.leafNodes.count == 1, "Expected 1 leaf node (value node)")
        #expect(nodeRoles.intermediateNodes.count == 0, "Expected 0 intermediate nodes")
        #expect(nodeRoles.rootNode?.patch == .sqrt, "Expected Sqrt as root node")

        // Validate topological structure
        #expect(validateTopologicalOrder(dag), "DAG should have valid topological order (no cycles)")
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
        guard let dag = projectData?.graph else {
            #expect(Bool(false), "Expected valid DAG")
            return
        }

        #expect(dag.nodes.count == 3) // 1, 2, +

        // Structural validation using helper functions
        let value1Nodes = findValueNodes(dag, withValue: 1.0)
        let value2Nodes = findValueNodes(dag, withValue: 2.0)
        let addNodes = findNodesByFunction(dag, function: .add)

        #expect(value1Nodes.count == 1, "Expected exactly one ValueNode with value 1")
        #expect(value2Nodes.count == 1, "Expected exactly one ValueNode with value 2")
        #expect(addNodes.count == 1, "Expected exactly one Add node")

        // Validate connections: Add should receive inputs from both value nodes
        let addNode = addNodes.first!
        let expectedAddSources: [InputValue] = [.incomingEdge(from: OutputCoordinate(nodeId: value1Nodes[0].nodeId, portId: 0)), .incomingEdge(from: OutputCoordinate(nodeId: value2Nodes[0].nodeId, portId: 0))]
        #expect(validateInputSources(dag, nodeId: addNode.nodeId, expectedSources: expectedAddSources),
                "Add node should receive inputs from ValueNode(1) and ValueNode(2)")

        // Validate node roles
        let nodeRoles = classifyNodesByRole(dag)
        #expect(nodeRoles.leafNodes.count == 2, "Expected 2 leaf nodes (value nodes)")
        #expect(nodeRoles.intermediateNodes.count == 0, "Expected 0 intermediate nodes")
        #expect(nodeRoles.rootNode?.patch == .add, "Expected Add as root node")

        // Validate topological structure
        #expect(validateTopologicalOrder(dag), "DAG should have valid topological order (no cycles)")
    }

    @Test func parseSimpleSubtraction() throws {
        let source = "5 - 3"
        let projectData = ProjectDataParser.parse(source)

        #expect(projectData != nil)
        guard let dag = projectData?.graph else {
            #expect(Bool(false), "Expected valid DAG")
            return
        }

        #expect(dag.nodes.count == 3) // 5, 3, -

        // Structural validation using helper functions
        let value5Nodes = findValueNodes(dag, withValue: 5.0)
        let value3Nodes = findValueNodes(dag, withValue: 3.0)
        let subtractNodes = findNodesByFunction(dag, function: .subtract)

        #expect(value5Nodes.count == 1, "Expected exactly one ValueNode with value 5")
        #expect(value3Nodes.count == 1, "Expected exactly one ValueNode with value 3")
        #expect(subtractNodes.count == 1, "Expected exactly one Subtract node")

        // Validate connections: Subtract should receive inputs from both value nodes
        let subtractNode = subtractNodes.first!
        let expectedSubtractSources: [InputValue] = [.incomingEdge(from: OutputCoordinate(nodeId: value5Nodes[0].nodeId, portId: 0)), .incomingEdge(from: OutputCoordinate(nodeId: value3Nodes[0].nodeId, portId: 0))]
        #expect(validateInputSources(dag, nodeId: subtractNode.nodeId, expectedSources: expectedSubtractSources),
                "Subtract node should receive inputs from ValueNode(5) and ValueNode(3)")

        // Validate node roles
        let nodeRoles = classifyNodesByRole(dag)
        #expect(nodeRoles.leafNodes.count == 2, "Expected 2 leaf nodes (value nodes)")
        #expect(nodeRoles.intermediateNodes.count == 0, "Expected 0 intermediate nodes")
        #expect(nodeRoles.rootNode?.patch == .subtract, "Expected Subtract as root node")

        // Validate topological structure
        #expect(validateTopologicalOrder(dag), "DAG should have valid topological order (no cycles)")

        // Validate execution path
        let executionPath = traceExecutionPath(from: dag.resultNodeId, in: dag)
        #expect(executionPath.contains(.subtract), "Execution path should include subtract")
        // Value nodes are excluded from execution path (operation chain focus)
    }

    @Test func parseNestedFunctionWithAddition() throws {
        let source = "sin(1 + 2)"
        let projectData = ProjectDataParser.parse(source)

        #expect(projectData != nil)
        guard let dag = projectData?.graph else {
            #expect(Bool(false), "Expected valid DAG")
            return
        }

        #expect(dag.nodes.count == 4) // 1, 2, +, sin

        // Find all node types
        let value1Nodes = findValueNodes(dag, withValue: 1.0)
        let value2Nodes = findValueNodes(dag, withValue: 2.0)
        let addNodes = findNodesByFunction(dag, function: .add)
        let sinNodes = findNodesByFunction(dag, function: .sin)

        // Verify exact counts
        #expect(value1Nodes.count == 1, "Expected exactly one ValueNode with value 1")
        #expect(value2Nodes.count == 1, "Expected exactly one ValueNode with value 2")
        #expect(addNodes.count == 1, "Expected exactly one Add node")
        #expect(sinNodes.count == 1, "Expected exactly one Sin node")

        // Validate connections: Add should receive inputs from both value nodes
        let addNode = addNodes.first!
        let expectedAddSources: [InputValue] = [.incomingEdge(from: OutputCoordinate(nodeId: value1Nodes[0].nodeId, portId: 0)), .incomingEdge(from: OutputCoordinate(nodeId: value2Nodes[0].nodeId, portId: 0))]
        #expect(validateInputSources(dag, nodeId: addNode.nodeId, expectedSources: expectedAddSources),
                "Add node should receive inputs from ValueNode(1) and ValueNode(2)")

        // Validate connections: Sin should receive input from Add node
        let sinNode = sinNodes.first!
        let expectedSinSources: [InputValue] = [.incomingEdge(from: OutputCoordinate(nodeId: addNode.nodeId, portId: 0))]
        #expect(validateInputSources(dag, nodeId: sinNode.nodeId, expectedSources: expectedSinSources),
                "Sin node should receive input from Add node")

        // Verify node roles
        let roles = classifyNodesByRole(dag)
        #expect(roles.leafNodes.count == 2, "Expected 2 leaf nodes (value nodes)")
        #expect(roles.intermediateNodes.count == 1, "Expected 1 intermediate node (Add)")
        #expect(roles.rootNode?.patch == .sin, "Expected Sin as root node")

        // Verify graph structure and execution path
        #expect(validateTopologicalOrder(dag), "DAG should be acyclic")
        let executionPath = traceExecutionPath(from: dag.resultNodeId, in: dag)
        #expect(executionPath.contains(.sin), "Execution path should include sin")
        #expect(executionPath.contains(.add), "Execution path should include add")
        // Value nodes are excluded from execution path (operation chain focus)
    }

    @Test func parseNestedFunctionWithSubtraction() throws {
        let source = "cos(5 - 3)"
        let projectData = ProjectDataParser.parse(source)

        #expect(projectData != nil)
        guard let dag = projectData?.graph else {
            #expect(Bool(false), "Expected valid DAG")
            return
        }

        #expect(dag.nodes.count == 4) // 5, 3, -, cos

        // Find all node types
        let value5Nodes = findValueNodes(dag, withValue: 5.0)
        let value3Nodes = findValueNodes(dag, withValue: 3.0)
        let subtractNodes = findNodesByFunction(dag, function: .subtract)
        let cosNodes = findNodesByFunction(dag, function: .cos)

        // Verify exact counts
        #expect(value5Nodes.count == 1, "Expected exactly one ValueNode with value 5")
        #expect(value3Nodes.count == 1, "Expected exactly one ValueNode with value 3")
        #expect(subtractNodes.count == 1, "Expected exactly one Subtract node")
        #expect(cosNodes.count == 1, "Expected exactly one Cos node")

        // Validate connections: Subtract ← ValueNode(5), ValueNode(3)
        let subtractNode = subtractNodes.first!
        let expectedSubtractSources: [InputValue] = [.incomingEdge(from: OutputCoordinate(nodeId: value5Nodes[0].nodeId, portId: 0)), .incomingEdge(from: OutputCoordinate(nodeId: value3Nodes[0].nodeId, portId: 0))]
        #expect(validateInputSources(dag, nodeId: subtractNode.nodeId, expectedSources: expectedSubtractSources),
                "Subtract node should receive inputs from ValueNode(5) and ValueNode(3)")

        // Validate connections: Cos ← Subtract
        let cosNode = cosNodes.first!
        let expectedCosSources: [InputValue] = [.incomingEdge(from: OutputCoordinate(nodeId: subtractNode.nodeId, portId: 0))]
        #expect(validateInputSources(dag, nodeId: cosNode.nodeId, expectedSources: expectedCosSources),
                "Cos node should receive input from Subtract node")

        // Validate node roles
        let nodeRoles = classifyNodesByRole(dag)
        #expect(nodeRoles.leafNodes.count == 2, "Expected 2 leaf nodes (value nodes)")
        #expect(nodeRoles.intermediateNodes.count == 1, "Expected 1 intermediate node (Subtract)")
        #expect(nodeRoles.rootNode?.patch == .cos, "Expected Cos as root node")

        // Validate topological structure
        #expect(validateTopologicalOrder(dag), "DAG should have valid topological order (no cycles)")
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
        guard let dag = projectData?.graph else {
            #expect(Bool(false), "Expected valid DAG")
            return
        }

        #expect(dag.nodes.count == 3) // 16, sqrt, cos

        // Find all node types
        let value16Nodes = findValueNodes(dag, withValue: 16.0)
        let sqrtNodes = findNodesByFunction(dag, function: .sqrt)
        let cosNodes = findNodesByFunction(dag, function: .cos)

        // Verify exact counts
        #expect(value16Nodes.count == 1, "Expected exactly one ValueNode with value 16")
        #expect(sqrtNodes.count == 1, "Expected exactly one Sqrt node")
        #expect(cosNodes.count == 1, "Expected exactly one Cos node")

        // Validate connections: Sqrt ← ValueNode(16), Cos ← Sqrt
        let sqrtNode = sqrtNodes.first!
        let expectedSqrtSources: [InputValue] = [.incomingEdge(from: OutputCoordinate(nodeId: value16Nodes[0].nodeId, portId: 0))]
        #expect(validateInputSources(dag, nodeId: sqrtNode.nodeId, expectedSources: expectedSqrtSources),
                "Sqrt node should receive input from ValueNode(16)")

        let cosNode = cosNodes.first!
        let expectedCosSources: [InputValue] = [.incomingEdge(from: OutputCoordinate(nodeId: sqrtNode.nodeId, portId: 0))]
        #expect(validateInputSources(dag, nodeId: cosNode.nodeId, expectedSources: expectedCosSources),
                "Cos node should receive input from Sqrt node")

        // Validate node roles
        let nodeRoles = classifyNodesByRole(dag)
        #expect(nodeRoles.leafNodes.count == 1, "Expected 1 leaf node (value node)")
        #expect(nodeRoles.intermediateNodes.count == 1, "Expected 1 intermediate node (Sqrt)")
        #expect(nodeRoles.rootNode?.patch == .cos, "Expected Cos as root node")

        // Validate topological structure
        #expect(validateTopologicalOrder(dag), "DAG should have valid topological order (no cycles)")
    }

    @Test func parseVarVariableDeclaration() throws {
        let source = """
        var x = 4
        cos(sqrt(x))
        """
        let projectData = ProjectDataParser.parse(source)

        #expect(projectData != nil)
        guard let dag = projectData?.graph else {
            #expect(Bool(false), "Expected valid DAG")
            return
        }

        #expect(dag.nodes.count == 3) // 4, sqrt, cos

        // Find all node types
        let value4Nodes = findValueNodes(dag, withValue: 4.0)
        let sqrtNodes = findNodesByFunction(dag, function: .sqrt)
        let cosNodes = findNodesByFunction(dag, function: .cos)

        // Verify exact counts
        #expect(value4Nodes.count == 1, "Expected exactly one ValueNode with value 4")
        #expect(sqrtNodes.count == 1, "Expected exactly one Sqrt node")
        #expect(cosNodes.count == 1, "Expected exactly one Cos node")

        // Validate connections: Sqrt ← ValueNode(4), Cos ← Sqrt
        let sqrtNode = sqrtNodes.first!
        let expectedSqrtSources: [InputValue] = [.incomingEdge(from: OutputCoordinate(nodeId: value4Nodes[0].nodeId, portId: 0))]
        #expect(validateInputSources(dag, nodeId: sqrtNode.nodeId, expectedSources: expectedSqrtSources),
                "Sqrt node should receive input from ValueNode(4)")

        let cosNode = cosNodes.first!
        let expectedCosSources: [InputValue] = [.incomingEdge(from: OutputCoordinate(nodeId: sqrtNode.nodeId, portId: 0))]
        #expect(validateInputSources(dag, nodeId: cosNode.nodeId, expectedSources: expectedCosSources),
                "Cos node should receive input from Sqrt node")

        // Validate node roles
        let nodeRoles = classifyNodesByRole(dag)
        #expect(nodeRoles.leafNodes.count == 1, "Expected 1 leaf node (value node)")
        #expect(nodeRoles.intermediateNodes.count == 1, "Expected 1 intermediate node (Sqrt)")
        #expect(nodeRoles.rootNode?.patch == .cos, "Expected Cos as root node")

        // Validate topological structure
        #expect(validateTopologicalOrder(dag), "DAG should have valid topological order (no cycles)")
    }

    @Test func parseFloatVariableDeclaration() throws {
        let source = """
        let x = 2.5
        sin(x)
        """
        let projectData = ProjectDataParser.parse(source)

        #expect(projectData != nil)
        guard let dag = projectData?.graph else {
            #expect(Bool(false), "Expected valid DAG")
            return
        }

        #expect(dag.nodes.count == 2) // 2.5, sin

        // Find all node types
        let value25Nodes = findValueNodes(dag, withValue: 2.5)
        let sinNodes = findNodesByFunction(dag, function: .sin)

        // Verify exact counts
        #expect(value25Nodes.count == 1, "Expected exactly one ValueNode with value 2.5")
        #expect(sinNodes.count == 1, "Expected exactly one Sin node")

        // Validate connections: Sin ← ValueNode(2.5)
        let sinNode = sinNodes.first!
        let expectedSinSources: [InputValue] = [.incomingEdge(from: OutputCoordinate(nodeId: value25Nodes[0].nodeId, portId: 0))]
        #expect(validateInputSources(dag, nodeId: sinNode.nodeId, expectedSources: expectedSinSources),
                "Sin node should receive input from ValueNode(2.5)")

        // Validate node roles
        let nodeRoles = classifyNodesByRole(dag)
        #expect(nodeRoles.leafNodes.count == 1, "Expected 1 leaf node (float value node)")
        #expect(nodeRoles.intermediateNodes.count == 0, "Expected 0 intermediate nodes")
        #expect(nodeRoles.rootNode?.patch == .sin, "Expected Sin as root node")

        // Validate topological structure
        #expect(validateTopologicalOrder(dag), "DAG should have valid topological order (no cycles)")
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
        guard let dag = projectData?.graph else {
            #expect(Bool(false), "Expected valid DAG")
            return
        }

        #expect(dag.nodes.count == 3) // x(8), y(8), +

        // Find all node types
        let value8Nodes = findValueNodes(dag, withValue: 8.0)
        let addNodes = findNodesByFunction(dag, function: .add)

        // Verify exact counts (both variables have value 8, but should reuse same node)
        #expect(value8Nodes.count == 2, "Expected exactly two ValueNodes with value 8 (one for each variable)")
        #expect(addNodes.count == 1, "Expected exactly one Add node")

        // Validate connections: Add should receive inputs from both value nodes
        let addNode = addNodes.first!
        let expectedAddSources: [InputValue] = [.incomingEdge(from: OutputCoordinate(nodeId: value8Nodes[0].nodeId, portId: 0)), .incomingEdge(from: OutputCoordinate(nodeId: value8Nodes[1].nodeId, portId: 0))]
        #expect(validateInputSources(dag, nodeId: addNode.nodeId, expectedSources: expectedAddSources),
                "Add node should receive inputs from both ValueNode(8) instances")

        // Validate node roles
        let nodeRoles = classifyNodesByRole(dag)
        #expect(nodeRoles.leafNodes.count == 2, "Expected 2 leaf nodes (both value nodes)")
        #expect(nodeRoles.intermediateNodes.count == 0, "Expected 0 intermediate nodes")
        #expect(nodeRoles.rootNode?.patch == .add, "Expected Add as root node")

        // Validate topological structure
        #expect(validateTopologicalOrder(dag), "DAG should have valid topological order (no cycles)")
    }

    @Test func parseMixedVariableDeclarations() throws {
        let source = """
        var a = 3
        let b = 5
        a - b
        """
        let projectData = ProjectDataParser.parse(source)

        #expect(projectData != nil)
        guard let dag = projectData?.graph else {
            #expect(Bool(false), "Expected valid DAG")
            return
        }

        #expect(dag.nodes.count == 3) // a(3), b(5), -

        // Find all node types
        let value3Nodes = findValueNodes(dag, withValue: 3.0)
        let value5Nodes = findValueNodes(dag, withValue: 5.0)
        let subtractNodes = findNodesByFunction(dag, function: .subtract)

        // Verify exact counts
        #expect(value3Nodes.count == 1, "Expected exactly one ValueNode with value 3")
        #expect(value5Nodes.count == 1, "Expected exactly one ValueNode with value 5")
        #expect(subtractNodes.count == 1, "Expected exactly one Subtract node")

        // Validate connections: Subtract should receive inputs from both value nodes
        let subtractNode = subtractNodes.first!
        let expectedSubtractSources: [InputValue] = [.incomingEdge(from: OutputCoordinate(nodeId: value3Nodes[0].nodeId, portId: 0)), .incomingEdge(from: OutputCoordinate(nodeId: value5Nodes[0].nodeId, portId: 0))]
        #expect(validateInputSources(dag, nodeId: subtractNode.nodeId, expectedSources: expectedSubtractSources),
                "Subtract node should receive inputs from ValueNode(3) and ValueNode(5)")

        // Validate node roles
        let nodeRoles = classifyNodesByRole(dag)
        #expect(nodeRoles.leafNodes.count == 2, "Expected 2 leaf nodes (both value nodes)")
        #expect(nodeRoles.intermediateNodes.count == 0, "Expected 0 intermediate nodes")
        #expect(nodeRoles.rootNode?.patch == .subtract, "Expected Subtract as root node")

        // Validate topological structure
        #expect(validateTopologicalOrder(dag), "DAG should have valid topological order (no cycles)")
    }

    @Test func parseMultipleVariablesDifferentValues() throws {
        let source = """
        let x = 10
        let y = 20
        x + y
        """
        let projectData = ProjectDataParser.parse(source)

        #expect(projectData != nil)
        guard let dag = projectData?.graph else {
            #expect(Bool(false), "Expected valid DAG")
            return
        }

        #expect(dag.nodes.count == 3) // x(10), y(20), +

        // Find all node types
        let value10Nodes = findValueNodes(dag, withValue: 10.0)
        let value20Nodes = findValueNodes(dag, withValue: 20.0)
        let addNodes = findNodesByFunction(dag, function: .add)

        // Verify exact counts
        #expect(value10Nodes.count == 1, "Expected exactly one ValueNode with value 10")
        #expect(value20Nodes.count == 1, "Expected exactly one ValueNode with value 20")
        #expect(addNodes.count == 1, "Expected exactly one Add node")

        // Validate connections: Add should receive inputs from both different value nodes
        let addNode = addNodes.first!
        let expectedAddSources: [InputValue] = [.incomingEdge(from: OutputCoordinate(nodeId: value10Nodes[0].nodeId, portId: 0)), .incomingEdge(from: OutputCoordinate(nodeId: value20Nodes[0].nodeId, portId: 0))]
        #expect(validateInputSources(dag, nodeId: addNode.nodeId, expectedSources: expectedAddSources),
                "Add node should receive inputs from ValueNode(10) and ValueNode(20)")

        // Validate node roles
        let nodeRoles = classifyNodesByRole(dag)
        #expect(nodeRoles.leafNodes.count == 2, "Expected 2 leaf nodes (both value nodes)")
        #expect(nodeRoles.intermediateNodes.count == 0, "Expected 0 intermediate nodes")
        #expect(nodeRoles.rootNode?.patch == .add, "Expected Add as root node")

        // Validate topological structure
        #expect(validateTopologicalOrder(dag), "DAG should have valid topological order (no cycles)")
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
        guard let dag = projectData?.graph else {
            #expect(Bool(false), "Expected valid DAG")
            return
        }

        // Find specific node types
        let value4Nodes = findValueNodes(dag, withValue: 4.0)
        let value9Nodes = findValueNodes(dag, withValue: 9.0)
        let addNodes = findNodesByFunction(dag, function: .add)
        let sinNodes = findNodesByFunction(dag, function: .sin)

        // Validate node counts
        #expect(value4Nodes.count == 1, "Expected 1 node with value 4.0")
        #expect(value9Nodes.count == 1, "Expected 1 node with value 9.0")
        #expect(addNodes.count == 1, "Expected 1 add node")
        #expect(sinNodes.count == 1, "Expected 1 sin node")
        #expect(dag.nodes.count == 4, "Expected total 4 nodes") // a(4), b(9), +, sin

        // Validate connections
        guard let addNode = addNodes.first, let sinNode = sinNodes.first else {
            #expect(Bool(false), "Expected add and sin nodes to exist")
            return
        }

        // Add node should connect to both value nodes
        let addExpectedSources: [InputValue] = [
            .incomingEdge(from: OutputCoordinate(nodeId: value4Nodes[0].nodeId, portId: 0)),
            .incomingEdge(from: OutputCoordinate(nodeId: value9Nodes[0].nodeId, portId: 0))
        ]
        #expect(validateInputSources(dag, nodeId: addNode.nodeId, expectedSources: addExpectedSources), "Add node should connect to value nodes")

        // Sin node should connect to add node
        let sinExpectedSources: [InputValue] = [
            .incomingEdge(from: OutputCoordinate(nodeId: addNode.nodeId, portId: 0))
        ]
        #expect(validateInputSources(dag, nodeId: sinNode.nodeId, expectedSources: sinExpectedSources), "Sin node should connect to add node")

        // Validate node roles
        let nodeRoles = classifyNodesByRole(dag)
        #expect(nodeRoles.leafNodes.count == 2, "Expected 2 leaf nodes (value nodes)")
        #expect(nodeRoles.rootNode?.nodeId == sinNode.nodeId, "Sin node should be root")

        // Validate structural integrity
        #expect(validateTopologicalOrder(dag), "DAG should be acyclic")

        // Validate legacy properties
        #expect(projectData?.description == "Add(ValueNode(4), ValueNode(9)) -> SinNode")
        let rootNode = projectData?.graph.getRootNode()
        #expect(rootNode?.patch == .sin)
    }

    // MARK: - Comparison Operator Tests

    @Test func parseGreaterThan() throws {
        let source = "5 > 3"
        let projectData = ProjectDataParser.parse(source)

        #expect(projectData != nil)
        guard let dag = projectData?.graph else {
            #expect(Bool(false), "Expected valid DAG")
            return
        }

        #expect(dag.nodes.count == 3) // 5, 3, >

        // Find all node types
        let value5Nodes = findValueNodes(dag, withValue: 5.0)
        let value3Nodes = findValueNodes(dag, withValue: 3.0)
        let greaterThanNodes = findNodesByFunction(dag, function: .greaterThan)

        // Verify exact counts
        #expect(value5Nodes.count == 1, "Expected exactly one ValueNode with value 5")
        #expect(value3Nodes.count == 1, "Expected exactly one ValueNode with value 3")
        #expect(greaterThanNodes.count == 1, "Expected exactly one GreaterThan node")

        // Validate connections: GreaterThan should receive inputs from both value nodes
        let greaterThanNode = greaterThanNodes.first!
        let expectedGreaterThanSources: [InputValue] = [.incomingEdge(from: OutputCoordinate(nodeId: value5Nodes[0].nodeId, portId: 0)), .incomingEdge(from: OutputCoordinate(nodeId: value3Nodes[0].nodeId, portId: 0))]
        #expect(validateInputSources(dag, nodeId: greaterThanNode.nodeId, expectedSources: expectedGreaterThanSources),
                "GreaterThan node should receive inputs from ValueNode(5) and ValueNode(3)")

        // Validate node roles
        let nodeRoles = classifyNodesByRole(dag)
        #expect(nodeRoles.leafNodes.count == 2, "Expected 2 leaf nodes (value nodes)")
        #expect(nodeRoles.intermediateNodes.count == 0, "Expected 0 intermediate nodes")
        #expect(nodeRoles.rootNode?.patch == .greaterThan, "Expected GreaterThan as root node")

        // Validate topological structure
        #expect(validateTopologicalOrder(dag), "DAG should have valid topological order (no cycles)")

        // Validate execution path
        let executionPath = traceExecutionPath(from: dag.resultNodeId, in: dag)
        #expect(executionPath.contains(.greaterThan), "Execution path should include greaterThan")
        // Value nodes are excluded from execution path (operation chain focus)
    }

    @Test func parseLessThan() throws {
        let source = "2 < 10"
        let projectData = ProjectDataParser.parse(source)

        #expect(projectData != nil)
        guard let dag = projectData?.graph else {
            #expect(Bool(false), "Expected valid DAG")
            return
        }

        #expect(dag.nodes.count == 3) // 2, 10, <

        // Find all node types
        let value2Nodes = findValueNodes(dag, withValue: 2.0)
        let value10Nodes = findValueNodes(dag, withValue: 10.0)
        let lessThanNodes = findNodesByFunction(dag, function: .lessThan)

        // Verify exact counts
        #expect(value2Nodes.count == 1, "Expected exactly one ValueNode with value 2")
        #expect(value10Nodes.count == 1, "Expected exactly one ValueNode with value 10")
        #expect(lessThanNodes.count == 1, "Expected exactly one LessThan node")

        // Validate connections: LessThan should receive inputs from both value nodes
        let lessThanNode = lessThanNodes.first!
        let expectedLessThanSources: [InputValue] = [.incomingEdge(from: OutputCoordinate(nodeId: value2Nodes[0].nodeId, portId: 0)), .incomingEdge(from: OutputCoordinate(nodeId: value10Nodes[0].nodeId, portId: 0))]
        #expect(validateInputSources(dag, nodeId: lessThanNode.nodeId, expectedSources: expectedLessThanSources),
                "LessThan node should receive inputs from ValueNode(2) and ValueNode(10)")

        // Validate node roles
        let nodeRoles = classifyNodesByRole(dag)
        #expect(nodeRoles.leafNodes.count == 2, "Expected 2 leaf nodes (value nodes)")
        #expect(nodeRoles.intermediateNodes.count == 0, "Expected 0 intermediate nodes")
        #expect(nodeRoles.rootNode?.patch == .lessThan, "Expected LessThan as root node")

        // Validate topological structure
        #expect(validateTopologicalOrder(dag), "DAG should have valid topological order (no cycles)")

        // Validate execution path
        let executionPath = traceExecutionPath(from: dag.resultNodeId, in: dag)
        #expect(executionPath.contains(.lessThan), "Execution path should include lessThan")
        // Value nodes are excluded from execution path (operation chain focus)
    }

    @Test func parseEqual() throws {
        let source = """
        let x = 7
        x == 5
        """
        let projectData = ProjectDataParser.parse(source)

        #expect(projectData != nil)
        guard let dag = projectData?.graph else {
            #expect(Bool(false), "Expected valid DAG")
            return
        }

        #expect(dag.nodes.count == 3) // x(7), 5, ==

        // Find all node types
        let value7Nodes = findValueNodes(dag, withValue: 7.0)
        let value5Nodes = findValueNodes(dag, withValue: 5.0)
        let equalNodes = findNodesByFunction(dag, function: .equal)

        // Verify exact counts
        #expect(value7Nodes.count == 1, "Expected exactly one ValueNode with value 7")
        #expect(value5Nodes.count == 1, "Expected exactly one ValueNode with value 5")
        #expect(equalNodes.count == 1, "Expected exactly one Equal node")

        // Validate connections: Equal should receive inputs from both value nodes
        let equalNode = equalNodes.first!
        let expectedEqualSources: [InputValue] = [.incomingEdge(from: OutputCoordinate(nodeId: value7Nodes[0].nodeId, portId: 0)), .incomingEdge(from: OutputCoordinate(nodeId: value5Nodes[0].nodeId, portId: 0))]
        #expect(validateInputSources(dag, nodeId: equalNode.nodeId, expectedSources: expectedEqualSources),
                "Equal node should receive inputs from ValueNode(7) and ValueNode(5)")

        // Validate node roles
        let nodeRoles = classifyNodesByRole(dag)
        #expect(nodeRoles.leafNodes.count == 2, "Expected 2 leaf nodes (value nodes)")
        #expect(nodeRoles.intermediateNodes.count == 0, "Expected 0 intermediate nodes")
        #expect(nodeRoles.rootNode?.patch == .equal, "Expected Equal as root node")

        // Validate topological structure
        #expect(validateTopologicalOrder(dag), "DAG should have valid topological order (no cycles)")
    }

    // MARK: - Ternary Expression Tests

    @Test func parseSimpleTernary() throws {
        let source = "true ? 5 : 10"
        let projectData = ProjectDataParser.parse(source)

        #expect(projectData != nil)
        guard let dag = projectData?.graph else {
            #expect(Bool(false), "Expected valid DAG")
            return
        }

        #expect(dag.nodes.count == 4) // true, 5, 10, ?:

        // Find all node types
        let trueNodes = findValueNodes(dag, withValue: 1.0) // true = 1.0
        let value5Nodes = findValueNodes(dag, withValue: 5.0)
        let value10Nodes = findValueNodes(dag, withValue: 10.0)
        let optionPickerNodes = findNodesByFunction(dag, function: .optionPicker)

        // Verify exact counts
        #expect(trueNodes.count == 1, "Expected exactly one ValueNode with value 1 (true)")
        #expect(value5Nodes.count == 1, "Expected exactly one ValueNode with value 5")
        #expect(value10Nodes.count == 1, "Expected exactly one ValueNode with value 10")
        #expect(optionPickerNodes.count == 1, "Expected exactly one OptionPicker node")

        // Validate connections: OptionPicker should receive condition (true), false value (10), true value (5)
        let optionPickerNode = optionPickerNodes.first!
        let expectedOptionPickerSources: [InputValue] = [.incomingEdge(from: OutputCoordinate(nodeId: trueNodes[0].nodeId, portId: 0)), .incomingEdge(from: OutputCoordinate(nodeId: value10Nodes[0].nodeId, portId: 0)), .incomingEdge(from: OutputCoordinate(nodeId: value5Nodes[0].nodeId, portId: 0))]
        #expect(validateInputSources(dag, nodeId: optionPickerNode.nodeId, expectedSources: expectedOptionPickerSources),
                "OptionPicker node should receive condition (true), false value (10), and true value (5)")

        // Validate node roles
        let nodeRoles = classifyNodesByRole(dag)
        #expect(nodeRoles.leafNodes.count == 3, "Expected 3 leaf nodes (all value nodes)")
        #expect(nodeRoles.intermediateNodes.count == 0, "Expected 0 intermediate nodes")
        #expect(nodeRoles.rootNode?.patch == .optionPicker, "Expected OptionPicker as root node")

        // Validate topological structure
        #expect(validateTopologicalOrder(dag), "DAG should have valid topological order (no cycles)")
    }

    @Test func parseComparisonTernary() throws {
        let source = "5 > 4 ? 100 : 0"
        let projectData = ProjectDataParser.parse(source)

        #expect(projectData != nil)
        guard let dag = projectData?.graph else {
            #expect(Bool(false), "Expected valid DAG")
            return
        }

        #expect(dag.nodes.count == 6) // 5, 4, >, 100, 0, ?:

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
        let expectedGreaterThanSources: [InputValue] = [.incomingEdge(from: OutputCoordinate(nodeId: value5Nodes[0].nodeId, portId: 0)), .incomingEdge(from: OutputCoordinate(nodeId: value4Nodes[0].nodeId, portId: 0))]
        #expect(validateInputSources(dag, nodeId: greaterThanNode.nodeId, expectedSources: expectedGreaterThanSources),
                "GreaterThan node should receive inputs from ValueNode(5) and ValueNode(4)")

        // Validate input connections for OptionPicker: condition from GreaterThan, false value (0), true value (100)
        let optionPickerNode = optionPickerNodes.first!
        let expectedOptionPickerSources: [InputValue] = [.incomingEdge(from: OutputCoordinate(nodeId: greaterThanNode.nodeId, portId: 0)), .incomingEdge(from: OutputCoordinate(nodeId: value0Nodes[0].nodeId, portId: 0)), .incomingEdge(from: OutputCoordinate(nodeId: value100Nodes[0].nodeId, portId: 0))]
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

    @Test func parseVariableTernary() throws {
        let source = """
        let x = 8
        let y = 12
        x > y ? x : y
        """
        let projectData = ProjectDataParser.parse(source)

        #expect(projectData != nil)
        guard let dag = projectData?.graph else {
            #expect(Bool(false), "Expected valid DAG")
            return
        }

        // Find specific node types
        let value8Nodes = findValueNodes(dag, withValue: 8.0)
        let value12Nodes = findValueNodes(dag, withValue: 12.0)
        let greaterThanNodes = findNodesByFunction(dag, function: .greaterThan)
        let pickerNodes = findNodesByFunction(dag, function: .optionPicker)

        // Validate node counts
        #expect(value8Nodes.count == 1, "Expected 1 node with value 8.0")
        #expect(value12Nodes.count == 1, "Expected 1 node with value 12.0")
        #expect(greaterThanNodes.count == 1, "Expected 1 greaterThan node")
        #expect(pickerNodes.count == 1, "Expected 1 option picker node")
        #expect(dag.nodes.count == 4, "Expected total 4 nodes") // ValueNode(8), ValueNode(12), GreaterThan, OptionPicker (variables reused)

        // Validate connections for ternary operation
        guard let greaterThanNode = greaterThanNodes.first,
              let pickerNode = pickerNodes.first else {
            #expect(Bool(false), "Expected greaterThan and picker nodes to exist")
            return
        }

        // GreaterThan node should connect to both value nodes
        let greaterThanExpectedSources: [InputValue] = [
            .incomingEdge(from: OutputCoordinate(nodeId: value8Nodes[0].nodeId, portId: 0)),
            .incomingEdge(from: OutputCoordinate(nodeId: value12Nodes[0].nodeId, portId: 0))
        ]
        #expect(validateInputSources(dag, nodeId: greaterThanNode.nodeId, expectedSources: greaterThanExpectedSources), "GreaterThan node should connect to both value nodes")

        // Option picker should have 3 inputs: condition, true value, false value
        #expect(pickerNode.inputs.count == 3, "Option picker should have 3 inputs")

        // Validate node roles
        let nodeRoles = classifyNodesByRole(dag)
        #expect(nodeRoles.leafNodes.count >= 2, "Expected at least 2 leaf nodes (value nodes)")
        #expect(nodeRoles.rootNode?.nodeId == pickerNode.nodeId, "Option picker should be root")

        // Validate structural integrity
        #expect(validateTopologicalOrder(dag), "DAG should be acyclic")

        let rootNode = projectData?.graph.getRootNode()
        #expect(rootNode?.patch == .optionPicker)
        #expect(rootNode?.inputs.count == 3)
    }

    @Test func parseNestedTernary() throws {
        let source = "true ? (false ? 1 : 2) : 3"
        let projectData = ProjectDataParser.parse(source)

        #expect(projectData != nil)
        guard let dag = projectData?.graph else {
            #expect(Bool(false), "Expected valid DAG")
            return
        }

        #expect(dag.nodes.count == 7) // true, false, 1, 2, 3, inner ?:, outer ?:

        // Find all node types
        let value1Nodes = findValueNodes(dag, withValue: 1.0) // true
        let value0Nodes = findValueNodes(dag, withValue: 0.0) // false
        let literal1Nodes = findValueNodes(dag, withValue: 1.0) // Will include both true and literal 1
        let value2Nodes = findValueNodes(dag, withValue: 2.0)
        let value3Nodes = findValueNodes(dag, withValue: 3.0)
        let optionPickerNodes = findNodesByFunction(dag, function: .optionPicker)

        // Verify node counts (note: 1.0 appears twice - as 'true' and as literal '1')
        #expect(value0Nodes.count == 1, "Expected exactly one ValueNode with value 0 (false)")
        #expect(value2Nodes.count == 1, "Expected exactly one ValueNode with value 2")
        #expect(value3Nodes.count == 1, "Expected exactly one ValueNode with value 3")
        #expect(optionPickerNodes.count == 2, "Expected exactly two OptionPicker nodes (nested)")

        // Verify we have the expected node structure
        let allValueNodes = findNodesByFunction(dag, function: .value)
        #expect(allValueNodes.count == 5, "Expected 5 value nodes total")

        // Verify node roles for complex nested structure
        let roles = classifyNodesByRole(dag)
        #expect(roles.leafNodes.count == 5, "Expected 5 leaf nodes (all value nodes)")
        #expect(roles.intermediateNodes.count == 1, "Expected 1 intermediate node (inner OptionPicker)")
        #expect(roles.rootNode?.patch == .optionPicker, "Expected OptionPicker as root node")

        // Verify graph structure
        #expect(validateTopologicalOrder(dag), "DAG should be acyclic")

        // Verify execution path includes nested structure
        let executionPath = traceExecutionPath(from: dag.resultNodeId, in: dag)
        #expect(executionPath.filter({ $0 == .optionPicker }).count >= 2,
               "Execution path should include at least 2 OptionPicker nodes for nested ternary")
        // Value nodes are excluded from execution path (operation chain focus)

        // Verify root node has proper input count for ternary
        #expect(roles.rootNode?.inputs.count == 3, "Root OptionPicker should have 3 inputs (condition, false-value, true-value)")
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
        guard let dag = projectData?.graph else {
            #expect(Bool(false), "Expected valid DAG")
            return
        }

        #expect(dag.nodes.count == 4) // true, 5, 10, if-else

        // Find all node types (true = 1.0 internally)
        let trueNodes = findValueNodes(dag, withValue: 1.0)
        let value5Nodes = findValueNodes(dag, withValue: 5.0)
        let value10Nodes = findValueNodes(dag, withValue: 10.0)
        let optionPickerNodes = findNodesByFunction(dag, function: .optionPicker)

        // Verify exact counts
        #expect(trueNodes.count == 1, "Expected exactly one ValueNode with value 1 (true)")
        #expect(value5Nodes.count == 1, "Expected exactly one ValueNode with value 5")
        #expect(value10Nodes.count == 1, "Expected exactly one ValueNode with value 10")
        #expect(optionPickerNodes.count == 1, "Expected exactly one OptionPicker node")

        // Validate connections: OptionPicker should receive condition, false value, true value
        let optionPickerNode = optionPickerNodes.first!
        let expectedSources: [InputValue] = [.incomingEdge(from: OutputCoordinate(nodeId: trueNodes[0].nodeId, portId: 0)), .incomingEdge(from: OutputCoordinate(nodeId: value10Nodes[0].nodeId, portId: 0)), .incomingEdge(from: OutputCoordinate(nodeId: value5Nodes[0].nodeId, portId: 0))]
        #expect(validateInputSources(dag, nodeId: optionPickerNode.nodeId, expectedSources: expectedSources),
                "OptionPicker should receive condition (true), false value (10), true value (5)")

        // Validate node roles
        let nodeRoles = classifyNodesByRole(dag)
        #expect(nodeRoles.leafNodes.count == 3, "Expected 3 leaf nodes (all value nodes)")
        #expect(nodeRoles.intermediateNodes.count == 0, "Expected 0 intermediate nodes")
        #expect(nodeRoles.rootNode?.patch == .optionPicker, "Expected OptionPicker as root node")

        // Validate topological structure
        #expect(validateTopologicalOrder(dag), "DAG should have valid topological order (no cycles)")
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
        let expectedGreaterThanSources: [InputValue] = [.incomingEdge(from: OutputCoordinate(nodeId: value5Nodes[0].nodeId, portId: 0)), .incomingEdge(from: OutputCoordinate(nodeId: value4Nodes[0].nodeId, portId: 0))]
        #expect(validateInputSources(dag, nodeId: greaterThanNode.nodeId, expectedSources: expectedGreaterThanSources),
                "GreaterThan node should receive inputs from ValueNode(5) and ValueNode(4)")

        // Validate input connections for OptionPicker: should receive condition from GreaterThan, then false value (0), then true value (100)
        let optionPickerNode = optionPickerNodes.first!
        let expectedOptionPickerSources: [InputValue] = [.incomingEdge(from: OutputCoordinate(nodeId: greaterThanNode.nodeId, portId: 0)), .incomingEdge(from: OutputCoordinate(nodeId: value0Nodes[0].nodeId, portId: 0)), .incomingEdge(from: OutputCoordinate(nodeId: value100Nodes[0].nodeId, portId: 0))]
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
        let expectedGreaterThanSources: [InputValue] = [.incomingEdge(from: OutputCoordinate(nodeId: valueNodes8[0].nodeId, portId: 0)), .incomingEdge(from: OutputCoordinate(nodeId: valueNodes12[0].nodeId, portId: 0))]
        #expect(validateInputSources(dag, nodeId: greaterThanNode.nodeId, expectedSources: expectedGreaterThanSources),
                "GreaterThan node should receive inputs from ValueNode(8) and ValueNode(12)")

        // Validate connections: OptionPicker should receive condition from GreaterThan and values from both value nodes
        let optionPickerNode = optionPickerNodes.first!
        let expectedOptionPickerSources: [InputValue] = [.incomingEdge(from: OutputCoordinate(nodeId: greaterThanNode.nodeId, portId: 0)), .incomingEdge(from: OutputCoordinate(nodeId: valueNodes12[0].nodeId, portId: 0)), .incomingEdge(from: OutputCoordinate(nodeId: valueNodes8[0].nodeId, portId: 0))]
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
        guard let dag = projectData?.graph else {
            #expect(Bool(false), "Expected valid DAG")
            return
        }

        // Find specific node types
        let value1Nodes = findValueNodes(dag, withValue: 1.0) // true
        let value0Nodes = findValueNodes(dag, withValue: 0.0) // false
        let value2Nodes = findValueNodes(dag, withValue: 2.0) // literal 2
        let value3Nodes = findValueNodes(dag, withValue: 3.0) // literal 3
        let pickerNodes = findNodesByFunction(dag, function: .optionPicker)

        // Validate node counts
        #expect(value1Nodes.count >= 1, "Expected at least 1 node with value 1.0 (true or literal)")
        #expect(value0Nodes.count >= 1, "Expected at least 1 node with value 0.0 (false)")
        #expect(value2Nodes.count == 1, "Expected 1 node with value 2.0")
        #expect(value3Nodes.count == 1, "Expected 1 node with value 3.0")
        #expect(pickerNodes.count == 2, "Expected 2 option picker nodes (inner and outer)")
        #expect(dag.nodes.count == 7, "Expected total 7 nodes") // true, false, 1, 2, 3, inner if-else, outer if-else

        // Validate structural integrity for complex nested case
        let nodeRoles = classifyNodesByRole(dag)
        #expect(nodeRoles.leafNodes.count >= 4, "Expected at least 4 leaf nodes (value nodes)")
        #expect(nodeRoles.rootNode?.patch == .optionPicker, "Outer option picker should be root")

        // Validate topological order (critical for nested structures)
        #expect(validateTopologicalOrder(dag), "DAG should be acyclic despite complexity")

        // Validate legacy properties
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
        guard let dag = projectData?.graph else {
            #expect(Bool(false), "Expected valid DAG")
            return
        }

        // Find specific node types
        let valueNodes = findValueNodes(dag, withValue: 5.9)
        let roundedNodes = findNodesByFunction(dag, function: .rounded)

        // Validate node counts
        #expect(valueNodes.count == 1, "Expected 1 value node with 5.9")
        #expect(roundedNodes.count == 1, "Expected 1 rounded node")
        #expect(dag.nodes.count == 2, "Expected total 2 nodes")

        // Validate connections
        guard let valueNode = valueNodes.first, let roundedNode = roundedNodes.first else {
            #expect(Bool(false), "Expected both nodes to exist")
            return
        }

        let expectedSources: [InputValue] = [
            .incomingEdge(from: OutputCoordinate(nodeId: valueNode.nodeId, portId: 0))
        ]
        #expect(validateInputSources(dag, nodeId: roundedNode.nodeId, expectedSources: expectedSources), "Rounded node should connect to value node")

        // Validate node roles
        let nodeRoles = classifyNodesByRole(dag)
        #expect(nodeRoles.leafNodes.count == 1, "Expected 1 leaf node (value node)")
        #expect(nodeRoles.rootNode?.nodeId == roundedNode.nodeId, "Rounded node should be root")

        // Validate structural integrity
        #expect(validateTopologicalOrder(dag), "DAG should be acyclic")

        // Validate legacy properties
        #expect(projectData?.description == "ValueNode(5) -> RoundedNode")
        let rootNode = projectData?.graph.getRootNode()
        #expect(rootNode?.patch == .rounded)
    }

    @Test func parseSimpleMagnitude() throws {
        let source = "5.9.magnitude"
        let projectData = ProjectDataParser.parse(source)

        #expect(projectData != nil)
        guard let dag = projectData?.graph else {
            #expect(Bool(false), "Expected valid DAG")
            return
        }

        // Find specific node types
        let valueNodes = findValueNodes(dag, withValue: 5.9)
        let magnitudeNodes = findNodesByFunction(dag, function: .magnitude)

        // Validate node counts
        #expect(valueNodes.count == 1, "Expected 1 value node with 5.9")
        #expect(magnitudeNodes.count == 1, "Expected 1 magnitude node")
        #expect(dag.nodes.count == 2, "Expected total 2 nodes")

        // Validate connections
        guard let valueNode = valueNodes.first, let magnitudeNode = magnitudeNodes.first else {
            #expect(Bool(false), "Expected both nodes to exist")
            return
        }

        let expectedSources: [InputValue] = [
            .incomingEdge(from: OutputCoordinate(nodeId: valueNode.nodeId, portId: 0))
        ]
        #expect(validateInputSources(dag, nodeId: magnitudeNode.nodeId, expectedSources: expectedSources), "Magnitude node should connect to value node")

        // Validate node roles
        let nodeRoles = classifyNodesByRole(dag)
        #expect(nodeRoles.leafNodes.count == 1, "Expected 1 leaf node (value node)")
        #expect(nodeRoles.rootNode?.nodeId == magnitudeNode.nodeId, "Magnitude node should be root")

        // Validate structural integrity
        #expect(validateTopologicalOrder(dag), "DAG should be acyclic")

        // Validate legacy properties
        #expect(projectData?.description == "ValueNode(5) -> MagnitudeNode")
        let rootNode = projectData?.graph.getRootNode()
        #expect(rootNode?.patch == .magnitude)
    }

    @Test func parseMethodChaining() throws {
        let source = "5.9.rounded().magnitude"
        let projectData = ProjectDataParser.parse(source)

        #expect(projectData != nil)
        guard let dag = projectData?.graph else {
            #expect(Bool(false), "Expected valid DAG")
            return
        }

        // Find specific node types
        let valueNodes = findValueNodes(dag, withValue: 5.9)
        let roundedNodes = findNodesByFunction(dag, function: .rounded)
        let magnitudeNodes = findNodesByFunction(dag, function: .magnitude)

        // Validate node counts
        #expect(valueNodes.count == 1, "Expected 1 value node with 5.9")
        #expect(roundedNodes.count == 1, "Expected 1 rounded node")
        #expect(magnitudeNodes.count == 1, "Expected 1 magnitude node")
        #expect(dag.nodes.count == 3, "Expected total 3 nodes")

        // Validate connections for method chaining
        guard let valueNode = valueNodes.first,
              let roundedNode = roundedNodes.first,
              let magnitudeNode = magnitudeNodes.first else {
            #expect(Bool(false), "Expected all nodes to exist")
            return
        }

        // Rounded node should connect to value node
        let roundedExpectedSources: [InputValue] = [
            .incomingEdge(from: OutputCoordinate(nodeId: valueNode.nodeId, portId: 0))
        ]
        #expect(validateInputSources(dag, nodeId: roundedNode.nodeId, expectedSources: roundedExpectedSources), "Rounded node should connect to value node")

        // Magnitude node should connect to rounded node
        let magnitudeExpectedSources: [InputValue] = [
            .incomingEdge(from: OutputCoordinate(nodeId: roundedNode.nodeId, portId: 0))
        ]
        #expect(validateInputSources(dag, nodeId: magnitudeNode.nodeId, expectedSources: magnitudeExpectedSources), "Magnitude node should connect to rounded node")

        // Validate node roles
        let nodeRoles = classifyNodesByRole(dag)
        #expect(nodeRoles.leafNodes.count == 1, "Expected 1 leaf node (value node)")
        #expect(nodeRoles.rootNode?.nodeId == magnitudeNode.nodeId, "Magnitude node should be root")

        // Validate structural integrity
        #expect(validateTopologicalOrder(dag), "DAG should be acyclic")

        // Validate execution path tracing
        let executionPath = traceExecutionPath(from: magnitudeNode.nodeId, in: dag)
        #expect(executionPath == [.magnitude, .rounded], "Execution path should show magnitude -> rounded")

        // Validate legacy properties
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
        guard let dag = projectData?.graph else {
            #expect(Bool(false), "Expected valid DAG")
            return
        }

        // Find specific node types
        let valueNodes = findValueNodes(dag, withValue: 2.7)
        let roundedNodes = findNodesByFunction(dag, function: .rounded)

        // Validate node counts
        #expect(valueNodes.count == 1, "Expected 1 value node with 2.7")
        #expect(roundedNodes.count == 1, "Expected 1 rounded node")
        #expect(dag.nodes.count == 2, "Expected total 2 nodes")

        // Validate connections
        guard let valueNode = valueNodes.first, let roundedNode = roundedNodes.first else {
            #expect(Bool(false), "Expected both nodes to exist")
            return
        }

        let expectedSources: [InputValue] = [
            .incomingEdge(from: OutputCoordinate(nodeId: valueNode.nodeId, portId: 0))
        ]
        #expect(validateInputSources(dag, nodeId: roundedNode.nodeId, expectedSources: expectedSources), "Rounded node should connect to value node")

        // Validate node roles
        let nodeRoles = classifyNodesByRole(dag)
        #expect(nodeRoles.leafNodes.count == 1, "Expected 1 leaf node (value node)")
        #expect(nodeRoles.rootNode?.nodeId == roundedNode.nodeId, "Rounded node should be root")

        // Validate structural integrity
        #expect(validateTopologicalOrder(dag), "DAG should be acyclic")

        // Validate legacy properties
        #expect(projectData?.description == "ValueNode(2) -> RoundedNode")

        let rootNode = projectData?.graph.getRootNode()
        #expect(rootNode?.patch == .rounded)
    }

    @Test func parseNestedWithMethod() throws {
        let source = "sin(5.9.rounded())"
        let projectData = ProjectDataParser.parse(source)

        #expect(projectData != nil)
        guard let dag = projectData?.graph else {
            #expect(Bool(false), "Expected valid DAG")
            return
        }

        // Find specific node types
        let valueNodes = findValueNodes(dag, withValue: 5.9)
        let roundedNodes = findNodesByFunction(dag, function: .rounded)
        let sinNodes = findNodesByFunction(dag, function: .sin)

        // Validate node counts
        #expect(valueNodes.count == 1, "Expected 1 value node with 5.9")
        #expect(roundedNodes.count == 1, "Expected 1 rounded node")
        #expect(sinNodes.count == 1, "Expected 1 sin node")
        #expect(dag.nodes.count == 3, "Expected total 3 nodes")

        // Validate connections
        guard let valueNode = valueNodes.first,
              let roundedNode = roundedNodes.first,
              let sinNode = sinNodes.first else {
            #expect(Bool(false), "Expected all nodes to exist")
            return
        }

        // Rounded node should connect to value node
        let roundedExpectedSources: [InputValue] = [
            .incomingEdge(from: OutputCoordinate(nodeId: valueNode.nodeId, portId: 0))
        ]
        #expect(validateInputSources(dag, nodeId: roundedNode.nodeId, expectedSources: roundedExpectedSources), "Rounded node should connect to value node")

        // Sin node should connect to rounded node
        let sinExpectedSources: [InputValue] = [
            .incomingEdge(from: OutputCoordinate(nodeId: roundedNode.nodeId, portId: 0))
        ]
        #expect(validateInputSources(dag, nodeId: sinNode.nodeId, expectedSources: sinExpectedSources), "Sin node should connect to rounded node")

        // Validate node roles
        let nodeRoles = classifyNodesByRole(dag)
        #expect(nodeRoles.leafNodes.count == 1, "Expected 1 leaf node (value node)")
        #expect(nodeRoles.rootNode?.nodeId == sinNode.nodeId, "Sin node should be root")

        // Validate structural integrity
        #expect(validateTopologicalOrder(dag), "DAG should be acyclic")

        // Validate execution path tracing
        let executionPath = traceExecutionPath(from: sinNode.nodeId, in: dag)
        #expect(executionPath == [.sin, .rounded], "Execution path should show sin -> rounded")

        // Validate legacy properties
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

    // MARK: - SwiftUI view parsing

    @Test func parseRectangleOpacityModifierCapturesLayerMetadata() throws {
        let source = "Rectangle().opacity(0.5)"
        let projectData = ProjectDataParser.parse(source)

        #expect(projectData != nil)
        guard let projectData = projectData else { return }

        #expect(projectData.views.count == 1, "Expected one SwiftUI layer")

        guard let layer = projectData.views.first else {
            #expect(Bool(false), "Missing SwiftUI layer entry")
            return
        }

        #expect(layer.layer == .rectangle)
        #expect(layer.modifiers.count == 1)

        let modifier = layer.modifiers[0]
        #expect(modifier.kind == .opacity)
        #expect(modifier.argumentDescription == "0.5")
        #expect(modifier.numericPayloads == [0.5])
    }

    @Test func parseEllipseFillModifierCapturesArgumentDescription() throws {
        let source = "Ellipse().fill(Color.red)"
        let projectData = ProjectDataParser.parse(source)

        #expect(projectData != nil)
        guard let projectData = projectData else { return }

        #expect(projectData.views.count == 1, "Expected one SwiftUI layer")

        guard let layer = projectData.views.first else {
            #expect(Bool(false), "Missing SwiftUI layer entry")
            return
        }

        #expect(layer.layer == .ellipse)
        #expect(layer.modifiers.count == 1)

        let modifier = layer.modifiers[0]
        #expect(modifier.kind == .fill)
        #expect(modifier.argumentDescription == "Color.red")
        #expect(modifier.numericPayloads.isEmpty)
    }

    @Test func parseRectangleFillOpacityChainPreservesModifierOrder() throws {
        let source = "Rectangle().fill(Color.blue).opacity(0.4)"
        let projectData = ProjectDataParser.parse(source)

        #expect(projectData != nil)
        guard let projectData = projectData else { return }

        #expect(projectData.views.count == 1, "Expected one SwiftUI layer")

        guard let layer = projectData.views.first else {
            #expect(Bool(false), "Missing SwiftUI layer entry")
            return
        }

        #expect(layer.layer == .rectangle)
        #expect(layer.modifiers.count == 2, "Expected two modifiers in declaration order")

        let firstModifier = layer.modifiers[0]
        #expect(firstModifier.kind == .fill)
        #expect(firstModifier.argumentDescription == "Color.blue")
        #expect(firstModifier.numericPayloads.isEmpty)

        let secondModifier = layer.modifiers[1]
        #expect(secondModifier.kind == .opacity)
        #expect(secondModifier.argumentDescription == "0.4")
        #expect(secondModifier.numericPayloads == [0.4])
    }

    @Test func parseRectangleOpacityExpressionEvaluatesNumericPayload() throws {
        let source = """
        let x = 0.25
        let y = 0.25
        Rectangle().opacity(x + y)
        """

        let projectData = ProjectDataParser.parse(source)

        #expect(projectData != nil)
        guard let projectData = projectData else { return }

        #expect(projectData.views.count == 1)

        let layer = projectData.views[0]
        #expect(layer.layer == .rectangle)
        #expect(layer.modifiers.count == 1)

        let modifier = layer.modifiers[0]
        #expect(modifier.kind == .opacity)
        #expect(modifier.argumentDescription == "x + y")
        #expect(modifier.numericPayloads == [0.5])

        let dag = projectData.graph
        guard let rootNode = dag.nodes[dag.resultNodeId] else {
            #expect(Bool(false), "Expected root node to exist")
            return
        }

        guard case .layerInput(let layerInputNode) = rootNode else {
            #expect(Bool(false), "Expected root node to be a layer input")
            return
        }

        guard case .incomingEdge(let incoming) = layerInputNode.input.input else {
            #expect(Bool(false), "Expected opacity layer input to reference upstream node")
            return
        }

        guard let upstreamNode = dag.nodes[incoming.nodeId],
              case .function(let functionNode) = upstreamNode else {
            #expect(Bool(false), "Expected upstream node to be a function")
            return
        }

        #expect(functionNode.patch == .add, "Opacity input should come from add node")
        #expect(functionNode.inputs.count == 2, "Add node should have two inputs")
    }

    @Test func parseRectangleOpacityExpressionResolvesIntermediateBinding() throws {
        let source = """
        let x = 0.25
        let y = 0.25
        let z = x + y
        Rectangle().opacity(z)
        """

        let projectData = ProjectDataParser.parse(source)

        #expect(projectData != nil)
        guard let projectData = projectData else { return }

        #expect(projectData.views.count == 1)

        let layer = projectData.views[0]
        #expect(layer.layer == .rectangle)
        #expect(layer.modifiers.count == 1)

        let modifier = layer.modifiers[0]
        #expect(modifier.kind == .opacity)
        #expect(modifier.argumentDescription == "z")
        #expect(modifier.numericPayloads == [0.5])

        let dag = projectData.graph

        let addNodes = dag.nodes.values.compactMap { node -> DAGFunctionNode? in
            guard case .function(let functionNode) = node, functionNode.patch == .add else {
                return nil
            }
            return functionNode
        }
        #expect(addNodes.count == 1, "Expected exactly one add node for z binding")

        guard let rootNode = dag.nodes[dag.resultNodeId],
              case .layerInput(let layerInputNode) = rootNode else {
            #expect(Bool(false), "Expected root node to be layer input")
            return
        }

        guard case .incomingEdge(let incoming) = layerInputNode.input.input,
              let upstreamNode = dag.nodes[incoming.nodeId],
              case .function(let functionNode) = upstreamNode else {
            #expect(Bool(false), "Expected opacity input to reference add node")
            return
        }

        #expect(functionNode.patch == .add, "Opacity modifier should connect to the z add node")
        #expect(functionNode.inputs.count == 2)
    }
}
