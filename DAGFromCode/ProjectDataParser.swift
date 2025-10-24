//
//  ProjectDataParser.swift
//  DAGFromCode
//
//  Created by Christian J Clampitt on 9/25/25.
//

import Foundation
import SwiftSyntax
import SwiftParser
import SwiftOperators

class ProjectDataParser {

    static func parse(_ source: String) -> ProjectData? {
        print("\n🔍 ProjectDataParser.parse() starting with source: '\(source)'")
        let sourceFile = Parser.parse(source: source)

        print("📋 Found \(sourceFile.statements.count) statements in source file")

        // Log each statement for debugging
        for (index, statement) in sourceFile.statements.enumerated() {
            print("📝 Statement \(index): \(type(of: statement.item)) - \(statement.item)")
        }

        let visitor = ProjectDataBuilderVisitor(viewMode: .sourceAccurate)

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
            let foldedSyntax = try OperatorTable.standardOperators.foldAll(expr)
            if let castedExpr = foldedSyntax.as(ExprSyntax.self) {
                foldedExpr = castedExpr
                print("✅ Expression folded successfully")
                print("📊 Folded expression type: \(type(of: foldedExpr))")
                print("📋 Folded expression: \(foldedExpr)")
            } else {
                print("⚠️ Folded syntax did not convert back to ExprSyntax (was: \(type(of: foldedSyntax)))")
                print("⚠️ Falling back to original expression")
                foldedExpr = expr
            }
        } catch {
            print("❌ Failed to fold expression: \(error)")
            print("⚠️ Falling back to original expression")
            foldedExpr = expr
        }

        print("🚶 Starting syntax tree walk...")
        visitor.walk(foldedExpr)

        let projectData = visitor.buildProjectData()
        print("✅ ProjectData created successfully:")
        print("  - Total nodes: \(projectData.graph.nodes.count)")
        print("  - Total views: \(projectData.views.count)")
        if let rootNode = visitor.getRootNode() {
            print("  - Root node ID: \(rootNode.id)")
            print("  - ProjectData description: \(projectData.description)")
        }
        return projectData
    }
}
