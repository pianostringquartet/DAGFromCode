# SwiftOperators reference

## Overview
SwiftOperators augments SwiftSyntax with operator-precedence semantics. It turns flat `SequenceExprSyntax` nodes into fully associated expression trees and lets you register custom operators, mirroring the rules of the Swift compiler.

## Basic workflow
```swift
import SwiftOperators
import SwiftParser
import SwiftSyntax

var table = OperatorTable.standardOperators
let parsed = Parser.parse(source: "x + y * z")
let folded = try table.foldAll(parsed)
```
- `foldAll` traverses the syntax tree and rewrites `SequenceExprSyntax` nodes as nested `InfixOperatorExprSyntax` structures.
- Use `foldSingle(_:)` when you already have a `SequenceExprSyntax` instance.

## Extending operator knowledge
```swift
let declarations = """
precedencegroup ExponentiationPrecedence {
  associativity: right
  higherThan: MultiplicationPrecedence
}
infix operator **: ExponentiationPrecedence
"""

try table.addSourceFile(Parser.parse(source: declarations))
```
- `addSourceFile` ingests precedence groups, operator declarations, and infers relationships for subsequent folds.
- Custom `OperatorError` values are surfaced via the optional error handler closure supplied to `foldSingle` / `foldAll`.

## Diagnostics and integration
- Link against `SwiftSyntax`, `SwiftParser`, and `SwiftDiagnostics`; the CMake setup uses `target_link_swift_syntax_libraries`.
- Capture folding issues by appending to an `[OperatorError]` buffer inside the handler while continuing execution.
- Because folding mutates the tree, keep a copy of the original `ExprSyntax` if you need both representations.

## Usage in this project
- Run all expression trees through `OperatorTable.standardOperators` before graph extraction so edges reflect true precedence (`sin(2 + 3 * x)` should connect `*` before `+`).
- When modeling SwiftUI modifier chains, folding ensures `.padding().opacity()` remains a nested call hierarchy that can be converted into separate graph nodes.
