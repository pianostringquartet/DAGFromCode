---
title: "SwiftUI view/modifier research baseline"
slug: swiftui-view-support
created_at: 2025-10-27
created_by: codex
last_updated: 2025-10-27
last_updated_by: codex
status: draft
last_updated_note: "Initial survey of current SwiftUI view and modifier support."
tags: [swiftui, parsing, dag]
---

# SwiftUI view/modifier research baseline

## Summary
The codebase already models SwiftUI layers and modifier nodes, but the parser never instantiates them and the debug UIs only render function-based DAG nodes. To surface Rectangle/Ellipse views with `.opacity`/`.fill`, we need to wire detection helpers into the visitor, persist view-to-modifier associations, and expose `ProjectData.views` alongside the existing DAG presentation.

## Research Scope
- Audit current data structures that represent SwiftUI views and modifiers.
- Locate parser extension points for SwiftUI detection and wiring.
- Review debug surfaces to plan how derived views/modifiers appear beside the DAG.
- Outline parsing tests covering Rectangle/Ellipse with `.opacity`/`.fill` chains.
- Capture SwiftSyntax/SwiftParser reference guidance relevant to modifier chains.

## Findings
### Data model scaffolding
- `PrototypeLayer` stores a `nodeId` plus a `PrototypeLayerKind` that already enumerates `rectangle` and `ellipse`, while `PrototypeLayerInputKind` currently exposes only `.opacity` and `.scaleEffect`; we must extend it to include `.fill` so modifiers cover the requested shape API. `ProjectData` holds both `graph` and `views`, ensuring SwiftUI layers can travel alongside DAG nodes. `DAGFromCode/Mapping.swift:37-145`
- `DAGNodeBuilder.createLayerInputNode` constructs `DAGLayerInputNode` wrappers, giving us a reusable path to materialize SwiftUI modifiers as DAG nodes linked to the owning view. `DAGFromCode/DAGHelpers.swift:82-116`

### Parser integration points
- `ProjectDataBuilderVisitor` tracks a `views` array and exposes `addView`, `createLayerInputNode`, and stack helpers, but nothing calls them today; once SwiftUI detection is in place these hooks can emit prototype layers and graph nodes tied to a shared UUID. `DAGFromCode/SwiftSyntaxVisitor.swift:11-169`
- `detectSwiftUIView` and `detectViewModifier` are stubbed helpers that illustrate the intended pattern (matching `Rectangle`/`Ellipse` function calls and modifiers like `.opacity`), so enabling SwiftUI support primarily requires finishing these helpers and invoking them from the visitor. `DAGFromCode/SwiftUIVisitors.swift:19-73`
- `visit(_ node: FunctionCallExprSyntax)` currently bails unless `patchKind(from:)` maps the callee to a numeric function, which means SwiftUI initializers drop on the floor. We need to branch before the guard, detect views, emit a `PrototypeLayer`, and prevent false-negative logging. Similarly, `visit(_ node: MemberAccessExprSyntax)` filters for numeric methods only, so modifier detection must run prior to the existing guard to capture `.opacity`/`.fill`. `DAGFromCode/SwiftSyntaxVisitor.swift:486-603`

### Debug surfaces
- `DAGDebugView` renders a textual DAG tree (counts + colored hierarchy) but never touches `projectData.views`, so adding a parallel SwiftUI section (for example, a list of layers with attached modifiers) will keep the debugger aligned with the new data. `DAGFromCode/DAGDebugView.swift:20-77`
- `DAGDebugViewWithGraph` feeds the canvas-only `DAGGraphView`, again ignoring `ProjectData.views`. We likely need a supplementary panel or overlay in this tab to surface detected SwiftUI layers next to the draggable DAG nodes. `DAGFromCode/DAGDebugViewWithGraph.swift:20-46`
- `NodeView` already distinguishes `.layerInput` nodes with gray styling, so once modifier nodes are created they will appear, but views themselves do not become DAG nodes—reinforcing that `projectData.views` must drive a separate UI element. `DAGFromCode/DAGGraphView.swift:307-388`

### Test coverage opportunities
- Existing tests parse arithmetic expressions and validate both DAG structure and helper utilities; we can mirror that style to add shape-specific cases. New scenarios should include: (1) `Rectangle().opacity(0.5)` yields one prototype layer plus an `.opacity` layer-input node wired to the same UUID; (2) `Ellipse().fill(0.8)` introduces `.fill` as a recognized modifier; (3) multiple shapes ensure modifiers remain scoped to their originating layer. `DAGFromCodeTests/DAGFromCodeTests.swift:35-200`

### Reference material
- SwiftSyntax guidance outlines how modifier chains manifest as nested `FunctionCallExprSyntax` with `MemberAccessExprSyntax` callees, directly informing our detection logic. `prompts/reference/SwiftSyntax.md:1-35`
- SwiftParser documentation reinforces the "parse once, reuse visitor" pattern we already follow while inspecting SwiftUI node chains. `prompts/reference/SwiftParser.md:1-36`
- SwiftOperators notes emphasize folding sequences before walking, which keeps modifier chains in canonical nesting for detection. `prompts/reference/SwiftOperators.md:1-41`

## Code References
- `DAGFromCode/Mapping.swift:37-145` – SwiftUI layer and modifier enums plus `ProjectData.views` storage.
- `DAGFromCode/DAGHelpers.swift:82-116` – Builders for emitting layer-input nodes tied to modifiers.
- `DAGFromCode/SwiftSyntaxVisitor.swift:11-169` and `486-603` – Visitor storage for views and current function/modifier handling.
- `DAGFromCode/SwiftUIVisitors.swift:19-73` – Stub detection helpers for SwiftUI views & modifiers.
- `DAGFromCode/DAGDebugView.swift:20-77` / `DAGFromCode/DAGDebugViewWithGraph.swift:20-46` – UI surfaces that need view listings.
- `DAGFromCode/DAGGraphView.swift:307-388` – Existing treatment of `.layerInput` nodes in the visual canvas.
- `DAGFromCodeTests/DAGFromCodeTests.swift:35-200` – Pattern for structural DAG assertions the new SwiftUI tests should follow.

## Architecture Documentation
Parsing flows through `ProjectDataParser.parse`, which builds a `SourceFileSyntax`, folds operator precedence, and delegates to `ProjectDataBuilderVisitor` for node emission; extending the visitor to call SwiftUI helper functions will let us populate both `graph` and `views` before returning `ProjectData`. `DAGFromCode/ProjectDataParser.swift:12-205` combined with `DAGFromCode/SwiftSyntaxVisitor.swift:11-603`

## Historical Context (if applicable)
- None.

## Related Research
- None yet; this is the first artifact for `swiftui-view-support`.

## Open Questions
- What data should a `.fill` modifier carry (e.g., color literal, upstream DAG edge), and how do we normalize its input shape? 
- How should we associate modifier nodes with their parent `PrototypeLayer` when multiple modifiers chain together (record an ordered list vs. single reference)?
- Do we need to surface view layout metadata (size, position) now, or is listing views/modifiers sufficient for this feature milestone?
