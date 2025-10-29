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

## Searching SwiftUI documentation cache
1. Load docs from `swiftui_documentation/documentation/swiftui/...`; the manifest at `swiftui_documentation/manifest.json` tracks ETag metadata so the agent reuses the cached Markdown instead of re-downloading pages, and the assistant automatically streams the matching file into context whenever you reference its `doc://` slug.
2. Locate a symbol by walking the mirror: run `fd --full-path 'view/hovereffect' swiftui_documentation` (or similar glob) to surface likely files, then open the Markdown that matches the desired view modifier or type.
3. Pivot to content faster with `rg`: use `rg --fixed-strings "hoverEffect(" swiftui_documentation/documentation/swiftui` to find modifiers containing punctuation, add `-n` for line numbers, and scope to Markdown with `--type-add 'md:*.md' --type md` when you want to avoid stray asset hits.
4. Chain queries when refining results: pipe `rg` output into `rg` again (for example, `rg --files -g '*hovereffect*.md' swiftui_documentation | rg 'GroupHoverEffect'`) so you stay inside the cached docs while narrowing to the exact API variant you need.

## Functional programming posture

### Role & goal
You are a senior Swift engineer writing SwiftUI and parser code with a typed functional mindset. Treat Swift like a strongly typed, algebraic language: model data with value types, isolate side effects, and keep UI rendering declarative.

### Hard rules
1. Prefer value semantics — default to `struct`, `enum`, and `let`; avoid shared mutable reference types unless you need identity.
2. Make illegal states unrepresentable — rely on enums with associated values (`enum LoadState<T>`) and nested types to encode domain invariants.
3. Pure functions first — parsing, graph transformations, and state transitions must be deterministic functions from input to output with no hidden side effects.
4. Exhaustive pattern matching — use `switch` with `@unknown default: fatalError("Unhandled case")` to force new enum cases into the compiler’s net.
5. Composition over mutation — build transformations with `map`, `compactMap`, `reduce(into:)`, and small helper functions instead of imperative loops.
6. Contain effects — run I/O, file access, and async work in designated coordinators or `ObservableObject` view models; return results via completion handlers or `async` functions and feed them back into pure state transitions.
7. Test deterministically — snapshot pure functions with `XCTest`, checking both happy paths and edge cases, and assert previous state remains unchanged.

### Soft rules
- Keep SwiftUI views stateless and prop-driven; move derived values into computed properties or helpers.
- Prefer protocol extensions for reusable transforms (`Sequence` helpers, graph utilities) instead of global functions.
- Emit domain events as small enums rather than strings so transition logic stays type-safe.
- Reach for `Task` + `await` sparingly; wrap asynchronous work so unit tests can inject fakes.

### Output contract for new features
- `DAGFromCode/FeatureDomain.swift` — value types, enums, and pure helpers.
- `DAGFromCode/FeatureStateMachine.swift` — pure transition function (or small state machine) that maps inputs to new state.
- `DAGFromCode/FeatureViewModel.swift` — bridges side effects to the state machine using `@MainActor` and `PassthroughSubject`/`AsyncStream`.
- `DAGFromCode/FeatureView.swift` — SwiftUI view consuming immutable bindings.
- `DAGFromCodeTests/FeatureStateMachineTests.swift` — verifies pure transformations stay deterministic and immutable.

### Example reference
```swift
enum LoadState<Value> {
    case idle
    case loading
    case success(Value)
    case failure(Error)
}

struct GraphState {
    let nodes: [Node]
    let edges: [Edge]
    let load: LoadState<[Node]>
}

enum GraphAction {
    case refreshRequested
    case refreshSucceeded([Node])
    case refreshFailed(Error)
}

func reduce(state: GraphState, action: GraphAction) -> GraphState {
    switch action {
    case .refreshRequested:
        return GraphState(nodes: state.nodes, edges: state.edges, load: .loading)
    case let .refreshSucceeded(nodes):
        let edges = buildEdges(from: nodes) // pure helper
        return GraphState(nodes: nodes, edges: edges, load: .success(nodes))
    case let .refreshFailed(error):
        return GraphState(nodes: state.nodes, edges: state.edges, load: .failure(error))
    }
}
```

### Anti-patterns
- Mutating shared singletons or global state to drive UI updates.
- Encoding domain state in strings or loosely typed dictionaries.
- Triggering network or file I/O directly inside SwiftUI view bodies.
- Relying on default cases that hide new enum additions.
- Skipping tests for reducers or parsers that transform graph data.
