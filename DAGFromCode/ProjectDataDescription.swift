//
//  ProjectDataDescription.swift
//  DAGFromCode
//
//  Created by Christian J Clampitt on 9/25/25.
//

import Foundation

// MARK: - ProjectData Description

extension ProjectData: CustomStringConvertible {
    var description: String {
        guard let rootNode = graph.getRootNode() else {
            return "Empty ProjectData"
        }

        print("\n📝 Building ProjectData description...")
        print("   Root node ID: \(rootNode.id)")
        print("   Total nodes: \(graph.nodes.count)")
        print("   Total views: \(views.count)")

        var result = ""

        func describeNode(_ nodeId: UUID, visited: inout Set<UUID>, depth: Int = 0) -> String {
            let indent = String(repeating: "  ", count: depth)

            guard !visited.contains(nodeId) else {
                print("\(indent)⚠️ Already visited node: \(nodeId)")
                return ""
            }
            visited.insert(nodeId)

            // O(1) dictionary lookup instead of O(n) array search!
            guard let node = graph.getNode(by: nodeId) else {
                print("\(indent)❌ Could not find node: \(nodeId)")
                return "Unknown"
            }

            print("\(indent)📍 Describing node: \(node.displayName) (ID: \(nodeId))")

            func describeUnaryFunction(name: String, inputs: [NodeInput]) -> String {
                if let firstInput = inputs.first,
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

            switch node {
            case .function(let functionNode):
                switch functionNode.patch {
                case .value:
                    if let firstInput = functionNode.inputs.first,
                       case .value(let val) = firstInput.input {
                        let desc = "ValueNode(\(Int(val)))"
                        print("\(indent)   -> \(desc)")
                        return desc
                    }
                    return "ValueNode(?)"

                case .sin:
                    return describeUnaryFunction(name: "SinNode", inputs: functionNode.inputs)

                case .cos:
                    return describeUnaryFunction(name: "CosNode", inputs: functionNode.inputs)

                case .sqrt:
                    return describeUnaryFunction(name: "SquareRootNode", inputs: functionNode.inputs)

                case .rounded:
                    return describeUnaryFunction(name: "RoundedNode", inputs: functionNode.inputs)

                case .magnitude:
                    return describeUnaryFunction(name: "MagnitudeNode", inputs: functionNode.inputs)

                case .add:
                    if functionNode.inputs.count >= 2 {
                        let leftInput = functionNode.inputs[0]
                        let rightInput = functionNode.inputs[1]

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
                    if functionNode.inputs.count >= 2 {
                        let leftInput = functionNode.inputs[0]
                        let rightInput = functionNode.inputs[1]

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
                    if functionNode.inputs.count >= 2 {
                        let leftInput = functionNode.inputs[0]
                        let rightInput = functionNode.inputs[1]

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
                    if functionNode.inputs.count >= 2 {
                        let leftInput = functionNode.inputs[0]
                        let rightInput = functionNode.inputs[1]

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
                    if functionNode.inputs.count >= 2 {
                        let leftInput = functionNode.inputs[0]
                        let rightInput = functionNode.inputs[1]

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
                    if functionNode.inputs.count >= 3 {
                        let conditionInput = functionNode.inputs[0]
                        let falseInput = functionNode.inputs[1]
                        let trueInput = functionNode.inputs[2]

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

            case .layerInput(let layerInputNode):
                return "LayerInput(\(layerInputNode.layerInput.displayName))"
            }
        }

        var visited = Set<UUID>()
        result = describeNode(rootNode.id, visited: &visited)
        print("📝 Final description: \(result)")
        return result
    }
}

// MARK: - DAG Description

extension DAG: CustomStringConvertible {
    var description: String {
        guard let rootNode = getRootNode() else {
            return "Empty DAG"
        }

        return "DAG(root: \(rootNode.displayName), nodes: \(nodes.count))"
    }
}