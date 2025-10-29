---
title: Plan – SwiftUI modifier inspector
slug: swiftui-modifier-inspector
created_at: 2025-10-29
created_by: codex
status: draft
tags: [swiftui, modifiers, dag, ux, inspector]
---

## Goal

1. Present SwiftUI view modifiers in a UI that preserves order semantics, tames overload complexity (for example, `.frame`), and maps cleanly to the DAG model for literals and connections.

## What we’re optimizing for

1. Preserve SwiftUI semantics: modifier order changes meaning.
2. Tame overload sprawl: one conceptual modifier shows once, with overload choices inside.
3. Keep DAG fidelity: literals vs. graph inputs are explicit and swappable per parameter.
4. Scale: new modifiers plug in without bespoke UI.

## Core UI pattern (stack + inspector)

1. Left “Modifier Stack”: strictly ordered rows; draggable to reorder; multiple instances allowed (for example, two `.frame`).
2. Right “Inspector Pane”: schema‑driven editor for the selected row; shows only fields relevant to the chosen overload.
3. Row badges: compact summary (for example, `.frame W:120 H:auto`), category color (Layout, Visual, Interaction, Effects, Animation, Custom), and optional warning icon.

## Overload handling model

1. Single entry per modifier in the stack; overload is a “variant” selector in the inspector (for example, `.frame` → Fixed Size vs Flexible Constraints).
2. Variant drives which fields render; switching variant maps current values to the nearest equivalent and warns before value loss.
3. All variants normalize to one canonical payload in the DAG (for example, `FrameConstraints`), so preview and export remain stable.

## Parameter editing and connections

1. Each field supports two modes: Literal or Connection.
2. Literal: inline control (number field, enum picker, toggle). Connection: “plug” control opens a graph port picker; connected fields show a chip with the source node label.
3. Per‑field reset to default (“Auto”) to express SwiftUI’s nil/unspecified semantics.

## Ordering semantics and guidance

1. Drag to reorder rows; live preview updates to demonstrate impact.
2. Soft rules highlight likely pitfalls (for example, “Padding after overlay is uncommon; did you mean to pad before?”) with explain‑why tooltips.
3. Conflict hints when two instances of the same modifier fight (for example, incompatible `.frame` pairs).

## Concrete example: `.frame`

1. Variant A “Fixed Size”: fields `width`, `height`, `alignment`. Show `Auto` when nil.
2. Variant B “Flexible Constraints”: fields `minW`, `idealW`, `maxW`, `minH`, `idealH`, `maxH`, `alignment`. Support `.infinity` via an enum control (`Auto | Number | Infinity`).
3. Row badge rules:
   - Fixed: `W:120 H:auto • center`.
   - Flexible: `minW:44 maxW:∞ • leading`.
4. Variant mapping:
   - A→B: map `width→idealW`, `height→idealH`, and set `min/max` to `Auto`.
   - B→A: use `idealW/H` when finite and `min==max==ideal`; otherwise prompt before lossy conversion.

## Data model (UI ↔ DAG bridge)

1. `ModifierInstance { id, kind, order, variantKey, payload, connections, sourceRange? }`.
2. `ModifierSchema { kind, categories[], variants[], fields[] }` where each field defines type, default, visibility rules, and mapping into the canonical DAG value.
3. Canonical payload per modifier (for example, `DAGValue.frameConstraints`) keeps `DAGLayerInputNode` single‑input; packer nodes (for example, `MakeFrame`) merge multi‑source fields.

## Graph integration details

1. Literal‑only payloads serialize directly onto the modifier artifact; no extra nodes.
2. Any connected field creates/uses a packer function node whose single output feeds the modifier’s single input.
3. Inspector shows per‑field connection health (dangling, type mismatch) and offers Disconnect or Jump to source.

## Discoverability and speed

1. Quick‑add menu above the stack: search by name, tag, or “does” (for example, “fill width”).
2. Category filters toggle visible rows to declutter dense chains.
3. “Recently used” and “Suggested next” (based on recent edits) accelerate common flows.

## Read/write round‑trip with code

1. Read: SwiftSyntax visitor produces `ModifierInstance` list in source order; preserves `sourceRange` for precise mapping.
2. Write: Reorder swaps modifier calls; edit updates argument lists; add/remove inserts/deletes calls. Preserve comments/trivia.
3. Undo/redo at the source edit layer, not just the UI model.

## Preview and diagnostics

1. Live preview reflects the current stack; highlight the selected modifier’s visual impact (scrim overlay).
2. Badge‑level warnings (for example, “maxW:∞ inside an HStack with fixed spacing can over‑constrain”) link to docs.
3. A “Layout vs Visual” toggle greys out non‑layout modifiers to help troubleshoot order issues.

## Accessibility and internationalization

1. Controls expose units and afford keyboard entry; stepper increments respect platform points.
2. Infinity and Auto display as localized tokens; tooltips explain semantics.

## Progressive rollout (milestones)

1. Milestone 1 (Read‑only): render stack + badges; select rows; read‑only inspector.
2. Milestone 2 (Editing literals): edit payloads for `.opacity`, `.frame` (Fixed), `.padding`.
3. Milestone 3 (Connections): per‑field connections + `MakeFrame` packer feeding `.frame`.
4. Milestone 4 (Ordering): drag‑reorder with code round‑trip.
5. Milestone 5 (Advanced): Flexible Constraints variant; `.background`/`.overlay` with content closures; conflict hints.

## Risks and mitigations

1. Many‑field modifiers overwhelm: hide non‑active fields via variant gating and an Advanced disclosure.
2. Multi‑instance confusion: show instance index or user label (for example, “frame (outer)”) and canvas outline on hover.
3. Source drift: store a `sourceHash` and re‑match by AST if the file changes externally.

## Acceptance criteria (for `.frame` pilot)

1. Users can add, reorder, duplicate, and remove `.frame` modifiers and see the preview change instantly.
2. Users can switch between Fixed and Flexible variants without silent value loss.
3. Any field can toggle between Literal and Connection; connections render through a single packer node feeding the `.frame` node.
4. The stack view remains readable with 10+ modifiers via badges, categories, and search.

## Implementation pointers

1. Parsing/builders: extend `SwiftSyntaxVisitor` and `SwiftUIVisitors` to emit `ModifierInstance` with `sourceRange`.
2. DAG mapping: add `DAGValue.frameConstraints` and `DAGFunction.makeFrame` with ordered ports (min/ideal/max W/H, width, height, alignment).
3. UI scaffolding: add a read‑only Modifier Stack to `DAGGraphView.swift` and a schema‑driven Inspector pane.
4. Badges: implement concise value summaries for `.frame`, `.opacity`, `.padding` first.
5. Docs: mirror SwiftUI docs locally under `swiftui_documentation/` and wire inspector “?” links to matching slugs.

<!-- Note: Follow repository guidelines for numbered steps and use `npx markdownlint "**/*.md"` optionally for formatting. -->

