Append updates to prompts/swiftui-view-support/logs/agent-a1.log using ISO timestamps; never edit earlier lines.

# Agent agent-a1 subplan

## Scope summary
Implement the data-model and parser changes so SwiftUI `Rectangle`/`Ellipse` views produce `PrototypeLayer` entries with ordered `.opacity`/`.fill` modifiers (including argument capture) and emit matching `DAGLayerInputNode`s.

## Owned paths
- DAGFromCode/Mapping.swift
- DAGFromCode/SwiftUIVisitors.swift
- DAGFromCode/SwiftSyntaxVisitor.swift
- DAGFromCode/ProjectDataParser.swift

## Shared branch
All work happens on branch `swiftui-view-support`. Do not create personal branches.

## Workflow
1. Tail the latest log entries:
   ```bash
   tail -n 20 prompts/swiftui-view-support/logs/agent-a1.log
   ```
2. Append a start entry:
   ```bash
   printf "%s | start | picked up subplan\n" "$(date -Iseconds)" >> prompts/swiftui-view-support/logs/agent-a1.log
   ```
3. Confirm branch and clean status:
   ```bash
   git branch --show-current
   git status --short
   ```
4. Execute the scoped tasks below without touching files outside the owned paths. If you must edit anything else, append a `needs-integration` entry to the log and wait for guidance.
5. Record milestones (phase completion, tests, blockers) using the append-only log format.

## Phase tasks

### Phase 0 – Foundation scaffolding
- Extend `PrototypeLayer` to maintain an ordered `[PrototypeLayerModifier]` collection; add the `PrototypeLayerModifier` struct with fields for `kind`, `argumentDescription`, and any parsed numeric payloads.
- Introduce `PrototypeLayerInputKind.fill` and ensure helper builders accept modifier payload metadata.
- Outline any helper signatures in `SwiftUIVisitors.swift` needed for modifier capture; keep implementations stub-free by the end of the phase.
- Ensure the project builds before proceeding.
- Log completion:
  ```bash
  printf "%s | phase | foundation scaffolding complete\n" "$(date -Iseconds)" >> prompts/swiftui-view-support/logs/agent-a1.log
  ```

### Phase 1 – Parser emits SwiftUI layers and modifiers
- Detect `Rectangle`/`Ellipse` calls in `visit(_ node: FunctionCallExprSyntax)` before numeric guards; create UUIDs, push/pop view context, and call `addView` with populated modifiers array.
- Recognize `.opacity` and `.fill` in `detectViewModifier`; append ordered modifiers to the active layer and produce `DAGLayerInputNode`s with numeric or upstream inputs.
- Capture `.fill` arguments: serialize literal doubles and identifiers (e.g., `Color.red`) and store them in the modifier payload.
- Route modifier DAG nodes through existing builder utilities while avoiding duplicate UUID reuse.
- Trim verbose diagnostics once the feature works (leave useful debug toggles only).
- When ready, run unit tests:
  ```bash
  xcodebuild test -scheme DAGFromCode -destination 'platform=iOS Simulator,name=iPhone 15'
  ```
- Log test results and any blockers.

## Verification checklist
- [ ] `xcodebuild -scheme DAGFromCode -destination 'platform=iOS Simulator,name=iPhone 15' build`
- [ ] `xcodebuild test -scheme DAGFromCode -destination 'platform=iOS Simulator,name=iPhone 15'`
- [ ] Manual inspection via REPL or breakpoint confirming `ProjectDataParser.parse("Rectangle().fill(Color.red).opacity(0.4)")` yields ordered modifiers with captured arguments.

## Handoff
- Append a final log entry:
  ```bash
  printf "%s | complete | parser scope delivered\n" "$(date -Iseconds)" >> prompts/swiftui-view-support/logs/agent-a1.log
  ```
- Notify agent-a2 via integration notes if shared files require updates.
