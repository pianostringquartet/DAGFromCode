<!-- Append updates to prompts/codex-cli-integration/logs/agent-B.log using ISO timestamps; never edit earlier lines. -->

# Subplan for agent-B (Phase 4)

## Scope summary
Evolve the Swift domain/state machine for real Codex CLI envelopes, error propagation, and subprocess health signalling.

## Owned paths
- DAGFromCode/CodexBridgeDomain.swift
- DAGFromCode/CodexBridgeStateMachine.swift

## Shared branch
- All agents must work on `codex-cli-integration`.

## Commands to run
1) Tail your log: `tail -n 20 prompts/codex-cli-integration/logs/agent-B.log`
2) Append start entry: `printf "%s | start | picked up phase4 subplan\n" "$(date -Iseconds)" >> prompts/codex-cli-integration/logs/agent-B.log`
3) Confirm branch: `git branch --show-current` must equal `codex-cli-integration`.
4) Domain enhancements:
   1. Introduce structured envelope metadata (`id`, `source`, `timestamp`, `kind`, `payload` summary) to align with the CLI JSON schema.
   2. Model CLI subprocess health (`running`, `degraded(exitCode)`, `restartScheduled(retryIn)`).
   3. Extend `StreamFailure` for CLI-specific errors (auth, handshake, malformed event) and add a `BridgeAlert` type for surfacing banner text to the UI.
5) Reducer updates:
   1. Handle new actions from the view model: `.cliProcessStarted`, `.cliProcessExited(code:stderr:)`, `.streamEnvelopeReceived`, `.streamErrorReceived`.
   2. Drive restart policy by emitting `.beginListening` after successful restarts and `.performHealthCheck` when CLI restarts complete.
   3. Ensure illegal states remain unrepresentable (e.g., no `listening` while CLI is `stopped` unless `restartPending`).
6) State derivations:
   1. Add computed helpers for UI badges (`statusText`, `statusColor`, `availableActions`).
   2. Persist last `envelopeID` to tie UI badges to the CLI response timeline.
7) Build locally: `xcodebuild -scheme DAGFromCode -destination 'platform=macOS,variant=Mac Catalyst' build`
8) Log milestones (`domain-metadata`, `reducer-restart`, `build-ok`). If conflicts arise, append `needs-integration` to the log and pause.

## Verification steps
- Catalyst build succeeds with the updated domain/reducer.
- Unit tests added by agent-D compile against new domain types (coordinate on data structures).
- Reducer transitions exercise CLI start/exit -> stream restart without runtime assertions.

## Collision safeguards
1) Do not modify paths outside your ownership. If a change is required, append a `needs-integration` entry to your log and stop.
2) Treat entries under `shared_read_only` as read-only; document requested edits in your log.
