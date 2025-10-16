# SwiftLexicalLookup reference

## Overview
SwiftLexicalLookup provides compiler-grade unqualified lookup on top of SwiftSyntax trees. Given any syntax node, it reports which symbols are visible, where they were introduced, and how shadowing applies. Queries are stateless, so tools can resolve names without accessing the Swift compiler.

## Key concepts
- **Scopes**: Each syntax form contributes a scope implementation (`ScopeSyntax`). Examples include `SequentialScopeSyntax` for code blocks, `WithGenericParametersScopeSyntax` for declarations with generic clauses, and member scopes for nominal types.
- **LookupName & LookupResult**: `LookupName` describes the searched identifier (including dollar identifiers); `LookupResult` partitions successes by scope (generic parameters, members, local bindings, implicits like `self`).
- **Configuration**: `LookupConfig` lets you toggle behaviors such as whether the top-level file acts as a sequential scope or a member scope.

## Typical workflow
```swift
import SwiftLexicalLookup
import SwiftParser

let file = Parser.parse(source: """
struct Foo<A> {
  let value = A.self

  func bar<B>(b: B) {
    guard let temp = b else { return }
    print(temp)
  }
}
""")

let lookup = SwiftLexicalLookup()
if let barDecl = file.statements
    .first?.item.as(DeclSyntax.self)?
    .as(StructDeclSyntax.self)?
    .memberBlock.members
    .first(where: { $0.decl.is(FunctionDeclSyntax.self) })?
    .decl.as(FunctionDeclSyntax.self) {
  let results = lookup.lookup(
    name: LookupName("b"),
    node: Syntax(barDecl.body!)
  )
  dump(results)
}
```
- Start from a syntax node (`FunctionDeclSyntax`, `CodeBlockSyntax`, etc.).
- Construct a `LookupName` (`LookupName("identifier")`, `LookupName.dollarIdentifier(index)`).
- Inspect `results` to see bindings grouped by their originating scope.

## Scope behaviors to remember
- `CodeBlockSyntax`: sequential scope; bindings become visible below their declaration point.
- `GuardStmtSyntax`: introduces condition bindings to the parent sequential scope, not inside the `else`.
- `IfExprSyntax`: else branches inherit the parent scope; conditions introduce bindings visible in subsequent branches.
- `ClosureExprSyntax`: captures and parameters form a scope before the body.
- Generic parameter clauses (`GenericParameterClauseSyntax`) shadow outer generics of the same name.
- Accessors (`AccessorDeclSyntax`) introduce implicit identifiers such as `newValue` (set/willSet) and `oldValue` (didSet).

## Usage in DAGFromCode
- Resolve `DeclReferenceExprSyntax` nodes to their defining declarations before wiring graph edges.
- Disambiguate SwiftUI modifier closures by mapping captured identifiers back to upstream nodes.
- Use scope partitions to annotate edges (e.g., parameter binding vs. member access) when serializing the DAG.

## References
- `Sources/SwiftLexicalLookup/SwiftLexicalLookup.docc/SwiftLexicalLookup.md` for API overview.
- `Sources/SwiftLexicalLookup/SwiftLexicalLookup.docc/LookupRules.md` for exhaustive scope definitions.
