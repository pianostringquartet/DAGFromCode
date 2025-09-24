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
        let source = """
        let x = 16
        cos(sqrt(x))
        """
        let dag = DAGParser.parse(source)

        #expect(dag != nil)
        #expect(dag?.nodes.count == 3) // 16, sqrt, cos
        #expect(dag?.description == "ValueNode(16) -> SquareRootNode -> CosNode")

        let rootNode = dag?.getRootNode()
        #expect(rootNode?.kind == .cos)
    }

    @Test func parseVarVariableDeclaration() throws {
        let source = """
        var x = 4
        cos(sqrt(x))
        """
        let dag = DAGParser.parse(source)

        #expect(dag != nil)
        #expect(dag?.nodes.count == 3) // 4, sqrt, cos
        #expect(dag?.description == "ValueNode(4) -> SquareRootNode -> CosNode")

        let rootNode = dag?.getRootNode()
        #expect(rootNode?.kind == .cos)
    }

    @Test func parseFloatVariableDeclaration() throws {
        let source = """
        let x = 2.5
        sin(x)
        """
        let dag = DAGParser.parse(source)

        #expect(dag != nil)
        #expect(dag?.nodes.count == 2) // 2.5, sin
        #expect(dag?.description == "ValueNode(2) -> SinNode")

        let rootNode = dag?.getRootNode()
        #expect(rootNode?.kind == .sin)
    }

    @Test func verifyVariableReferenceConnections() throws {
        let source = """
        let x = 9
        sqrt(x)
        """
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

    // MARK: - Multiple Variable Declaration Tests

    @Test func parseMultipleVariableDeclarations() throws {
        let source = """
        let x = 8
        let y = 8
        x + y
        """
        let dag = DAGParser.parse(source)

        #expect(dag != nil)
        #expect(dag?.nodes.count == 3) // x(8), y(8), +
        #expect(dag?.description == "Add(ValueNode(8), ValueNode(8))")

        let rootNode = dag?.getRootNode()
        #expect(rootNode?.kind == .add)
        #expect(rootNode?.inputs.count == 2)
    }

    @Test func parseMixedVariableDeclarations() throws {
        let source = """
        var a = 3
        let b = 5
        a - b
        """
        let dag = DAGParser.parse(source)

        #expect(dag != nil)
        #expect(dag?.nodes.count == 3) // a(3), b(5), -
        #expect(dag?.description == "Subtract(ValueNode(3), ValueNode(5))")

        let rootNode = dag?.getRootNode()
        #expect(rootNode?.kind == .subtract)
        #expect(rootNode?.inputs.count == 2)
    }

    @Test func parseMultipleVariablesDifferentValues() throws {
        let source = """
        let x = 10
        let y = 20
        x + y
        """
        let dag = DAGParser.parse(source)

        #expect(dag != nil)
        #expect(dag?.nodes.count == 3) // x(10), y(20), +
        #expect(dag?.description == "Add(ValueNode(10), ValueNode(20))")

        let rootNode = dag?.getRootNode()
        #expect(rootNode?.kind == .add)
    }

    @Test func verifyMultipleVariableConnections() throws {
        let source = """
        let x = 8
        let y = 8
        x + y
        """
        let dag = DAGParser.parse(source)

        #expect(dag != nil)
        guard let dag = dag else { return }

        let addNode = dag.getRootNode()
        #expect(addNode?.kind == .add)
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
        let leftValueNode = dag.nodes.first { $0.nodeId == leftFrom.nodeId }
        let rightValueNode = dag.nodes.first { $0.nodeId == rightFrom.nodeId }

        #expect(leftValueNode?.kind == .value)
        #expect(rightValueNode?.kind == .value)

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
        let dag = DAGParser.parse(source)

        #expect(dag != nil)
        #expect(dag?.nodes.count == 4) // a(4), b(9), +, sin
        #expect(dag?.description == "Add(ValueNode(4), ValueNode(9)) -> SinNode")

        let rootNode = dag?.getRootNode()
        #expect(rootNode?.kind == .sin)
    }

    // MARK: - Comparison Operator Tests

    @Test func parseGreaterThan() throws {
        let source = "5 > 3"
        let dag = DAGParser.parse(source)

        #expect(dag != nil)
        #expect(dag?.nodes.count == 3) // 5, 3, >
        #expect(dag?.description == "GreaterThan(ValueNode(5), ValueNode(3))")

        let rootNode = dag?.getRootNode()
        #expect(rootNode?.kind == .greaterThan)
        #expect(rootNode?.inputs.count == 2)
    }

    @Test func parseLessThan() throws {
        let source = "2 < 10"
        let dag = DAGParser.parse(source)

        #expect(dag != nil)
        #expect(dag?.nodes.count == 3) // 2, 10, <
        #expect(dag?.description == "LessThan(ValueNode(2), ValueNode(10))")

        let rootNode = dag?.getRootNode()
        #expect(rootNode?.kind == .lessThan)
        #expect(rootNode?.inputs.count == 2)
    }

    @Test func parseEqual() throws {
        let source = """
        let x = 7
        x == 5
        """
        let dag = DAGParser.parse(source)

        #expect(dag != nil)
        #expect(dag?.nodes.count == 3) // x(7), 5, ==
        #expect(dag?.description == "Equal(ValueNode(7), ValueNode(5))")

        let rootNode = dag?.getRootNode()
        #expect(rootNode?.kind == .equal)
        #expect(rootNode?.inputs.count == 2)
    }

    // MARK: - Ternary Expression Tests

    @Test func parseSimpleTernary() throws {
        let source = "true ? 5 : 10"
        let dag = DAGParser.parse(source)

        #expect(dag != nil)
        #expect(dag?.nodes.count == 4) // true, 5, 10, ?:
        #expect(dag?.description == "OptionPicker(ValueNode(1), ValueNode(10), ValueNode(5))")

        let rootNode = dag?.getRootNode()
        #expect(rootNode?.kind == .optionPicker)
        #expect(rootNode?.inputs.count == 3)
    }

    @Test func parseComparisonTernary() throws {
        let source = "5 > 4 ? 100 : 0"
        let dag = DAGParser.parse(source)

        #expect(dag != nil)
        #expect(dag?.nodes.count == 6) // 5, 4, >, 100, 0, ?:
        #expect(dag?.description == "OptionPicker(GreaterThan(ValueNode(5), ValueNode(4)), ValueNode(0), ValueNode(100))")

        let rootNode = dag?.getRootNode()
        #expect(rootNode?.kind == .optionPicker)
        #expect(rootNode?.inputs.count == 3)
    }

    @Test func parseVariableTernary() throws {
        let source = """
        let x = 8
        let y = 12
        x > y ? x : y
        """
        let dag = DAGParser.parse(source)

        #expect(dag != nil)
        #expect(dag?.nodes.count == 5) // x(8), y(12), >, ?:, and one additional value node
        #expect(dag?.description == "OptionPicker(GreaterThan(ValueNode(8), ValueNode(12)), ValueNode(12), ValueNode(8))")

        let rootNode = dag?.getRootNode()
        #expect(rootNode?.kind == .optionPicker)
        #expect(rootNode?.inputs.count == 3)
    }

    @Test func parseNestedTernary() throws {
        let source = "true ? (false ? 1 : 2) : 3"
        let dag = DAGParser.parse(source)

        #expect(dag != nil)
        #expect(dag?.nodes.count == 6) // true, false, 1, 2, inner ?:, outer ?:
        #expect(dag?.description == "OptionPicker(ValueNode(1), ValueNode(3), OptionPicker(ValueNode(0), ValueNode(2), ValueNode(1)))")

        let rootNode = dag?.getRootNode()
        #expect(rootNode?.kind == .optionPicker)
        #expect(rootNode?.inputs.count == 3)
    }

    @Test func verifyTernaryConnections() throws {
        let source = "true ? 5 : 10"
        let dag = DAGParser.parse(source)

        #expect(dag != nil)
        guard let dag = dag else { return }

        let ternaryNode = dag.getRootNode()
        #expect(ternaryNode?.kind == .optionPicker)
        #expect(ternaryNode?.inputs.count == 3)

        // Verify condition input (port 0)
        if let conditionInput = ternaryNode?.inputs.first,
           case .incomingEdge(let conditionFrom) = conditionInput.input {
            let conditionValueNode = dag.nodes.first { $0.nodeId == conditionFrom.nodeId }
            #expect(conditionValueNode?.kind == .value)
            if let valueInput = conditionValueNode?.inputs.first,
               case .value(let val) = valueInput.input {
                #expect(val == 1.0) // true = 1.0
            }
        }

        // Verify false value input (port 1)
        if ternaryNode?.inputs.count ?? 0 > 1,
           let falseInput = ternaryNode?.inputs[1],
           case .incomingEdge(let falseFrom) = falseInput.input {
            let falseValueNode = dag.nodes.first { $0.nodeId == falseFrom.nodeId }
            #expect(falseValueNode?.kind == .value)
            if let valueInput = falseValueNode?.inputs.first,
               case .value(let val) = valueInput.input {
                #expect(val == 10.0)
            }
        }

        // Verify true value input (port 2)
        if ternaryNode?.inputs.count ?? 0 > 2,
           let trueInput = ternaryNode?.inputs[2],
           case .incomingEdge(let trueFrom) = trueInput.input {
            let trueValueNode = dag.nodes.first { $0.nodeId == trueFrom.nodeId }
            #expect(trueValueNode?.kind == .value)
            if let valueInput = trueValueNode?.inputs.first,
               case .value(let val) = valueInput.input {
                #expect(val == 5.0)
            }
        }
    }
}