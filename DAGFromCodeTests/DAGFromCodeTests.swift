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
        if case .value(let val) = rootNode?.input.input {
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
        if case .value(let val) = rootNode?.input.input {
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

        if case .incomingEdge(let from) = sinNode?.input.input {
            let sqrtNode = dag.nodes.first { $0.nodeId == from.nodeId }
            #expect(sqrtNode?.kind == .sqrt)

            if case .incomingEdge(let from2) = sqrtNode?.input.input {
                let valueNode = dag.nodes.first { $0.nodeId == from2.nodeId }
                #expect(valueNode?.kind == .value)
                if case .value(let val) = valueNode?.input.input {
                    #expect(val == 4.0)
                }
            }
        }
    }
}