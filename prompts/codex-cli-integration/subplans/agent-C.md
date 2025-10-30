<!-- Append updates to prompts/codex-cli-integration/logs/agent-C.log using ISO timestamps; never edit earlier lines. -->

# Subplan for agent-C (Phase 4)

## Scope summary
Update the ViewModel and SwiftUI surfaces to consume real Codex CLI subprocess events, expose health, and orchestrate retries.

## Owned paths
- DAGFromCode/CodexBridgeViewModel.swift
- DAGFromCode/CodexBridgeView.swift
- DAGFromCode/ContentView.swift

## Shared branch
- All agents must work on `codex-cli-integration`.

## Commands to run
1) Tail your log: `tail -n 20 prompts/codex-cli-integration/logs/agent-C.log`
2) Append start entry: `printf "%s | start | picked up phase4 subplan\n" "$(date -Iseconds)" >> prompts/codex-cli-integration/logs/agent-C.log`
3) Confirm branch: `git branch --show-current` must equal `codex-cli-integration`.
4) ViewModel streaming loop:
   1. Consume the richer envelopes from `CodexBridgeHTTPClient` (including `error`, `stdout`, `stderr`, progress tokens).
   2. Dispatch new actions to the state machine for CLI lifecycle events (`cliProcessStarted`, `cliProcessExited`, `streamErrorReceived`).
   3. Track in-flight prompts by id and surface acknowledgement state (pending → streaming → completed).
   4. Coordinate restart policy with Agent-B’s reducer updates (respect backoff timer before reissuing `.beginListening`).
5) SwiftUI updates:
   1. Add status pills for CLI process (`Running`, `Restarting in Ns`, `Offline`).
   2. Present the most recent envelope id and allow copying the aggregated transcript.
   3. Show inline error banners when the CLI exits unexpectedly, with a “Retry now” button that triggers `startListening`.
   4. Expose a toggle to enable/disable automatic restarts (persist the preference).
6) Persistence and settings:
   1. Persist CLI path overrides and restart toggle in `UserDefaults`.
   2. On app launch, rehydrate configuration and attempt to reconnect if the helper reports a healthy CLI.
7) Validation:
   1. Build: `xcodebuild -scheme DAGFromCode -destination 'platform=macOS,variant=Mac Catalyst' build`
   2. Manual run: start the helper with CLI enabled, launch the Catalyst app, send a prompt, and observe streaming text + CLI status updates.
8) Log milestones (`viewmodel-cli`, `ui-status`, `build-ok`, `manual-verified`) and any integration blockers (append `needs-integration` if needed).

## Verification steps
- Catalyst build succeeds and Catalyst UI reflects CLI status and prompt lifecycle.
- Manual test shows streamed text, ack badge, and restart handling after killing the helper’s child process.
- Preferences (CLI path, auto-restart toggle) persist across launches.

## Collision safeguards
1) Do not modify paths outside your ownership. If a change is required, append a `needs-integration` entry to your log and stop.
2) Treat entries under `shared_read_only` as read-only; document requested edits in your log.
