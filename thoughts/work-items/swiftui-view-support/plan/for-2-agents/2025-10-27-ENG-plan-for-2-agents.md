---
agent_count: 2
---

# SwiftUI View Support Implementation Plan for 2 agents

## Overview
Implement SwiftUI view support so the parser instantiates `Rectangle`/`Ellipse` layers, records ordered `.opacity`/`.fill` modifiers (including arguments), and exposes those artifacts in the debug UIs alongside new tests proving the flow.

## Current State Analysis
- `DAGFromCode/Mapping.swift:38-145` – `PrototypeLayer` lacks a modifier list and `PrototypeLayerInputKind` omits `.fill`, so view metadata cannot hold SwiftUI modifier chains.
- `DAGFromCode/SwiftSyntaxVisitor.swift:486-560` – Visitor gates all `MemberAccessExprSyntax`/`FunctionCallExprSyntax` through numeric patch lookups, skipping SwiftUI initializers and modifiers entirely.
- `DAGFromCode/SwiftUIVisitors.swift:19-72` – Helper stubs exist for view/modifier detection but always return `nil`, blocking any SwiftUI wiring.
- `DAGFromCode/DAGDebugView.swift:20-99` & `DAGFromCode/DAGDebugViewWithGraph.swift:20-68` – Debug panes only render the DAG; `projectData.views` is ignored so layers/modifiers never surface.
- `DAGFromCodeTests/DAGFromCodeTests.swift:1-400` – XCTest coverage validates numeric DAGs but no assertions verify SwiftUI layer creation or modifier ordering.

## Desired End State
- Parsing `Rectangle()` / `Ellipse()` yields `PrototypeLayer` entries with `modifiers` storing ordered `.opacity`/`.fill` payloads plus matching `DAGLayerInputNode` outputs for numeric chaining.
- `.fill` modifiers capture their argument (stringified expression and basic literal extraction for colors/scalars) so downstream UIs can display meaningful details.
- Debug views list detected SwiftUI layers and their modifiers beside existing DAG output without disturbing current visualization behavior.
- Tests prove layer detection, modifier ordering, payload capture, and DAG linkage for `.opacity` and `.fill` scenarios.

## Foundation setup
- Owner: Agent 1 – Parser/Data Model
- Tasks: add modifier data structures, extend enums (`PrototypeLayerInputKind.fill`), and ensure `ProjectData` scaffolding compiles before deeper visitor/UI edits.
- Exit criteria: build succeeds with new structs/enums, and both agents agree on the serialized modifier shape they will consume.

### Key Discoveries
- `DAGFromCode/SwiftSyntaxVisitor.swift:486-560` – We must branch before current guards to intercept SwiftUI syntax without breaking numeric parsing.
- `DAGFromCode/DAGGraphView.swift:240-360` – Layer-input nodes already render distinctly; emitting modifier DAG nodes will automatically appear once created.

## What We're NOT Doing
- No additional view types beyond `Rectangle`/`Ellipse` in this milestone.
- No parsing of layout APIs (e.g., `.frame`, `.position`) yet.
- No gradient/color semantic evaluation past capturing literal/identifier payload strings.
- No refactor of the existing numeric DAG visualization beyond presenting parallel SwiftUI lists.

## Implementation Approach
Establish a shared `PrototypeLayerModifier` model storing `kind`, `argumentDescription`, and optional numeric payloads. Extend visitor helpers to detect SwiftUI views/modifiers, track the active layer UUID, and append modifiers in call order while emitting `DAGLayerInputNode`s for `.opacity`/`.fill` inputs. Update debug UIs to show `projectData.views` with modifier details and add targeted tests covering single/multiple modifier chains plus payload capture. Both agents work on branch `swiftui-view-support` and must coordinate if shared files (`ProjectDataParser.swift`, status docs) change.

## Agent assignments
| Agent | Owned paths (glob) | Primary responsibilities | Shared touchpoints |
|-------|--------------------|--------------------------|--------------------|
| Agent 1 | `DAGFromCode/SwiftSyntaxVisitor.swift`, `DAGFromCode/SwiftUIVisitors.swift`, `DAGFromCode/Mapping.swift`, `DAGFromCode/ProjectDataParser.swift` | Data model changes, SwiftUI detection, modifier payload capture, ensure DAG nodes link correctly | Coordinate test fixtures in `DAGFromCodeTests/` and status doc updates |
| Agent 2 | `DAGFromCode/DAGDebugView*.swift`, `DAGFromCode/DAGGraphView.swift`, `DAGFromCodeTests/**`, `prompts/` docs if needed | Surface views/modifiers in debug UI, write/maintain SwiftUI parsing tests, document behavior | Align with Agent 1 on modifier schema and sample snippets |

## Status tracking
- Shared doc: `thoughts/work-items/swiftui-view-support/status.md`
- Structure:
  - Section per agent (`## Agent 1`, `## Agent 2`) with task checklists and dated notes.
  - Include foundation completion logs, parser/UI milestones, outstanding questions.
- Update cadence: after each phase completion or when blocking issues arise.

## Phase 0: Foundation (shared setup)

### Overview
Define shared modifier schema, extend enums, and confirm the project still builds before deeper visitor or UI edits.

### Changes Required
1. **Prototype modifier scaffolding** (Assigned to Agent 1)
   - File(s): `DAGFromCode/Mapping.swift`, `DAGFromCode/SwiftUIVisitors.swift`
   - Changes: add `PrototypeLayerModifier` struct with ordered payload fields, extend `PrototypeLayer` to hold `[PrototypeLayerModifier]`, introduce `PrototypeLayerInputKind.fill`, sketch helper signatures for capturing modifier arguments.
   ```bash
   xcodebuild -scheme DAGFromCode -destination 'platform=iOS Simulator,name=iPhone 15' build
   ```

### Success Criteria

#### Automated Verification
- [ ] `xcodebuild -scheme DAGFromCode -destination 'platform=iOS Simulator,name=iPhone 15' build`

#### Manual Verification
- [ ] Document agreed modifier payload format in `thoughts/work-items/swiftui-view-support/status.md`
- [ ] Confirm both agents can compile with the new data structures before moving to Phase 1

**Implementation Note:** Do not modify visitor logic until the shared modifier schema merges; this prevents divergent assumptions across agents.

## Phase 1: Parser emits SwiftUI layers & modifiers

### Overview
Teach the parser to produce `PrototypeLayer` records and matching modifier DAG nodes while capturing `.fill` arguments and preserving modifier order.

### Changes Required
1. **SwiftUI view detection** (Assigned to Agent 1)
   - File: `DAGFromCode/SwiftSyntaxVisitor.swift`
   - Changes: branch early in `visit(_ node: FunctionCallExprSyntax)` to detect `Rectangle`/`Ellipse`, allocate `UUID`s, push/pop current view context, and add views through `addView`.
2. **Modifier parsing and ordering** (Assigned to Agent 1)
   - File(s): `DAGFromCode/SwiftSyntaxVisitor.swift`, `DAGFromCode/SwiftUIVisitors.swift`
   - Changes: enhance `detectViewModifier` to recognize `.opacity` and `.fill`, append `PrototypeLayerModifier` entries in sequence, and emit `DAGLayerInputNode`s that either hold literal numeric inputs or upstream edges.
3. **Argument capture for `.fill`** (Assigned to Agent 1)
   - File(s): `DAGFromCode/SwiftUIVisitors.swift`, `DAGFromCode/ProjectDataParser.swift`
   - Changes: extract modifier arguments (e.g., literal doubles, `Color` identifiers) into the modifier payload, falling back to `String(describing:)` for complex expressions, and ensure payload serialization travels with `ProjectData`.

### Success Criteria

#### Automated Verification
- [ ] `xcodebuild test -scheme DAGFromCode -destination 'platform=iOS Simulator,name=iPhone 15'`

#### Manual Verification
- [ ] Run `ProjectDataParser.parse("Rectangle().opacity(0.5)")` in a playground or unit test and confirm the first view includes one modifier with argument `0.5` in order.
- [ ] Validate `Rectangle().fill(Color.red).opacity(0.4)` produces two modifiers ordered [`fill`, `opacity`] and `.fill` stores the argument description.

**Implementation Note:** Emit console logging only behind debug flags to avoid polluting UI panes once SwiftUI parsing activates.

## Phase 2: Debug UI + tests surface SwiftUI data

### Overview
Expose captured SwiftUI layers/modifiers in the debugging UI and codify expectations with new tests.

### Changes Required
1. **Debug panels display views** (Assigned to Agent 2)
   - File(s): `DAGFromCode/DAGDebugView.swift`, `DAGFromCode/DAGDebugViewWithGraph.swift`
   - Changes: add sections listing `projectData.views`, showing layer type, modifier order, and argument descriptions without altering existing DAG rendering.
2. **Graph annotations for modifiers** (Assigned to Agent 2)
   - File: `DAGFromCode/DAGGraphView.swift`
   - Changes: ensure modifier DAG nodes render with labels referencing their parent view (e.g., include short view UUID prefix) for readability.
3. **Test coverage for SwiftUI parsing** (Assigned to Agent 2)
   - File(s): `DAGFromCodeTests/DAGFromCodeTests.swift`
   - Changes: add cases for `Rectangle().opacity(0.5)`, `Ellipse().fill(Color.red)`, and chained modifiers; assert modifier ordering, payload capture, and DAG node linkage.

### Success Criteria

#### Automated Verification
- [ ] `xcodebuild test -scheme DAGFromCode -destination 'platform=iOS Simulator,name=iPhone 15'`

#### Manual Verification
- [ ] Launch `DAGDebugView` and confirm the SwiftUI section lists layers/modifiers for sample input.
- [ ] Drag nodes in `DAGDebugViewWithGraph` to ensure modifier nodes remain visible and linked after UI additions.
- [ ] Capture screenshots or notes in `thoughts/work-items/swiftui-view-support/status.md` summarizing observed UI output.

**Implementation Note:** Coordinate with Agent 1 if tests need helper APIs to access modifier payloads; extend models rather than peeking into private state.

## Testing Strategy
- Add targeted SwiftUI parsing tests under `DAGFromCodeTests/DAGFromCodeTests.swift` covering single and chained modifiers.
- Re-run existing numeric DAG tests to ensure regressions are avoided.
- Manual smoke test via the debug UI for representative SwiftUI snippets.

## Performance Considerations
- Modifier detection should exit early for unsupported views to avoid slowing numeric parsing; cache the current view context to prevent redundant UUID allocation.

## Migration Notes
- No persistent storage or schema migrations required; changes are in-memory representations only.

## References
- `thoughts/work-items/swiftui-view-support/research/2025-10-27-CODEX-swiftui-baseline.md`
- `DAGFromCode/Mapping.swift`
- `DAGFromCode/SwiftSyntaxVisitor.swift`
