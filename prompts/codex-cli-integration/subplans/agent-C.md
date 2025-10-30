<!-- Append updates to prompts/codex-cli-integration/logs/agent-C.log using ISO timestamps; never edit earlier lines. -->

# Subplan for agent-C

## Scope summary
Wire streaming into ViewModel and SwiftUI, add persistence and UX.

## Owned paths
- DAGFromCode/CodexBridgeViewModel.swift
- DAGFromCode/CodexBridgeView.swift
- DAGFromCode/ContentView.swift

## Shared branch
- All agents must work on `codex-cli-integration`.

## Commands to run
1) Tail your log: `tail -n 20 prompts/codex-cli-integration/logs/agent-C.log`
2) Append start entry: `printf "%s | start | picked up subplan\n" "$(date -Iseconds)" >> prompts/codex-cli-integration/logs/agent-C.log`
3) Confirm branch: `git branch --show-current` must equal `codex-cli-integration`.
4) ViewModel:
   - Replace polling loop with streaming consumption and backoff.
   - Persist host/port/token in `UserDefaults`.
5) SwiftUI:
   - Show connection state; add copy-last-envelope; add “Fetch latest” fallback.
6) Build locally:
   - `xcodebuild -scheme DAGFromCode -destination 'platform=iOS Simulator,name=iPhone 15' build`
7) Manual verify with helper running:
   - UI shows connecting → open → backoff on helper stop.
8) Log milestones and any `needs-integration` events.

## Verification steps
- Build succeeds for Catalyst target
- UI reflects streaming lifecycle

## Collision safeguards
1) Do not modify paths outside your ownership. If a change is required, append a `needs-integration` entry to your log and stop.
2) Treat entries under `shared_read_only` as read-only; document requested edits in your log.
