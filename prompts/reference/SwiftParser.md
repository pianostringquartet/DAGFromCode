# SwiftParser reference

## Overview
SwiftParser is the pure-Swift recursive-descent parser that powers SwiftSyntax. It consumes UTF-8 source text and produces `SourceFileSyntax` trees, mirroring the compiler's front end while remaining ABI-stable for tools.

## Getting started
```swift
import SwiftParser
import SwiftSyntax

let source = """
func greeting(name: String) {
  print("Hello, \\(name)!")
}
"""

let file: SourceFileSyntax = Parser.parse(source: source)
assert(file.description == source)
```
- The parser is whitespace- and trivia-preserving; the `description` property re-serializes the original text.
- Use `dump(file)` or `file.debugDescription` to inspect tree shape during development.

## Incremental and configurable parsing
- `Parser.parseIncrementally` now returns `IncrementalParseResult`; store this struct to reuse lexer state between edits.
- `Parser.parse(source:maximumNestingLevel:parseTransition:)` protects against pathologically deep nesting.
- Extensions in `String+Identifier.swift` provide `isValidSwiftIdentifier(for:)` to validate identifiers before constructing new syntax.

## Token and node utilities
- Internals expose `TokenSpec` and `TokenSpecSet` types for building custom productions; see `Sources/SwiftParser/TokenSpec.swift`.
- `Parser.consume(if:)` conditionally consumes tokens (e.g., optional commas), while `Parser.eat(_:)` asserts a token is present.
- Generated helpers in `generated/LayoutNodes+Parsable.swift` and `CollectionNodes+Parsable.swift` support consistent list parsing.

## Integration tips
- Link `SwiftParser` alongside `SwiftSyntax`, `SwiftDiagnostics`, and `SwiftOperators` when building standalone tooling.
- For builder-style DSLs (SwiftUI, macros), parse the entire `SourceFileSyntax` once, then reuse in visitors to avoid reparsing strings.
- Combine with `SwiftSyntaxBuilder` to synthesize code: string literals wrapped with triple quotes become syntax trees automatically.
