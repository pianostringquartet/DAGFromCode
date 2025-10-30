<!-- Append updates to prompts/codex-cli-integration/logs/agent-A.log using ISO timestamps; never edit earlier lines. -->

# Subplan for agent-A (Phase 4)

## Scope summary
Own the Python bridge upgrade for Codex CLI subprocess management and SSE relaying, plus doc updates.

## Owned paths
- scripts/codex_bridge_server.py
- scripts/** (new helpers placed under `scripts/` must use the `codex_cli_*.py` prefix)
- prompts/codex-bridge.md

## Shared branch
- All agents must work on `codex-cli-integration`.

## Commands to run
1) Tail your log: `tail -n 20 prompts/codex-cli-integration/logs/agent-A.log`
2) Append start entry: `printf "%s | start | picked up phase4 subplan\n" "$(date -Iseconds)" >> prompts/codex-cli-integration/logs/agent-A.log`
3) Confirm branch: `git branch --show-current` must equal `codex-cli-integration`.
4) Build CLI subprocess manager:
   1. Create/extend a helper (e.g., `codex_cli_process.py`) that spawns `codex app-server` with configurable binary path/env and captures stdout/stderr asynchronously.
   2. Add lifecycle hooks: start on demand, propagate health (PID, last heartbeat), tear down on shutdown or error.
   3. Surface structured events back to `codex_bridge_server.py` (e.g., via an `asyncio` queue or thread-safe generator).
5) Integrate streaming relay:
   1. Update `codex_bridge_server.py` so `POST /prompt` forwards payloads to the CLI subprocess API.
   2. Translate CLI event stream (`delta`, `patch`, `error`, `done`) into SSE frames with the envelope id from the CLI response.
   3. When the subprocess exits unexpectedly, emit an SSE `event: error` and update `/healthz` with failure details.
6) Operational safeguards:
   1. Add CLI path configuration via env vars (`CODEX_CLI_BIN`, `CODEX_CLI_PROFILE`) and document defaults.
   2. Ensure the helper shuts down the child process on SIGINT/SIGTERM and when the parent exits.
7) Local validation:
   1. `python3 -m pyflakes scripts/codex_bridge_server.py scripts/codex_cli_process.py`
   2. `python3 scripts/codex_bridge_server.py --host 127.0.0.1 --port 17890 --spawn-cli`
   3. In another shell run `curl -s http://127.0.0.1:17890/healthz | jq .status`
   4. `curl -X POST -H 'Content-Type: application/json' -d '{"prompt":"Phase 4 test"}' http://127.0.0.1:17890/prompt`
   5. `curl -N http://127.0.0.1:17890/stream | head -n 20`
8) Documentation:
   1. Update `prompts/codex-bridge.md` with CLI launch requirements, new flags, failure handling, and troubleshooting.
   2. Note CLI prerequisites (Codex CLI installed, auth, config) and the expected SSE shape (`delta|patch|error|done`).
9) Log milestones (`cli-spawn-ready`, `sse-relay`, `docs-updated`, etc.) in `agent-A.log`.
10) If ownership boundaries are hit, append `needs-integration` to the log and pause.

## Verification steps
- CLI subprocess launches, logs PID, and shuts down cleanly with the helper.
- `/healthz` reports CLI status (`ok`/`degraded`), including exit code on failure.
- `/stream` streams real CLI output (`delta` → `done`) without duplicate demo data.
- pyflakes passes on all touched Python files.

## Collision safeguards
1) Do not modify paths outside your ownership. If a change is required, append a `needs-integration` entry to your log and stop.
2) Treat entries under `shared_read_only` as read-only; document requested edits in your log.
