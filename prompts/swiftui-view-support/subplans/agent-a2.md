Append updates to prompts/swiftui-view-support/logs/agent-a2.log using ISO timestamps; never edit earlier lines.

# Agent agent-a2 subplan

## Scope summary
Leverage parser outputs to surface SwiftUI layers/modifiers in the debug UI and add regression tests documenting `.opacity`/`.fill` behavior.

## Owned paths
- DAGFromCode/DAGDebugView.swift
- DAGFromCode/DAGDebugViewWithGraph.swift
- DAGFromCode/DAGGraphView.swift
- DAGFromCodeTests/**
- prompts/swiftui-view-support/** (documentation only)

## Shared branch
All work happens on branch `swiftui-view-support`. Do not create personal branches.

## Workflow
1. Tail the latest log entries:
   ```bash
   tail -n 20 prompts/swiftui-view-support/logs/agent-a2.log
   ```
2. Append a start entry:
   ```bash
   printf "%s | start | picked up subplan\n" "$(date -Iseconds)" >> prompts/swiftui-view-support/logs/agent-a2.log
   ```
3. Confirm branch and review status:
   ```bash
   git branch --show-current
   git status --short
   ```
4. Follow the phase tasks below. Stay within the owned paths; if a shared file requires edits, append a `needs-integration` entry and pause.
5. Log milestones, test results, and integration requests using the append-only log format.

## Phase tasks

### Phase 2 – Debug UIs and tests
- In `DAGDebugView.swift`, introduce a SwiftUI section (e.g., “SwiftUI Layers”) that lists each `PrototypeLayer` from `projectData.views`, showing layer type, modifier order, and captured argument descriptions.
- In `DAGDebugViewWithGraph.swift`, add a complementary summary or sidebar for `projectData.views` without disrupting the existing canvas layout.
- Update `DAGGraphView.swift` so modifier nodes reference their parent view (include a short UUID prefix or label) to improve traceability.
- Add a live SwiftUI preview pane that renders each parsed layer (start with `Rectangle`/`Ellipse`) applying `.fill` colors and evaluated `.opacity` values so the right-hand panel mirrors the screenshot reference.
- Create new XCTest cases in `DAGFromCodeTests/DAGFromCodeTests.swift` for:
  - `Rectangle().opacity(0.5)`
  - `Ellipse().fill(Color.red)`
  - `Rectangle().fill(Color.blue).opacity(0.4)` (confirm modifier ordering and payload capture)
- Ensure tests assert modifier counts, ordering, and argument serialization.
- Capture screenshots or notes if UI changes require visual confirmation; store references in the status doc or integration notes.
- Execute the test suite:
  ```bash
  xcodebuild test -scheme DAGFromCode -destination 'platform=iOS Simulator,name=iPhone 15'
  ```

## Verification checklist
- [ ] Visual confirmation in both debug views that SwiftUI layers/modifiers render alongside the DAG.
- [ ] `xcodebuild test -scheme DAGFromCode -destination 'platform=iOS Simulator,name=iPhone 15'`
- [ ] Documentation updates capturing manual observations in `thoughts/work-items/swiftui-view-support/status.md` or `prompts/swiftui-view-support/integration-notes.md`.

## Handoff
- Append a final log entry:
  ```bash
  printf "%s | complete | debug ui and tests delivered\n" "$(date -Iseconds)" >> prompts/swiftui-view-support/logs/agent-a2.log
  ```
- Coordinate with agent-a1 if integration issues remain; record follow-ups in `prompts/swiftui-view-support/integration-notes.md`.
