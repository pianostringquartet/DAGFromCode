---
agent_count: 2
---
# Boolean and Color Support Implementation Plan for 2 agents

## Overview
Introduce typed value handling so the DAG can represent numbers, booleans, and colors explicitly, emit color literals as first-class nodes, and allow SwiftUI `.fill` modifiers to consume upstream color outputs. This unlocks parity between SwiftUI source and the rendered DAG while retaining stable numeric behavior for existing patches.

## Current State Analysis
- `DAGFromCode/Mapping.swift:176-194` – `InputValue.value` and `NodeOutput.value` are hard-coded to `Double`, so all literals collapse to numeric payloads.
- `DAGFromCode/SwiftSyntaxVisitor.swift:352-369` – `.fill` modifiers default to `.value(0.0)` when no numeric payload exists, preventing colors from entering the graph.
- `DAGFromCode/SwiftSyntaxVisitor.swift:770-789` – Boolean literals convert to `1.0`/`0.0` value nodes, meaning logical intent is obscured downstream.
- `DAGFromCodeTests/DAGFromCodeTests.swift:2105-2154` – Tests confirm `.fill(Color.*)` only captures string metadata, leaving the DAG without color connectivity.
- `DAGFromCode/DAGGraphView.swift:343-412` – Edge colors and rendering assume numeric patches; no affordance for color outputs or boolean semantics.

## Desired End State
- `DAGFromCode` represents payloads via a `DAGValue` enum (e.g., `.number(Double)`, `.boolean(Bool)`, `.color(ColorValue)`), and both node inputs/outputs store this type.
- `SwiftSyntaxVisitor` emits boolean literals as `.boolean` value nodes and resolves color literals/expressions to color nodes that `.fill` can reference via incoming edges.
- `.fill` modifiers in `PrototypeLayerModifier` retain color payloads, reference upstream color nodes when available, and fall back gracefully when unresolved.
- `DAGGraphView` and tests surface typed values (color swatches, boolean labels) so implementers can validate the new flows visually and via XCTest.
- Automated (`xcodebuild` build/test) and manual verification steps confirm the typed payload pipeline without regressing numeric flows.

## Foundation setup
- Owner: Agent 1 (Parser & data model)
- Tasks: Introduce shared typed value models, migrate serialization helpers, align mocks/fixtures, and document new invariants.
- Exit criteria: Core data structures support `DAGValue`, regression checks pass locally, and companion docs note ownership boundaries for typed payloads.

### Key Discoveries
- `DAGFromCode/ProjectDataParser.swift:12-205` – Entry point feeding existing numeric helpers; will need to propagate `DAGValue` up the stack.
- `DAGFromCodeTests/DAGFromCodeTests.swift:1360-1500` – Existing boolean/ternary coverage provides baselines for validating new boolean semantics.

## What We're NOT Doing
- No persistence or export format changes beyond in-memory `ProjectData`.
- No new SwiftUI primitives beyond color-driven `.fill`; gradients and material effects remain out of scope.
- No refactor of telemetry/logging noise in `ProjectDataParser`; only updates required for typed payload propagation.

## Implementation Approach
Agents will collaborate on the shared `preserve-value-node-decimals` branch. Foundation work introduces `DAGValue` and rewires existing numeric-only structs. Agent 1 continues with visitor and parser extensions to emit typed nodes, while Agent 2 updates visualization/tests to align with the new payload semantics. Ownership boundaries enforce that Agent 1 focuses on parser/data model files, and Agent 2 limits changes to rendering/tests. Any shared-file edits (e.g., additional enum cases in `PrototypeLayerInputKind`) require coordination and explicit plan updates before implementation.

## Agent assignments
| Agent | Owned paths (glob) | Primary responsibilities | Shared touchpoints |
|-------|--------------------|--------------------------|--------------------|
| Agent 1 | `DAGFromCode/Mapping.swift`, `DAGFromCode/SwiftSyntaxVisitor.swift`, `DAGFromCode/ProjectDataParser.swift`, `prompts/**` (read-only) | Define `DAGValue`, migrate node input/output storage, emit booleans/colors, document typed payload invariants | Coordinate if `PrototypeLayerModifier` shape changes impact view-layer rendering |
| Agent 2 | `DAGFromCode/DAGGraphView.swift`, `DAGFromCodeTests/**`, `Assets.xcassets/**` (read-only unless swatch assets required) | Render typed payloads in the UI, extend tests/fixtures for booleans & colors, ensure manual verification guidance | Sync with Agent 1 for expected `DAGValue` cases and sample graphs |

Each agent should be able to complete their scope without blocking others; use dependencies only when unavoidable. Reiterate that all agents contribute on the same branch and must respect the ownership boundaries listed here.

## Status tracking
- Shared doc: `thoughts/work-items/graph-boolean-color-support/status.md`
- Structure:
  - Section per agent (`## Agent 1 – Parser & data model`, `## Agent 2 – Graph rendering & tests`) with checklists tied to plan phases
  - Date-stamped progress updates
  - Blockers or requests for review
- Update cadence: after each phase or major milestone

## Phase 0: Foundation (shared setup)

### Overview
Create the typed value scaffolding so later phases can rely on `DAGValue` across nodes, modifiers, and parser helpers.

### Changes Required
1. **Typed payload models** (Assigned to Agent 1)  
   - File(s): `DAGFromCode/Mapping.swift`, `DAGFromCode/ProjectDataParser.swift`  
   - Changes: Introduce `DAGValue` enum (`.number`, `.boolean`, `.color(ColorValue)`), update `InputValue.value` and `NodeOutput.value` to store `DAGValue`, add lightweight `ColorValue` struct (e.g., name + RGBA), and adjust `ProjectData` initializers/utilities to work with the new type.  
   ```swift
   enum DAGValue: Equatable {
       case number(Double)
       case boolean(Bool)
       case color(ColorValue)
   }
   ```
2. **Prototype modifier payload alignment** (Assigned to Agent 1)  
   - File(s): `DAGFromCode/Mapping.swift`  
   - Changes: Extend `PrototypeLayerModifier` to carry optional `DAGValue` payloads alongside existing numeric arrays, documenting backward compatibility for numeric-only modifiers.
3. **Helpers & utilities** (Assigned to Agent 1)  
   - File(s): `DAGFromCode/Mapping.swift`, `DAGFromCode/DAGGraphView.swift` (read-only in this phase)  
   - Changes: Provide conversion helpers (`DAGValue.numberOrNil`, etc.) to minimize downstream churn; stub color formatting utilities Agent 2 can consume later.
   ```bash
   # commands to run once for the whole team
   xcodebuild -scheme DAGFromCode -destination 'platform=iOS Simulator,name=iPhone 15' build
   ```

### Success Criteria

#### Automated Verification
- [ ] `xcodebuild -scheme DAGFromCode -destination 'platform=iOS Simulator,name=iPhone 15' build`
- [ ] `xcodebuild test -scheme DAGFromCode -destination 'platform=iOS Simulator,name=iPhone 15'`

#### Manual Verification
- [ ] Confirm sample parsing (`ProjectDataParser.parse("true")`) returns `DAGValue.boolean(true)` via an interactive REPL or unit test harness.
- [ ] Document typed value helper availability in `thoughts/work-items/graph-boolean-color-support/status.md`.

**Implementation Note:** Do not start agent-specific phases until the foundation owner records completion details (commit hash, verification logs) in the status doc.

## Phase 1: Emit typed values from parser & visitor

### Overview
Agent 1 updates parsing and visitor logic so boolean and color expressions construct correct `DAGValue` instances and wire them into the graph.

### Changes Required
1. **Boolean literal handling** (Assigned to Agent 1)  
   - File: `DAGFromCode/SwiftSyntaxVisitor.swift`  
   - Changes: Replace numeric stand-ins with `.boolean` outputs, ensure comparison/logic patches operate on typed values, and guard math nodes against non-numeric payloads with diagnostics.
2. **Color literal & modifier support** (Assigned to Agent 1)  
   - File(s): `DAGFromCode/SwiftSyntaxVisitor.swift`, `DAGFromCode/Mapping.swift`  
   - Changes: Detect `Color.*` literals and common initializers, emit dedicated value nodes storing `.color` payloads, and adjust `.fill` modifier resolution to create incoming edges when expressions map to color nodes.
3. **Fallback resolution & variable bindings** (Assigned to Agent 1)  
   - File(s): `DAGFromCode/SwiftSyntaxVisitor.swift`, `DAGFromCode/ProjectDataParser.swift`  
   - Changes: Extend `resolveIncomingEdge` to rebuild color-producing expressions from cached initializers, while maintaining numeric handling.
   ```bash
   swift test --filter DAGFromCodeTests/parseNestedTernary
   ```

### Success Criteria

#### Automated Verification
- [ ] `swift test --filter DAGFromCodeTests/parseNestedTernary`
- [ ] `swift test --filter DAGFromCodeTests/parseEllipseFillModifierCapturesArgumentDescription`

#### Manual Verification
- [ ] Run a playground or unit snippet to parse `Rectangle().fill(Color.red)` and confirm the resulting `PrototypeLayerModifier` references an incoming color edge.
- [ ] Capture updated visitor logging for a boolean ternary and attach the snippet to `status.md`.
- [ ] Agent 1 posts before/after DAG node snapshots (UUID + `DAGValue` cases) in the status doc.

**Implementation Note:** Pause if mismatched payloads trigger fatal assertions; coordinate with Agent 2 before renaming shared enums.

## Phase 2: Render typed payloads and extend tests

### Overview
Agent 2 updates the UI and tests to visualize color outputs, surface boolean semantics, and confirm the graph remains consistent.

### Changes Required
1. **Graph view rendering** (Assigned to Agent 2)  
   - File: `DAGFromCode/DAGGraphView.swift`  
   - Changes: Display value nodes with labels indicating their `DAGValue` type (e.g., boolean badge, color swatch using RGBA), adjust edge coloring logic to differentiate booleans/colors, and ensure layout remains stable.
2. **Prototype metadata presentation** (Assigned to Agent 2)  
   - File(s): `DAGFromCode/DAGGraphView.swift`, `DAGFromCode/Mapping.swift` (read-only for struct access)  
   - Changes: When layer inputs feed from color nodes, annotate the inspector/debug overlays to show the source color.
3. **Test coverage** (Assigned to Agent 2)  
   - File(s): `DAGFromCodeTests/DAGFromCodeTests.swift`, optional fixtures  
   - Changes: Add tests validating typed payload propagation (e.g., `true ? Color.red : Color.blue`), ensure `.fill` now uses incoming edges, and update existing assertions from doubles to `DAGValue`.
   ```bash
   xcodebuild test -scheme DAGFromCode -destination 'platform=iOS Simulator,name=iPhone 15'
   ```

### Success Criteria

#### Automated Verification
- [ ] `xcodebuild test -scheme DAGFromCode -destination 'platform=iOS Simulator,name=iPhone 15'`
- [ ] `swift test --filter DAGFromCodeTests/parseRectangleFillOpacityChainPreservesModifierOrder`

#### Manual Verification
- [ ] Launch the app in Simulator, load a sample with boolean-driven color fills, and confirm the graph shows color swatches and boolean badges accurately.
- [ ] Compare screenshots before/after in `status.md`, highlighting typed payload annotations.
- [ ] Verify no visual regressions in numeric-only DAGs (e.g., `Rectangle().opacity(0.5)`).

**Implementation Note:** Coordinate with Agent 1 if additional `DAGValue` cases or helpers are required for display formatting.

## Testing Strategy
- Unit tests to add: `DAGFromCodeTests/DAGFromCodeTests.swift` (color-driven ternaries, boolean comparisons feeding `.fill`).
- Integration tests to run: `xcodebuild test -scheme DAGFromCode -destination 'platform=iOS Simulator,name=iPhone 15'`.
- Manual steps: Simulator smoke test with sample projects demonstrating boolean and color propagation, record results in `status.md`.

## Performance Considerations
- Monitor `DAGGraphView` rendering for increased layout cost when adding swatches; batch color conversions to avoid repeated parsing.
- Ensure visitor diagnostics short-circuit gracefully to prevent exponential rebuild attempts on complex expressions.

## Migration Notes
- Provide rollback guidance in status doc: revert `DAGValue` to `Double` by keeping enum cases isolated; keep old numeric helper paths behind `#if DEBUG` toggles for quick comparison.
- No schema migrations required; all changes are in-memory.

## References
- `thoughts/work-items/graph-boolean-color-support/research/2025-10-27-ENG-boolean-color-current-state.md`
- `DAGFromCode/Mapping.swift`
- `DAGFromCode/SwiftSyntaxVisitor.swift`
- `DAGFromCode/ProjectDataParser.swift`
- `DAGFromCode/DAGGraphView.swift`
- `DAGFromCodeTests/DAGFromCodeTests.swift`
