<!-- Append updates to prompts/codex-cli-integration/logs/agent-D.log using ISO timestamps; never edit earlier lines. -->

# Subplan for agent-D (Phase 4)

## Scope summary
Extend the HTTP client for Codex CLI subprocess streaming (including error frames) and harden tests covering parser + reducer integration.

## Owned paths
- DAGFromCode/CodexBridgeHTTPClient.swift
- DAGFromCodeTests/**

## Shared branch
- All agents must work on `codex-cli-integration`.

## Commands to run
1) Tail your log: `tail -n 20 prompts/codex-cli-integration/logs/agent-D.log`
2) Append start entry: `printf "%s | start | picked up phase4 subplan\n" "$(date -Iseconds)" >> prompts/codex-cli-integration/logs/agent-D.log`
3) Confirm branch: `git branch --show-current` must equal `codex-cli-integration`.
4) HTTP client upgrades:
   1. Support CLI event taxonomy: `delta`, `patch`, `error`, `log`, `done` with structured payload decoding (id, type, timestamp, text/json payload).
   2. Surface decoding errors via a dedicated `ClientError.protocolViolation(details:)` and propagate HTTP 5xx/4xx from the helper.
   3. Provide utilities to stream stderr/log events into optional callbacks for the ViewModel.
5) Testing:
   1. Add parser fixtures matching Codex CLI SSE output (delta chunks, patch JSON, error frame, done).
   2. Create async unit tests verifying `stream(configuration:)` yields the expected envelopes when fed recorded byte streams (use `URLProtocol` stubs).
   3. Expand reducer/HTTP client collaboration tests to cover restart after `error` and EOF sequences (coordinate with agent-B on domain types).
6) Tooling:
   1. Add Swift test fixtures under `DAGFromCodeTests/Fixtures/CLIStream/` for reuse.
   2. Ensure tests run deterministically (no reliance on real CLI).
7) Build & test:
   1. `xcodebuild -scheme DAGFromCode -destination 'platform=macOS,variant=Mac Catalyst' build`
   2. `xcodebuild test -scheme DAGFromCode -destination 'platform=macOS,variant=Mac Catalyst' -only-testing DAGFromCodeTests/CodexBridgeSSEParserTests`
8) Log milestones (`http-client-cli`, `tests-green`, `build-ok`). Use `needs-integration` log entries for blockers.

## Verification steps
- Catalyst build and focused tests succeed locally.
- SSE parser/stream tests cover CLI error + done events.
- Client surfaces protocol violations and stderr entries without crashing the async stream.

## Collision safeguards
1) Do not modify paths outside your ownership. If a change is required, append a `needs-integration` entry to your log and stop.
2) Treat entries under `shared_read_only` as read-only; document requested edits in your log.
