---
title: "Boolean and color support audit"
slug: graph-boolean-color-support
created_at: 2025-10-27
created_by: codex
last_updated: 2025-10-27
last_updated_by: codex
status: draft
last_updated_note: "Documented enum-based value plan and first-class color nodes."
tags: [graph, typing, swiftui]
---

# Boolean and color support audit

## Summary
The current DAG model stores every literal, intermediate value, and modifier payload as `Double`, so booleans are encoded as `1.0`/`0.0` and color arguments never enter the graph. SwiftUI `.fill` modifiers retain only the string description of the color while defaulting their graph input to `0.0`, meaning there is no way to drive a layer fill from an upstream node yet. We agreed to move forward with an enum-backed `DAGValue` to represent numbers, booleans, and colors, and to emit color literals as first-class nodes so `.fill` can consume upstream color outputs.

## Research Scope
- Catalog how graph node inputs and outputs capture value types today.
- Trace how boolean literals and comparison results get represented in the DAG.
- Inspect SwiftUI modifier handling to confirm what data `.fill` preserves and whether colors can flow through the graph.

## Findings
### Graph value model is numeric-only
- `InputValue.value` and `NodeOutput.value` are both constrained to `Double`, so the graph cannot currently represent booleans or colors as distinct payloads. `DAGFromCode/Mapping.swift:176-195`
- `DAGFunction` only enumerates numeric/math and comparison patches, reinforcing that all operations yield scalar doubles. `DAGFromCode/Mapping.swift:134-153`

### Boolean literals become numeric value nodes
- The visitor converts `BooleanLiteralExprSyntax` into `ValueNode` instances with `1.0` for `true` and `0.0` for `false`, pushing them onto the same numeric stack as other literals. `DAGFromCode/SwiftSyntaxVisitor.swift:770-788`
- Ternary tests assert that downstream nodes observe those numeric stand-ins (e.g., `true ? 5 : 10` yields an `OptionPicker` fed by value nodes `1.0`, `5.0`, `10.0`). `DAGFromCodeTests/DAGFromCodeTests.swift:1405-1499`

### SwiftUI `.fill` stores string metadata but no graph value
- SwiftUI modifier metadata keeps `argumentDescription` plus `numericPayloads: [Double]`, leaving no place to persist a color literal. `DAGFromCode/Mapping.swift:46-77`
- When modifier arguments are parsed, only resolvable numeric payloads become `InputValue.value`; otherwise `.fill` falls back to `.value(0.0)`, so the resulting layer-input node always sees zero rather than a color. `DAGFromCode/SwiftSyntaxVisitor.swift:356-369`
- Tests covering `Ellipse().fill(Color.red)` and chained `.fill`/`.opacity` calls verify that `.fill` captures the string "Color.red" yet produces empty numeric payloads, confirming colors never enter the graph pipeline. `DAGFromCodeTests/DAGFromCodeTests.swift:2105-2154`

### Agreed direction for typed payloads
- Replace the raw `Double` payload stored in `InputValue`/`NodeOutput` with a `DAGValue` enum so future patches can switch on `.number`, `.boolean`, or `.color` without pervasive generics.
- Treat `Color` literals as their own value nodes, allowing layer inputs like `.fill` to reference upstream color outputs instead of defaulting to `0.0` placeholders.

### No pathway to reuse colors from the DAG
- `resolveIncomingEdge` only succeeds for expressions that can be rebuilt into existing numeric nodes; color literals never resolve to graph nodes, so `.fill` modifiers cannot attach upstream coordinates. `DAGFromCode/SwiftSyntaxVisitor.swift:378-401`
- Because modifier node creation defaults to the numeric placeholder, the rendered DAG lacks sample graphs demonstrating color-driven fills—only numeric opacity graphs are possible today. `DAGFromCode/DAGGraphView.swift:343-412`

## Code References
- `DAGFromCode/Mapping.swift:46-195` – Graph structs, modifier metadata, and double-only payloads.
- `DAGFromCode/SwiftSyntaxVisitor.swift:356-401` – Modifier argument resolution and fallback behavior for `.fill`.
- `DAGFromCode/SwiftSyntaxVisitor.swift:770-788` – Boolean literal handling.
- `DAGFromCodeTests/DAGFromCodeTests.swift:1405-2154` – Examples that exercise boolean ternaries and `.fill(Color.*)` modifiers.
- `DAGFromCode/DAGGraphView.swift:307-412` – Visual DAG nodes remain numeric-only, with no color-aware rendering.
- `DAGFromCode/ProjectDataParser.swift:12-205` – Entry point linking parser output to the visitor’s numeric DAG construction.

## Architecture Documentation
Parsing starts in `ProjectDataParser.parse`, which normalizes the source file before delegating to `ProjectDataBuilderVisitor`; the visitor builds all nodes and modifier inputs through the double-based helpers above, so extending type support will require changes in both the visitor’s literal handlers and the shared `Mapping.swift` data structures. `DAGFromCode/ProjectDataParser.swift:12-205`, `DAGFromCode/SwiftSyntaxVisitor.swift:11-603`

## Historical Context (if applicable)
- None noted.

## Related Research
- None yet.

## Open Questions
- How should arithmetic or comparison patches validate mismatched `DAGValue` variants (e.g., prevent `.number + .color`) while preserving friendly diagnostics?
- Which color literal syntaxes need to round-trip (named colors, `Color(red:green:blue:)`, asset catalog lookups), and what data model best captures them in `DAGValue`?
- When colors come from expressions (e.g., ternaries), what fallback representation should `DAGGraphView` surface if RGBA components aren’t statically known?
