<!-- Append updates to prompts/codex-cli-integration/logs/agent-B.log using ISO timestamps; never edit earlier lines. -->

# Subplan for agent-B

## Scope summary
Add streaming domain and reducer transitions; no HTTP client or tests ownership.

## Owned paths
- DAGFromCode/CodexBridgeDomain.swift
- DAGFromCode/CodexBridgeStateMachine.swift

## Shared branch
- All agents must work on `codex-cli-integration`.

## Commands to run
1) Tail your log: `tail -n 20 prompts/codex-cli-integration/logs/agent-B.log`
2) Append start entry: `printf "%s | start | picked up subplan\n" "$(date -Iseconds)" >> prompts/codex-cli-integration/logs/agent-B.log`
3) Confirm branch: `git branch --show-current` must equal `codex-cli-integration`.
4) Domain & reducer:
   - Add `StreamState` enum and streaming actions to `CodexBridgeDomain.swift`.
   - Implement pure transitions in `CodexBridgeStateMachine.swift` with backoff and error mapping.
5) Build locally:
   - `xcodebuild -scheme DAGFromCode -destination 'platform=iOS Simulator,name=iPhone 15' build`
6) Coordinate with agent-D on envelope structures used by the HTTP client.
7) Log milestones (`build ok`, `reducer implemented`). Stop and log `needs-integration` if ownership conflicts arise.

## Verification steps
- Build succeeds
- Reducer compiles with new domain types

## Collision safeguards
1) Do not modify paths outside your ownership. If a change is required, append a `needs-integration` entry to your log and stop.
2) Treat entries under `shared_read_only` as read-only; document requested edits in your log.
