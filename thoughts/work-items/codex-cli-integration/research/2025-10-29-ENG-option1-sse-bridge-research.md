---
title: "Codex CLI option 1 streaming bridge research"
slug: codex-cli-integration
created_at: 2025-10-29
created_by: codex
last_updated: 2025-10-29
last_updated_by: codex
status: draft
last_updated_note: "Documented current bridge state versus the planned ThreadingHTTPServer + SSE integration."
tags: [mac-catalyst, networking, codex]
---

# Codex CLI option 1 streaming bridge research

## Summary
The current Python helper still runs as a single-threaded `HTTPServer` that echoes messages into a module-level string without spawning the Codex CLI or exposing streaming endpoints, so none of the option 1 targets—ThreadingHTTPServer, managed CLI subprocess, or `/stream` SSE—exist yet. On the Swift side the domain/state machine only models polling via `latest` and a binary `isListening` flag; the view model spins a one-second polling loop and the SwiftUI tab surfaces manual send/clear actions with no streaming envelope or persistence. The desktop integration plan continues to define `/healthz`, `/prompt`, and SSE delta/patch events, providing the contract the bridge still needs to meet.

## Research Scope
- Catalogue the Python helper’s capabilities and gaps relative to the option 1 bridge checklist.
- Trace the Swift domain, reducer, and HTTP client to see how they would need to evolve for SSE streaming and backoff.
- Record UI- and persistence-related changes the Catalyst view must absorb once streaming is available.
- Reconcile the in-repo implementation with the external Codex CLI integration plan and prior research notes.

## Findings
### Python helper has no Codex CLI subprocess or streaming support
- `scripts/codex_bridge_server.py:23-74` – Defines a minimal `HTTPServer` handler that serves `/healthz`, `/latest`, and `/message`, storing the most recent payload in the global `LATEST_MESSAGE` and returning JSON responses synchronously; no SSE endpoint or CLI invocation hooks exist.
- `scripts/codex_bridge_server.py:82-89` – Instantiates `HTTPServer` directly and blocks in `serve_forever`, so the bridge runs single-threaded and never manages a Codex CLI subprocess or monitors its health.
- `log/bridge-17890.log:1-11` – Shows an `OSError: [Errno 48] Address already in use` when the helper is relaunched, underscoring the lack of lifecycle management or port retry logic proposed in option 1.

### Swift domain and reducer model polling only
- `DAGFromCode/CodexBridgeDomain.swift:29-77` – `CodexBridgeState` tracks a single draft, response string, `isSending`, and `isListening`; commands cover health checks, message sends, and starting/stopping a polling loop but omit any streaming envelope or backoff metadata.
- `DAGFromCode/CodexBridgeStateMachine.swift:123-165` – `startListening` resolves configuration then issues `.beginListening`, while `latestMessagePolled`/`latestMessagePollFailed` transition state; no actions exist for `streamOpened`, `streamEventReceived`, failures, or exponential backoff.

### HTTP client limited to REST probes
- `DAGFromCode/CodexBridgeHTTPClient.swift:24-92` – Implements `healthCheck`, `sendMessage`, and `latestMessage` with simple GET/POST flows; there is no `AsyncSequence` or parsing of `event:`/`data:` frames required for SSE.

### View model spins a fixed polling loop
- `DAGFromCode/CodexBridgeViewModel.swift:40-98` – Processes commands by launching tasks that await the REST helpers, and the `.beginListening` branch loops forever with `Task.sleep` for one-second polling; configuration changes restart polling but do not persist values or manage incremental backoff.

### SwiftUI surface reflects manual polling state
- `DAGFromCode/CodexBridgeView.swift:29-35` – Calls `viewModel.startListening()` from a `.task`, tying the tab’s lifecycle to the polling loop without stream-aware status indicators.
- `DAGFromCode/CodexBridgeView.swift:61-132` – Presents host/port/token text fields and a “Send to Codex CLI” button, but there is no control to copy the last envelope, trigger a one-shot fetch, or surface reconnect timers that option 1 calls for.
- `DAGFromCode/ContentView.swift:29-35` – Exposes the Codex Bridge tab, ensuring the Catalyst build already loads this view so upcoming streaming UI changes will appear within the existing tab structure.

### Catalyst target already permits loopback networking
- `DAGFromCode/DAGFromCode.entitlements:5-10` – App entitlements now include `com.apple.security.network.client`, so additional networking permissions are not blocking the option 1 feature work.

### External plan still defines the target contract
- `/Users/christianjclampitt/Desktop/CodexBridgeIntegration.md:30-104` – Documents running `codex app-server` on `127.0.0.1:17890`, the minimal REST endpoints, and the SSE event stream (`event: delta`, `event: patch`, `event: done`) that the helper must relay.
- `thoughts/work-items/codex-cli-integration/research/2025-10-29-ENG-catalyst-cli-bridge-baseline.md:70-81` – Captures the option 1 roadmap items (ThreadingHTTPServer proxy, SSE stream, state-machine extensions, persistence) that remain unimplemented today.

## Code References
- `scripts/codex_bridge_server.py:23-89` – Current loopback helper endpoints and single-threaded server setup.
- `DAGFromCode/CodexBridgeDomain.swift:29-77` – Bridge state model and command set (polling-focused).
- `DAGFromCode/CodexBridgeStateMachine.swift:123-165` – Reducer logic for listening/polling transitions.
- `DAGFromCode/CodexBridgeHTTPClient.swift:24-92` – REST-only client used by the view model.
- `DAGFromCode/CodexBridgeViewModel.swift:40-98` – Polling loop implementation and lack of streaming/backoff.
- `DAGFromCode/CodexBridgeView.swift:29-132` – SwiftUI controls exposed to Catalyst users.
- `DAGFromCode/DAGFromCode.entitlements:5-10` – Networking entitlement enabling loopback access.

## Architecture Documentation
The Catalyst tab (`ContentView` → `CodexBridgeView`) drives the bridge via the observable `CodexBridgeViewModel`, which delegates side effects to `CodexBridgeHTTPClient`. The state machine maintains configuration validation, dispatches REST commands, and stores the latest message fetched from `/latest`. Because the Python helper only mirrors the last POST body, the Catalyst flow depends on periodic polling to surface responses. Enabling option 1 requires inserting a managed Codex CLI subprocess into the helper, proxying JSON-RPC over HTTP, upgrading to an SSE-capable, multi-threaded server, and extending the Swift reducer/view model to manage streaming envelopes, reconnection backoff, and persisted credentials, all while preserving the existing tab hand-off.

## Historical Context (if applicable)
- `thoughts/work-items/codex-cli-integration/research/2025-10-29-ENG-catalyst-cli-bridge-baseline.md:62-81` – Prior research cataloging the newly added bridge UI and outlining the option 1 implementation roadmap.

## Related Research
- `thoughts/work-items/codex-cli-integration/research/2025-10-29-ENG-catalyst-cli-bridge-baseline.md` – Baseline investigation describing current bridge UI and helper behavior.

## Open Questions
- What JSON-RPC methods and envelope schema does `codex app-server` expect, and can we record sample payloads to guide the Swift domain model?
- How should the helper manage CLI subprocess restarts and surface exit codes to Catalyst via `/healthz` or SSE control frames?
- Which persistence mechanism (`UserDefaults` vs. Keychain) best fits the host/port/token requirements once the view starts remembering credentials?
- What retry/backoff cadence should the Swift state machine implement for unstable streams without overwhelming the helper?

## Follow-up Research 2025-10-29T16-54-47

### SSE framing contract
1. Content type: `text/event-stream; charset=utf-8`. Connections must be long‑lived and unbuffered.
2. Frame grammar: one or more `field: value` lines, terminated by a blank line. Supported fields: `event`, `data`, optional `id`, optional `retry` (ms).
3. Heartbeats: send a comment line every N seconds (`: keep-alive\n\n`) to keep intermediaries from closing the socket.
4. Event types (mirroring the desktop plan): `delta`, `patch`, `done`. Reference examples: `/Users/christianjclampitt/Desktop/CodexBridgeIntegration.md:67-92`.
5. Helper behavior: set `Cache-Control: no-store`, `Connection: keep-alive`, and flush after each frame.

### Codex CLI subprocess lifecycle (helper responsibilities)
1. Launch: start `codex app-server` via `subprocess.Popen`, capture `stdin`, `stdout`, and `stderr` for bidirectional JSON‑RPC and diagnostics.
2. Port binding: current `codex app-server --help` does not expose a `--port` flag; the helper should bind its own HTTP port (e.g., 17890) and proxy between HTTP/SSE and the app‑server’s stdio. Confirm flags as CLI evolves. (`codex app-server --help` observed locally.)
3. Health: read stderr for fatal signals; if the process exits, broadcast an SSE control frame (for example, `event: error`) and close all `/stream` subscribers.
4. Restart: apply exponential backoff (e.g., 1s → 2s → 4s → max 30s) before attempting to relaunch; surface `503` on `/healthz` while down.
5. Shutdown: on SIGTERM/KeyboardInterrupt, stop accepting new requests, close SSE subscribers, send EOF to `codex`, wait with timeout, then `kill` if needed.

### Persistence (agreed interim approach)
1. Store in `UserDefaults` with keys: `codex.host`, `codex.port`, `codex.token`.
2. Load on app start and update on change; consider migrating `token` to Keychain in a future pass.
3. Current code has no persistence; this is net‑new behavior for `CodexBridgeViewModel`. (`DAGFromCode/CodexBridgeViewModel.swift:40-98`)

### Error/status mapping (bridge HTTP surface)
1. `200 OK` – Healthy responses for `/healthz`, `/latest`, `/message`.
2. `400 Bad Request` – Invalid JSON or envelope.
3. `401 Unauthorized` – Missing/invalid bearer token (when enforced).
4. `404 Not Found` – Unknown path.
5. `409 Conflict` – Request references unknown `replyTo`/`id` or violates current session state.
6. `503 Service Unavailable` – Codex CLI subprocess not running or initializing; include `Retry-After`.

### Risks and assumptions
1. Assumptions: loopback only; bearer token optional; CLI provides JSON‑RPC over stdio; SSE consumers tolerate heartbeats. (`/Users/christianjclampitt/Desktop/CodexBridgeIntegration.md:30-104`)
2. Risks: port conflicts (see `log/bridge-17890.log:1-11`), SSE frame buffering by proxies, CLI flag drift (no `--port` in current help), backpressure on large patches.

### Implementation checklist
1. Python helper: switch to `ThreadingHTTPServer` and add `/stream` SSE endpoint with heartbeat and proper headers. (`scripts/codex_bridge_server.py:23-89`)
2. Subprocess manager: spawn `codex app-server`, pipe stdio, tail stderr, implement backoff restart, and set `/healthz` to 503 while down.
3. JSON‑RPC proxy: translate HTTP `/message` → JSON‑RPC request on app‑server stdin; forward stdout events to SSE subscribers.
4. Envelope: formalize `CodexBridgeEnvelope` in Swift (id, ts, direction, type, payload, replyTo, rawMessage) and ensure the helper streams the raw JSON in `data:`.
5. Swift client: add `stream(configuration:) -> AsyncThrowingStream<CodexBridgeEnvelope>` using `URLSession.bytes(for:)`; parse SSE frames and map to actions.
6. State machine: add `streamOpened`, `streamEventReceived`, `streamFailed`, `reconnectRequested`; track backoff state and last error.
7. Persistence: implement `UserDefaults` load/save for host/port/token in the view model; add a UI affordance to clear token.
8. Diagnostics: add `/metrics` (optional) for subscriber count and subprocess pid/status; add copy‑envelope button in UI.
