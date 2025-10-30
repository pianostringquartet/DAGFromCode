<!-- Append updates to prompts/codex-cli-integration/logs/agent-D.log using ISO timestamps; never edit earlier lines. -->

# Subplan for agent-D

## Scope summary
Implement streaming HTTP client and unit tests for SSE parsing.

## Owned paths
- DAGFromCode/CodexBridgeHTTPClient.swift
- DAGFromCodeTests/**

## Shared branch
- All agents must work on `codex-cli-integration`.

## Commands to run
1) Tail your log: `tail -n 20 prompts/codex-cli-integration/logs/agent-D.log`
2) Append start entry: `printf "%s | start | picked up subplan\n" "$(date -Iseconds)" >> prompts/codex-cli-integration/logs/agent-D.log`
3) Confirm branch: `git branch --show-current` must equal `codex-cli-integration`.
4) Streaming API:
   - Implement `stream(configuration:) -> AsyncThrowingStream<CodexBridgeEnvelope>` in `CodexBridgeHTTPClient.swift` using `URLSession.bytes(for:)`.
   - Parse `event:` and `data:` fields; surface `delta|patch|done`.
5) Tests:
   - Add `DAGFromCodeTests/CodexBridgeStateMachineTests.swift` or similar for reducer collaboration as needed.
   - Add a dedicated SSE parser test ensuring frames map to expected envelopes, including error cases and EOF → `done`.
6) Build locally:
   - `xcodebuild -scheme DAGFromCode -destination 'platform=iOS Simulator,name=iPhone 15' build`
7) Log milestones (`build ok`, `tests added`, `parser green`). Stop and log `needs-integration` if ownership conflicts arise.

## Verification steps
- Build succeeds
- SSE parsing unit tests pass

## Collision safeguards
1) Do not modify paths outside your ownership. If a change is required, append a `needs-integration` entry to your log and stop.
2) Treat entries under `shared_read_only` as read-only; document requested edits in your log.
