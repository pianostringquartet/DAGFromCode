---
title: "Codex CLI bridge – implementation plan (for 1 agent)"
slug: codex-cli-integration
created_at: 2025-10-29
created_by: codex
last_updated: 2025-10-29
last_updated_by: codex
agent_count: 1
status: draft
---

# Codex CLI bridge implementation plan for 1 agent

## Overview
Build a local loopback integration between the Mac Catalyst app and the Codex CLI. Replace the current polling prototype with a streaming connection (SSE) and upgrade the Python helper to proxy between Catalyst and `codex app-server`. Deliver a reliable developer UX inside the existing “Codex Bridge” tab for configuration, health checks, sending prompts, and viewing streamed responses.

## Current state analysis
- `DAGFromCode/ContentView.swift:10-35` – Bridge tab is present in the Catalyst app.
- `DAGFromCode/CodexBridgeView.swift:10-120` – UI exposes host/port/token, health check, send/clear; no streaming controls.
- `DAGFromCode/CodexBridgeViewModel.swift:40-118` – Starts a 1s polling loop against `GET /latest`.
- `DAGFromCode/CodexBridgeHTTPClient.swift:20-98` – Implements `GET /healthz`, `POST /message` (to be replaced by `POST /prompt`), `GET /latest`; no SSE client.
- `DAGFromCode/CodexBridgeDomain.swift:17-77` – Models configuration, status, and `isListening` for polling only.
- `DAGFromCode/DAGFromCode.entitlements:1-12` – `com.apple.security.network.client` enabled; loopback allowed.
- `scripts/codex_bridge_server.py:1-120` – Minimal HTTP helper (healthz/latest/message) with in-memory latest message; no SSE or CLI subprocess.
- `thoughts/work-items/codex-cli-integration/research/*` – Baseline and option 1 (ThreadingHTTPServer + SSE + CLI subprocess) documented.

## Desired end state
- Helper process (dev-only) provides:
  - `GET /healthz` – bridge + CLI healthy.
  - `POST /prompt` – submit prompt to CLI; returns ack/envelope id. Use immediately in both helper and Swift client (no `/message` alias).
  - `GET /stream` – SSE with `event: delta|patch|done` and `data: { "id": string, "type": "delta|patch|done", "payload": {…} }` frames.
- Catalyst client consumes `/stream` via `AsyncThrowingStream` with reconnect/backoff and persists host/port/token in `UserDefaults`.
- UI shows connection state, latest envelope, quick copy, and a one-shot “Fetch latest” fallback.
- Reducer fully models streaming lifecycle and error/backoff transitions.

## Foundation setup
- Owner: Solo (this work-item)
- Tasks:
  - Upgrade helper to `ThreadingHTTPServer`, add `GET /stream` SSE, keep existing REST endpoints for sanity checks.
  - Document local run and curl fixtures in `prompts/codex-bridge.md`.
- Exit criteria:
  - `curl -N http://127.0.0.1:17890/stream` yields valid SSE frames while a dummy producer emits `delta` then `done`.

### Key discoveries
- Bridge tab exists and is live; entitlements already allow networking.

## What we’re not doing
- Production auth or persistence beyond `UserDefaults`.
- Shipping CLI inside the app bundle.
- Non-loopback networking or service discovery.

## Implementation approach
Single agent delivers helper + Swift changes in phases. Keep polling path as a debug fallback until SSE is validated. Commit to shared `codex-cli-integration` branch; keep Python and Swift changes scoped to their respective files as listed below.

## Agent assignments
| Agent | Owned paths (glob) | Primary responsibilities | Shared touchpoints |
|---|---|---|---|
| Solo | `DAGFromCode/CodexBridge*`, `DAGFromCode/ContentView.swift`, `scripts/**`, `prompts/**`, `thoughts/work-items/codex-cli-integration/**` | Helper server with SSE + (later) CLI subprocess; Swift domain/reducer; SSE client; ViewModel/UI; docs/tests | Align SSE framing and REST names |

## Status tracking
- Shared doc: `thoughts/work-items/codex-cli-integration/status.md`
- Update cadence: after each phase or major milestone.

## Phase 0: Foundation (helper SSE)

### Overview
Add a threaded helper with `GET /stream` SSE while retaining existing REST endpoints.

### Changes required
1. Threading server + SSE (+ REST alignment)
   - File: `scripts/codex_bridge_server.py`
   - Changes: move to `ThreadingHTTPServer`; implement `GET /stream` with proper `text/event-stream` headers; send heartbeat and test `delta`/`done` frames; keep `/healthz`, `/latest`; replace `/message` with `POST /prompt` immediately.
   ```bash
   python3 scripts/codex_bridge_server.py --host 127.0.0.1 --port 17890
   curl -N http://127.0.0.1:17890/stream
   ```
2. Runbook
   - File: `prompts/codex-bridge.md`
   - Changes: add SSE usage, curl examples, troubleshooting.

### Success criteria
#### Automated
- [ ] `python3 -m pyflakes scripts/codex_bridge_server.py`
- [ ] `curl -s http://127.0.0.1:17890/healthz | jq .message`
#### Manual
- [ ] `curl -N /stream` shows `delta` frames followed by `done`.

## Phase 1: Swift domain and reducer (streaming model)

### Overview
Model SSE lifecycle and backoff in pure state.

### Changes required
1. Domain additions
   - File: `DAGFromCode/CodexBridgeDomain.swift`
   - Add `StreamState` (idle, connecting, open, backoff(retryIn:), failed(error)) and actions: `streamOpened`, `streamEventReceived(String)`, `streamFailed(String)`, `reconnectRequested`.
2. Reducer transitions
   - File: `DAGFromCode/CodexBridgeStateMachine.swift`
   - Map new actions to state; emit `.beginListening(configuration:)`; keep a thin compatibility path for polling.

### Success criteria
#### Automated
- [ ] Build with `xcodebuild -scheme DAGFromCode -destination 'platform=iOS Simulator,name=iPhone 15' build`
- [ ] Tests in `DAGFromCodeTests/CodexBridgeStateMachineTests.swift` validate open/event/error/backoff transitions.
#### Manual
- [ ] Status text shows connecting → open → backoff on helper stop.

## Phase 2: HTTP client (SSE)

### Overview
Consume SSE with `AsyncThrowingStream` and parse frames.

### Changes required
1. Streaming API
   - File: `DAGFromCode/CodexBridgeHTTPClient.swift`
   - Add `stream(configuration:) -> AsyncThrowingStream<CodexBridgeEnvelope>` using `URLSession.bytes(for:)`; parse `event:`/`data:`; surface `delta|patch|done`.
2. Error mapping
   - Map network/HTTP failures to client errors and include retry hints.

### Success criteria
#### Automated
- [ ] Build succeeds; unit test covers frame parsing.
#### Manual
- [ ] With helper running, UI logs streaming events in real time.

## Phase 3: ViewModel and UI

### Overview
Replace polling with streaming, add persistence, and polish UX.

### Changes required
1. ViewModel streaming
   - File: `DAGFromCode/CodexBridgeViewModel.swift`
   - Replace polling loop with stream consumption; manage task lifecycle; exponential backoff; persist host/port/token via `UserDefaults`.
2. SwiftUI updates
   - File: `DAGFromCode/CodexBridgeView.swift`
   - Show stream status; copy-last-envelope; one-shot “Fetch latest” fallback.

### Success criteria
#### Automated
- [ ] Build succeeds for Catalyst.
#### Manual
- [ ] Tab resumes stream on appear; editing settings triggers reconnect with updated config.

## Phase 4: Helper ↔ Codex CLI subprocess

### Overview
Spawn `codex app-server` and relay its events to `/stream`.

### Changes required
1. Subprocess lifecycle
   - File: `scripts/codex_bridge_server.py`
   - Spawn the CLI, capture stdout, translate to SSE events; health-check child process; graceful shutdown.
2. Endpoint alignments
   - Enforce `POST /prompt` (effective immediately) in helper and Swift client; no `/message` alias. Update any docs and references accordingly.

### Success criteria
#### Automated
- [ ] Helper detects child exit and reports error over `/healthz`.
#### Manual
- [ ] End-to-end prompt submission streams `delta` → `done` in UI.

## Testing strategy
- Unit tests: reducer transitions and SSE frame parsing.
- Manual: helper curl-driven checks; app UI streaming verification.

## Performance considerations
- Apply exponential backoff with jitter for reconnects; avoid blocking main thread on parsing.

## Migration notes
- Keep polling behind a debug flag until SSE stabilizes.

## References
- `thoughts/work-items/codex-cli-integration/research/2025-10-29-ENG-catalyst-cli-bridge-baseline.md`
- `thoughts/work-items/codex-cli-integration/research/2025-10-29-ENG-option1-sse-bridge-research.md`
- `DAGFromCode/CodexBridge*.swift`
- `scripts/codex_bridge_server.py`
