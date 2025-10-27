# Repository Guidelines

## Project structure & module organization
SwiftUI sources live in `DAGFromCode/`: `ContentView.swift` bootstraps the UI, `DAGGraphView.swift` and friends render the dependency graph, while parser helpers sit in `ProjectDataParser.swift` and `SwiftSyntaxVisitor.swift`. Shared assets stay in `Assets.xcassets`. Tests belong to `DAGFromCodeTests/`, which currently contains `DAGFromCodeTests.swift`. Build settings reside inside `DAGFromCode.xcodeproj/`, and entitlement changes go through `DAGFromCode/DAGFromCode.entitlements`. Place contributor playbooks in `prompts/` (create the folder if absent) to preserve the research → plan → implement pipeline.

## Build, test, and development commands
- `open DAGFromCode.xcodeproj` launches the workspace in Xcode.
- `xcodebuild -scheme DAGFromCode -destination 'platform=iOS Simulator,name=iPhone 15' build` performs a headless check before review or automation.
- `xcodebuild test -scheme DAGFromCode -destination 'platform=iOS Simulator,name=iPhone 15'` executes the XCTest target in `DAGFromCodeTests/`.
- `npx markdownlint \"**/*.md\"` enforces doc consistency when editing playbooks.

## Coding style & naming conventions
Use four-space indentation and Swift's standard casing (`UpperCamelCase` types, `lowerCamelCase` members). Keep view structs focused; break utility code into files such as `DAGHelpers.swift` or `Mapping.swift`. Favor protocol extensions over free functions for reusable behaviors. When documenting agent flows, wrap inline notes in HTML comments (`<!-- note -->`) so automation ignores them. Store new icons as PDF or vector sets inside `Assets.xcassets`.

## Testing guidelines
Add XCTest cases to `DAGFromCodeTests/` with descriptive `test`-prefixed method names (e.g., `testGraphBuildsFromSampleProject`). Keep fixtures light; stash reusable SwiftSyntax snippets under `DAGFromCodeTests/Fixtures/` when you add them. Run `xcodebuild test` before every pull request and note simulator model, iOS version, and outcomes in the change description.
- When simulator runs stall with Mach `-308` errors, reset before re-running: `xcrun simctl shutdown all` and then `xcodebuild test -scheme DAGFromCode -destination 'platform=iOS Simulator,name=iPad Pro 13-inch (M4),OS=18.6'`. If shutdown doesn’t help, boot the target simulator once in the Simulator app to complete asset installs, then rerun the command.

## Commit & pull request guidelines
Write commits in imperative present tense (e.g., “Add DAG debugger toggles”) and scope each commit to a single concern: a view, helper, or prompt update. Pull requests should outline behavior changes, list touched files with absolute paths such as `prompts/plan.md`, and mention any follow-up issues. Include screenshots or screen recordings for UI shifts and note the commands or simulators you used for verification.

## Agent workflow alignment
Respect the staged lifecycle: capture discovery in `prompts/research.md`, convert direction into numbered steps in `prompts/plan.md`, and record execution details in `prompts/implement.md`. If you add ingest or QA helpers, document entry and exit criteria so the next agent knows where to resume. Keep runtime transcripts in `sessions/` and telemetry in `log/` to separate guidance from artifacts.
