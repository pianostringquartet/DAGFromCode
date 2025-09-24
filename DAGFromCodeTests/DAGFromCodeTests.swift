//
//  DAGFromCodeTests.swift
//  DAGFromCodeTests
//
//  Created by Christian J Clampitt on 9/24/25.
//

import Testing
@testable import DAGFromCode

struct DAGFromCodeTests {

    @Test func parseSimpleValue() throws {
        let source = "4"
        let dag = DAGParser.parse(source)

        #expect(dag != nil)
        #expect(dag?.nodes.count == 1)
        #expect(dag?.description == "ValueNode(4)")

        let rootNode = dag?.getRootNode()
        #expect(rootNode?.kind == .value)
        if let firstInput = rootNode?.inputs.first,
           case .value(let val) = firstInput.input {
            #expect(val == 4.0)
        } else {
            Issue.record("Expected value input")
        }
    }

    @Test func parseSingleFunction() throws {
        let source = "sin(1)"
        let dag = DAGParser.parse(source)

        #expect(dag != nil)
        #expect(dag?.nodes.count == 2)
        #expect(dag?.description == "ValueNode(1) -> SinNode")

        let rootNode = dag?.getRootNode()
        #expect(rootNode?.kind == .sin)
    }

    @Test func parseNestedFunctions() throws {
        let source = "sin(sqrt(4))"
        let dag = DAGParser.parse(source)

        #expect(dag != nil)
        #expect(dag?.nodes.count == 3)
        #expect(dag?.description == "ValueNode(4) -> SquareRootNode -> SinNode")

        let rootNode = dag?.getRootNode()
        #expect(rootNode?.kind == .sin)
    }

    @Test func parseTripleNested() throws {
        let source = "cos(sin(sqrt(4)))"
        let dag = DAGParser.parse(source)

        #expect(dag != nil)
        #expect(dag?.nodes.count == 4)
        #expect(dag?.description == "ValueNode(4) -> SquareRootNode -> SinNode -> CosNode")

        let rootNode = dag?.getRootNode()
        #expect(rootNode?.kind == .cos)
    }

    @Test func parseCosSin() throws {
        let source = "cos(sin(1))"
        let dag = DAGParser.parse(source)

        #expect(dag != nil)
        #expect(dag?.nodes.count == 3)
        #expect(dag?.description == "ValueNode(1) -> SinNode -> CosNode")

        let rootNode = dag?.getRootNode()
        #expect(rootNode?.kind == .cos)
    }

    @Test func parseFloatValue() throws {
        let source = "2.5"
        let dag = DAGParser.parse(source)

        #expect(dag != nil)
        #expect(dag?.nodes.count == 1)
        #expect(dag?.description == "ValueNode(2)")

        let rootNode = dag?.getRootNode()
        #expect(rootNode?.kind == .value)
        if let firstInput = rootNode?.inputs.first,
           case .value(let val) = firstInput.input {
            #expect(val == 2.5)
        } else {
            Issue.record("Expected value input")
        }
    }

    @Test func parseSqrtOnly() throws {
        let source = "sqrt(9)"
        let dag = DAGParser.parse(source)

        #expect(dag != nil)
        #expect(dag?.nodes.count == 2)
        #expect(dag?.description == "ValueNode(9) -> SquareRootNode")

        let rootNode = dag?.getRootNode()
        #expect(rootNode?.kind == .sqrt)
    }

    @Test func verifyNodeConnections() throws {
        let source = "sin(sqrt(4))"
        let dag = DAGParser.parse(source)

        #expect(dag != nil)
        guard let dag = dag else { return }

        let sinNode = dag.getRootNode()
        #expect(sinNode?.kind == .sin)

        if let sinInput = sinNode?.inputs.first,
           case .incomingEdge(let from) = sinInput.input {
            let sqrtNode = dag.nodes.first { $0.nodeId == from.nodeId }
            #expect(sqrtNode?.kind == .sqrt)

            if let sqrtInput = sqrtNode?.inputs.first,
               case .incomingEdge(let from2) = sqrtInput.input {
                let valueNode = dag.nodes.first { $0.nodeId == from2.nodeId }
                #expect(valueNode?.kind == .value)
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
        let dag = DAGParser.parse(source)

        #expect(dag != nil)
        #expect(dag?.nodes.count == 3) // 1, 2, +
        #expect(dag?.description == "Add(ValueNode(1), ValueNode(2))")

        let rootNode = dag?.getRootNode()
        #expect(rootNode?.kind == .add)
        #expect(rootNode?.inputs.count == 2)
    }

    @Test func parseSimpleSubtraction() throws {
        let source = "5 - 3"
        let dag = DAGParser.parse(source)

        #expect(dag != nil)
        #expect(dag?.nodes.count == 3) // 5, 3, -
        #expect(dag?.description == "Subtract(ValueNode(5), ValueNode(3))")

        let rootNode = dag?.getRootNode()
        #expect(rootNode?.kind == .subtract)
        #expect(rootNode?.inputs.count == 2)
    }

    @Test func parseNestedFunctionWithAddition() throws {
        let source = "sin(1 + 2)"
        let dag = DAGParser.parse(source)

        #expect(dag != nil)
        #expect(dag?.nodes.count == 4) // 1, 2, +, sin
        #expect(dag?.description == "Add(ValueNode(1), ValueNode(2)) -> SinNode")

        let rootNode = dag?.getRootNode()
        #expect(rootNode?.kind == .sin)
    }

    @Test func parseNestedFunctionWithSubtraction() throws {
        let source = "cos(5 - 3)"
        let dag = DAGParser.parse(source)

        #expect(dag != nil)
        #expect(dag?.nodes.count == 4) // 5, 3, -, cos
        #expect(dag?.description == "Subtract(ValueNode(5), ValueNode(3)) -> CosNode")

        let rootNode = dag?.getRootNode()
        #expect(rootNode?.kind == .cos)
    }

    @Test func verifyBinaryOperatorConnections() throws {
        let source = "1 + 2"
        let dag = DAGParser.parse(source)

        #expect(dag != nil)
        guard let dag = dag else { return }

        let addNode = dag.getRootNode()
        #expect(addNode?.kind == .add)
        #expect(addNode?.inputs.count == 2)

        // Verify left input (port 0)
        if let leftInput = addNode?.inputs.first,
           case .incomingEdge(let leftFrom) = leftInput.input {
            let leftValueNode = dag.nodes.first { $0.nodeId == leftFrom.nodeId }
            #expect(leftValueNode?.kind == .value)
            if let valueInput = leftValueNode?.inputs.first,
               case .value(let val) = valueInput.input {
                #expect(val == 1.0)
            }
        }

        // Verify right input (port 1)
        if addNode?.inputs.count ?? 0 > 1,
           let rightInput = addNode?.inputs[1],
           case .incomingEdge(let rightFrom) = rightInput.input {
            let rightValueNode = dag.nodes.first { $0.nodeId == rightFrom.nodeId }
            #expect(rightValueNode?.kind == .value)
            if let valueInput = rightValueNode?.inputs.first,
               case .value(let val) = valueInput.input {
                #expect(val == 2.0)
            }
        }
    }

    // MARK: - Variable Declaration Tests

    @Test func parseLetVariableDeclaration() throws {
        let source = "let x = 16\ncos(sqrt(x))"
        let dag = DAGParser.parse(source)

        #expect(dag != nil)
        #expect(dag?.nodes.count == 3) // 16, sqrt, cos
        #expect(dag?.description == "ValueNode(16) -> SquareRootNode -> CosNode")

        let rootNode = dag?.getRootNode()
        #expect(rootNode?.kind == .cos)
    }

    @Test func parseVarVariableDeclaration() throws {
        let source = "var x = 4\ncos(sqrt(x))"
        let dag = DAGParser.parse(source)

        #expect(dag != nil)
        #expect(dag?.nodes.count == 3) // 4, sqrt, cos
        #expect(dag?.description == "ValueNode(4) -> SquareRootNode -> CosNode")

        let rootNode = dag?.getRootNode()
        #expect(rootNode?.kind == .cos)
    }

    @Test func parseFloatVariableDeclaration() throws {
        let source = "let x = 2.5\nsin(x)"
        let dag = DAGParser.parse(source)

        #expect(dag != nil)
        #expect(dag?.nodes.count == 2) // 2.5, sin
        #expect(dag?.description == "ValueNode(2) -> SinNode")

        let rootNode = dag?.getRootNode()
        #expect(rootNode?.kind == .sin)
    }

    @Test func verifyVariableReferenceConnections() throws {
        let source = "let x = 9\nsqrt(x)"
        let dag = DAGParser.parse(source)

        #expect(dag != nil)
        guard let dag = dag else { return }

        let sqrtNode = dag.getRootNode()
        #expect(sqrtNode?.kind == .sqrt)

        if let sqrtInput = sqrtNode?.inputs.first,
           case .incomingEdge(let from) = sqrtInput.input {
            let valueNode = dag.nodes.first { $0.nodeId == from.nodeId }
            #expect(valueNode?.kind == .value)
            if let valueInput = valueNode?.inputs.first,
               case .value(let val) = valueInput.input {
                #expect(val == 9.0)
            }
        }
    }
}