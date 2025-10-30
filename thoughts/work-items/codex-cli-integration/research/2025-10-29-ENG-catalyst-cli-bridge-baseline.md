---
title: "Codex CLI bridge baseline"
slug: codex-cli-integration
created_at: 2025-10-29
created_by: codex
last_updated: 2025-10-29
last_updated_by: codex
status: draft
last_updated_note: "Captured Catalyst bridge implementation status."
tags: [mac-catalyst, networking, codex]
---

# Codex CLI bridge baseline

## Summary
The Mac Catalyst target currently launches a local DAG debugging interface with no networking or Codex CLI hooks. All SwiftUI surfaces render offline parsing results via `DAGSourceEditorViewModel`, and the app’s entitlements only allow sandboxed, user-selected read access, so no loopback messaging path exists yet. The standalone integration plan on the desktop describes the desired `codex` bridge server, but none of that contract is implemented inside the project at this commit.

## Research Scope
- Identify the Catalyst app entry points and UI surfaces that would host CLI messaging.
- Trace the existing editor/view-model pipeline to confirm it performs only local parsing.
- Check shipping entitlements and repository assets for Codex bridge scaffolding or network allowances.
- Capture the external integration plan that defines the target HTTP interface.

## Findings
### Catalyst app boots only the in-app DAG debuggers
- `DAGFromCodeApp.swift` wires the entire app to a single `ContentView`, so there is no launcher for bridge setup or status UI. `DAGFromCode/DAGFromCodeApp.swift:10-15`
- `ContentView` presents just two tabs (`DAGDebugView`, `DAGDebugViewWithGraph`) and no controls for network discovery or CLI messaging. `DAGFromCode/ContentView.swift:14-28`

### Editor pipeline parses Swift source locally
- `DAGSourceEditorViewModel` drives all data flow by debouncing text changes and calling `ProjectDataParser.parse` on the main thread; it exposes parsing state through `@Published` properties and performs no networking or IPC. `DAGFromCode/DAGSourceEditorViewModel.swift:11-93`
- The accompanying `DAGSourceEditorPane` only surfaces example snippets, a text editor, and parse status, reinforcing that the current UX is offline and file-centric. `DAGFromCode/DAGSourceEditorViewModel.swift:96-149`

### Current entitlements lack network permissions
- The Catalyst entitlements restrict the binary to the app sandbox plus read-only, user-selected files, and do not include `com.apple.security.network.client`, so loopback `URLSession` calls would fail until the entitlement is added. `DAGFromCode/DAGFromCode.entitlements:1-8`

### External bridge contract lives outside the app
- The desktop plan specifies running `codex app-server` on `127.0.0.1:17890`, defines minimal REST/SSE endpoints, and includes the sample Swift `URLSession` probe your Catalyst code should eventually ship. `/Users/christianjclampitt/Desktop/CodexBridgeIntegration.md:1-122`

## Code References
- `DAGFromCode/DAGFromCodeApp.swift:10-15` – Application entry point.
- `DAGFromCode/ContentView.swift:14-28` – Tab-only UI without integration hooks.
- `DAGFromCode/DAGSourceEditorViewModel.swift:11-149` – Local parse orchestration and editor surface.
- `DAGFromCode/DAGFromCode.entitlements:1-8` – Sandbox settings omitting network access.
- `/Users/christianjclampitt/Desktop/CodexBridgeIntegration.md:1-122` – Proposed Codex bridge architecture.

## Architecture Documentation
The Catalyst scene graph is rooted in `DAGFromCodeApp` → `ContentView`, which hosts the debugging panes. `DAGSourceEditorViewModel` manages all state transitions by pulling parsed DAG data directly from `ProjectDataParser` and exposing it to both tabs. Because no networking clients or bridge services exist, adding Codex support will require introducing a new state machine or view model to manage loopback connectivity, integrating it into `ContentView`, and expanding entitlements to permit network clients. `DAGFromCode/DAGFromCodeApp.swift:10-15`, `DAGFromCode/ContentView.swift:14-28`, `DAGFromCode/DAGSourceEditorViewModel.swift:11-93`

## Historical Context (if applicable)
- None noted.

## Related Research
- None yet.

## Open Questions
- Which scene (tab vs. global overlay) should own the shared connection state to the Codex bridge?
- What authentication flow (bearer token vs. unauthenticated) will the Catalyst UI expose for the loopback server?
- Should the app embed a lightweight HTTP/SSE client or wrap the bridge using Swift’s `URLSession`/`AsyncSequence` APIs for streaming patches?
- How will the project persist host, port, and token details within the sandbox (e.g., Keychain vs. `UserDefaults`)?

## Follow-up Research 2025-10-29
- `DAGFromCode/CodexBridgeView.swift:1-142` – Added a dedicated tab that surfaces host, port, and bearer token fields plus buttons to run health checks and send the development “Hello” payload.
- `DAGFromCode/CodexBridgeViewModel.swift:1-82` – Introduced an observable view model that interprets UI intents, drives `CodexBridgeStateMachine`, and issues loopback HTTP commands during development.
- `DAGFromCode/CodexBridgeStateMachine.swift:1-92` – Encodes the pure reducer that validates configuration, queues HTTP commands, and captures responses without performing side effects directly.
- `DAGFromCode/CodexBridgeStateMachine.swift:1-92` – Encodes the pure reducer that validates configuration, queues HTTP commands, and now surfaces remote messages returned by `/healthz` as the latest response.
- `DAGFromCode/CodexBridgeViewModel.swift:1-126` – Manages health checks, message sends, and a background polling loop that continually fetches `/latest` so incoming CLI messages appear without manual refresh.
- `DAGFromCode/CodexBridgeView.swift:10-208` – Starts and stops the polling loop on view lifecycle and restarts it whenever host/port/token settings change.
- `DAGFromCode/CodexBridgeHTTPClient.swift:1-86` – Implements the lightweight `URLSession` client used in development to hit `/healthz` and `/message` on the local bridge server.

## Follow-up Research 2025-10-29T16-05-00
### Summary
1. Confirmed Catalyst bridge now targets an in-repo Python helper and identified the gap: Codex CLI is not yet part of the pipeline.
2. Captured Option 1 path forward—upgrade the helper to host `codex app-server`, add streaming, and normalize hand-off payloads without changing Catalyst entitlements.

### Next steps
1. `scripts/codex_bridge_server.py` – spawn the Codex CLI `app-server`, translate HTTP `/message` payloads into JSON-RPC requests, track subprocess health, and broadcast Codex events through a new `GET /stream` SSE endpoint.
2. `DAGFromCode/CodexBridgeDomain.swift` & `DAGFromCode/CodexBridgeStateMachine.swift` – add streaming actions (`streamOpened`, `streamEventReceived`, `streamFailed`, `reconnectRequested`) plus state to reflect SSE status and exponential backoff metadata.
3. `DAGFromCode/CodexBridgeHTTPClient.swift` – implement `stream(configuration:) -> AsyncThrowingStream<CodexBridgeEnvelope>` using `URLSession.bytes(for:)`, keeping existing `/healthz` and `/message` helpers for manual probes.
4. `DAGFromCode/CodexBridgeViewModel.swift` – replace the polling task with an SSE consumer, persist host/port/token via `UserDefaults`, and surface backoff or failure hints to the reducer.
5. `DAGFromCode/CodexBridgeView.swift` – refresh UI copy and controls to show stream connection state, enable copying the JSON envelope, and provide a manual “Fetch latest once” fallback.
6. `thoughts/work-items/codex-cli-integration/research/` – document the finalized SSE bridge contract (handoff envelope schema, curl examples, helper run instructions) when the implementation lands.
