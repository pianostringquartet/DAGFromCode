# Plan

## DAGFromCode to-do list
1. Aggregate SwiftSyntax, SwiftParser, and SwiftOperators reference material under `prompts/reference/` and keep it current with new release notes.
2. Prototype enhanced graph data structures supporting typed payloads, edge categories (data, control, view), and JSON export for tooling consumption.
3. Expand `ProjectDataParser` visitors to handle `FunctionDeclSyntax`, `ClosureExprSyntax`, and SwiftUI-specific patterns (`StructDeclSyntax` conforming to `View`, `FunctionCallExprSyntax` modifier chains).
4. Author SwiftUI-focused parsing examples that create layers, constructor-argument nodes, and modifier nodes, then validate their DAG integration.
5. Enrich `DAGFromCodeTests/` with fixtures covering multi-argument functions, conditional logic, and SwiftUI bodies; add snapshot assertions for serialized graphs.
6. Investigate `SwiftLexicalLookup` for symbol resolution and document connection strategies between function definitions and call sites.
