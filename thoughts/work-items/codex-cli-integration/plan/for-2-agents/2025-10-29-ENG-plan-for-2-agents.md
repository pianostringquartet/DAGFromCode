---
title: "Codex CLI bridge – implementation plan (for 2 agents)"
slug: codex-cli-integration
created_at: 2025-10-29
created_by: codex
last_updated: 2025-10-29
last_updated_by: codex
agent_count: 2
status: draft
---

# Codex CLI bridge implementation plan for 2 agents

## Overview
Add a local loopback bridge between the Mac Catalyst app and the Codex CLI. Replace the current polling prototype with a streaming connection (SSE) and formalize a helper that proxies between Catalyst and `codex app-server`. Ship a reliable developer UX inside the existing “Codex Bridge” tab for configuration, health, sending prompts, and viewing latest responses.

## Current state analysis
- `DAGFromCode/ContentView.swift:10-35` – Bridge tab is present in the Catalyst app.
- `DAGFromCode/CodexBridgeView.swift:10-120` – UI exposes host/port/token, health check, and send/clear; no streaming controls.
- `DAGFromCode/CodexBridgeViewModel.swift:40-118` – Starts a 1s polling loop against `GET /latest`; no SSE.
- `DAGFromCode/CodexBridgeHTTPClient.swift:20-98` – Implements `GET /healthz`, `POST /message`, `GET /latest`; no `AsyncSequence` SSE client.
- `DAGFromCode/CodexBridgeDomain.swift:17-77` – Models configuration, status, and `isListening` for polling only; lacks streaming/backoff actions.
- `DAGFromCode/DAGFromCode.entitlements:1-12` – `com.apple.security.network.client` enabled; loopback allowed.
- `scripts/codex_bridge_server.py:1-120` – Minimal HTTP bridge (healthz/latest/message) with in-memory latest message; no SSE or Codex CLI subprocess.
- `thoughts/work-items/codex-cli-integration/research/2025-10-29-ENG-catalyst-cli-bridge-baseline.md:13` – Baseline summary and open questions captured.
- `thoughts/work-items/codex-cli-integration/research/2025-10-29-ENG-option1-sse-bridge-research.md:13` – Option 1 (ThreadingHTTPServer + SSE + CLI subprocess) documented.

## Desired end state
- Helper process hosts `codex app-server` and proxies a stable HTTP surface:
  - `GET /healthz` – bridge + CLI healthy.
  - `POST /prompt` – submit prompt to CLI; returns ack/envelope id.
  - `GET /stream` – SSE stream of `delta`, `patch`, and `done` events.
- Catalyst client uses an `AsyncThrowingStream` to consume `/stream` with reconnect/backoff.
- UI surfaces connection state, latest event/envelope, and quick copy; persists host/port/token.
- Tests cover reducer transitions and configuration resolution; manual steps confirm end-to-end streaming.

## Foundation setup
- Owner: Agent 2 (Helper & docs)
- Tasks:
  - Introduce a Threading HTTP helper capable of spawning `codex app-server` and relaying SSE.
  - Add a lightweight run script/instructions to start the helper during development.
  - Document SSE contract (event names, JSON envelope) alongside curl examples.
- Exit criteria:
  - Running the helper yields `GET /stream` with valid SSE frames while a dummy producer emits `delta`/`done` events.

### Key discoveries
- `DAGFromCode` already includes a dedicated bridge tab with polling.
- Entitlements allow loopback networking in Catalyst.

## What we're not doing
- Shipping production auth or persistence beyond `UserDefaults`.
- Embedding the Codex CLI inside the app bundle.
- Implementing non-loopback networking or remote discovery.

## Implementation approach
Phased delivery: Agent 2 upgrades the Python helper to manage the Codex CLI and SSE; Agent 1 evolves the Swift domain, reducer, and HTTP client to stream events and reflect state in the UI. Both agents work on the shared branch and respect the ownership map. Polling remains available as a fallback until SSE is verified.

## Agent assignments
| Agent | Owned paths (glob) | Primary responsibilities | Shared touchpoints |
|---|---|---|---|
| Agent 1 | `DAGFromCode/CodexBridge*`, `DAGFromCode/ContentView.swift` | Domain, reducer, HTTP/SSE client, ViewModel, SwiftUI updates, persistence | Coordinate `/stream` format and status codes |
| Agent 2 | `scripts/**`, `prompts/**`, `thoughts/work-items/codex-cli-integration/**` | Helper server with SSE + CLI subprocess, docs/runbook, curl fixtures | Provide SSE framing, sample events, run instructions |

## Status tracking
- Shared doc: `thoughts/work-items/codex-cli-integration/status.md`
- Structure:
  - `## Agent 1 – Swift` checklist and dated updates
  - `## Agent 2 – Helper` checklist and dated updates
  - Blockers with file references
- Update cadence: after each phase

## Phase 0: Foundation (shared setup)

### Overview
Prepare the helper scaffolding and local run workflow so Swift teammates can test SSE quickly.

### Changes required
1. Environment / repo setup (Assigned to Agent 2)
   - Files: `scripts/codex_bridge_server.py`, `prompts/`, `thoughts/work-items/codex-cli-integration/research/`
   - Changes:
     - Add `ThreadingHTTPServer` and an SSE endpoint `GET /stream` emitting `event:` and `data:` frames.
     - Add subprocess management to spawn `codex app-server` and relay its events to SSE clients.
     - Provide `curl` examples and troubleshooting in `prompts/codex-bridge.md`.
   ```bash
   # local run (dev)
   python3 scripts/codex_bridge_server.py --host 127.0.0.1 --port 17890
   curl -N http://127.0.0.1:17890/stream
   ```

### Success criteria

#### Automated verification
- [ ] `python3 -m pyflakes scripts/codex_bridge_server.py`
- [ ] `curl -s http://127.0.0.1:17890/healthz | jq .message`

#### Manual verification
- [ ] `curl -N /stream` shows `delta` frames followed by `done`.
- [ ] Document helper logs and endpoints in `status.md`.

## Phase 1: Swift domain and reducer – streaming model

### Overview
Extend the pure model to represent SSE lifecycle and backoff.

### Changes required
1. Domain additions (Agent 1)
   - File: `DAGFromCode/CodexBridgeDomain.swift`
   - Changes: add `StreamState` (idle, connecting, open, backoff(retryIn:), failed(error)) and actions (`streamOpened`, `streamEventReceived(String)`, `streamFailed(String)`, `reconnectRequested`). Add backoff metadata to state.
2. Reducer transitions (Agent 1)
   - File: `DAGFromCode/CodexBridgeStateMachine.swift`
   - Changes: map new actions to state transitions and commands; emit `beginListening` with configuration; convert poll-specific actions to streaming-friendly names while keeping a thin compatibility layer.

### Success criteria

#### Automated verification
- [ ] `xcodebuild -scheme DAGFromCode -destination 'platform=iOS Simulator,name=iPhone 15' build`
- [ ] Unit tests in `DAGFromCodeTests/CodexBridgeStateMachineTests.swift` assert transitions for open/event/error/backoff.

#### Manual verification
- [ ] Status text reflects connecting → open → backoff on helper stop.

## Phase 2: HTTP client – SSE stream

### Overview
Add an `AsyncThrowingStream` client that parses SSE `event:`/`data:` frames and reconnects with backoff.

### Changes required
1. SSE streaming API (Agent 1)
   - File: `DAGFromCode/CodexBridgeHTTPClient.swift`
   - Changes: implement `stream(configuration:) -> AsyncThrowingStream<CodexBridgeEnvelope>` using `URLSession.bytes(for:)`; parse frames; surface events (`delta`, `patch`, `done`).
2. Error mapping (Agent 1)
   - Map HTTP/network errors to client errors; add retry-after/backoff hints.

### Success criteria

#### Automated verification
- [ ] Build succeeds; basic unit test covers frame parsing function.

#### Manual verification
- [ ] With helper running, UI logs streaming events in real time.

## Phase 3: View model and UI updates

### Overview
Consume the stream, persist settings, and polish the tab UX.

### Changes required
1. View model streaming (Agent 1)
   - File: `DAGFromCode/CodexBridgeViewModel.swift`
   - Changes: replace polling loop with consumption of `stream(configuration:)`; manage task lifecycle; implement exponential backoff; persist host/port/token via `UserDefaults`.
2. SwiftUI updates (Agent 1)
   - File: `DAGFromCode/CodexBridgeView.swift`
   - Changes: show stream status, copy-last-envelope, and a one-shot "Fetch latest" fallback.

### Success criteria

#### Automated verification
- [ ] Build succeeds for Catalyst target.

#### Manual verification
- [ ] Switching tabs resumes stream; toggling settings reconnects with updated config.

## Testing strategy
- Unit tests: `DAGFromCodeTests/CodexBridgeStateMachineTests.swift` covering reducer, backoff, and configuration resolution.
- Manual: helper end-to-end with `curl -N /stream`; app tab shows streaming updates.

## Performance considerations
- Limit reconnect rate with exponential backoff; avoid UI-thread parsing of high-volume frames.

## Migration notes
- None (development-only feature path). Keep polling behind a debug flag temporarily.

## References
- `thoughts/work-items/codex-cli-integration/research/2025-10-29-ENG-catalyst-cli-bridge-baseline.md`
- `thoughts/work-items/codex-cli-integration/research/2025-10-29-ENG-option1-sse-bridge-research.md`
- `DAGFromCode/CodexBridge*.swift`
- `scripts/codex_bridge_server.py`

