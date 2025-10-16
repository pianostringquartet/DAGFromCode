# SwiftSyntax reference

## Overview
SwiftSyntax is the canonical library for constructing, inspecting, and transforming Swift syntax trees. Every node conforms to `SyntaxProtocol` and is source-accurate, meaning round-tripping preserves trivia and token positions. The package underpins Swift macros and tools like swift-format.

## Core abstractions
- `SyntaxProtocol`: shared interface for all nodes; exposes `parent`, `children(viewMode:)`, and typed accessors (e.g., `FunctionDeclSyntax`, `StructDeclSyntax`).
- `SyntaxVisitor` / `SyntaxRewriter`: class-based walkers; override `visit` / `visitPost` to traverse or mutate trees.
- `SyntaxEnum` and the typed enums (`ExprSyntaxEnum`, `DeclSyntaxEnum`, etc.) allow exhaustive `switch` statements across node kinds.
- `SyntaxIdentifier`: stable identifiers for nodes; use `indexInTree` and `fromIndexInTree(_:root:)` to persist cross-tree references.

## Patterns for DAG extraction
1. Parse source with `SwiftParser.Parser.parse(source:)` to obtain `SourceFileSyntax`.
2. Fold raw operator chains into structured trees using `SwiftOperators.OperatorTable.standardOperators.foldAll`.
3. Walk the tree with a subclass of `SyntaxVisitor`. Track scope by pushing identifiers on entry and popping on exit.
4. Map node-specific data:
   - `FunctionDeclSyntax`: access signature via `signature.parameterClause.parameters` and optional body with the `WithOptionalCodeBlock` trait.
   - `ClosureExprSyntax`: iterate captures and parameter lists (`closureSignature?.input`).
   - `FunctionCallExprSyntax`: `calledExpression` gives callee, `arguments` enumerates labeled inputs.
   - `MemberAccessExprSyntax`: extract method names and modifiers for SwiftUI view chains.
5. Convert positions to `AbsolutePosition` before calling `SyntaxProtocol.classifications(in:)` or `classification(at:)`.

## SwiftUI-specific cues
- Identify view structs via `StructDeclSyntax.inheritanceClause` containing a type named `View`.
- The `body` property is a `VariableDeclSyntax` whose accessor is typically a `CodeBlockItemList` of `ReturnStmtSyntax`; inspect returned expression for function-call chains representing builder modifiers.
- Modifiers appear as nested `FunctionCallExprSyntax` nodes whose `calledExpression` is a `MemberAccessExprSyntax` (e.g., `.padding`, `.opacity`).

## Diagnostic helpers
- Unexpected or missing tokens surface as dedicated nodes; check `.unexpectedBetween...` collections to tolerate partially invalid source.
- Downcast using `.as(FooSyntax.self)` rather than `as?` to stay compatible with recent releases.
- Leverage `SwiftLexicalLookup` (bundled) for symbol resolution when connecting reference edges between declarations and uses.

## Additional resources
- Contributor documentation (`Contributor Documentation/Parsing Basics.md`) covers parser mechanics like `Parser.consume(if:)` and incremental parsing.
- Release notes (`Release Notes/600.md`, `601.md`, `602.md`) capture API renames, new traits, and migration tips; consult them before pinning semantics.
