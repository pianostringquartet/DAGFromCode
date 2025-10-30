<!-- Append updates to prompts/codex-cli-integration/logs/agent-A.log using ISO timestamps; never edit earlier lines. -->

# Subplan for agent-A

## Scope summary
Implement Python helper SSE server, align REST endpoints, and author bridge runbook.

## Owned paths
- scripts/**
- prompts/codex-bridge.md

## Shared branch
- All agents must work on `codex-cli-integration`.

## Commands to run
1) Tail your log: `tail -n 20 prompts/codex-cli-integration/logs/agent-A.log`
2) Append start entry: `printf "%s | start | picked up subplan\n" "$(date -Iseconds)" >> prompts/codex-cli-integration/logs/agent-A.log`
3) Confirm branch: `git branch --show-current` must equal `codex-cli-integration`.
4) Implement SSE helper:
   - Edit `scripts/codex_bridge_server.py` to use `ThreadingHTTPServer`.
   - Add `GET /stream` with `text/event-stream`, heartbeat, and `delta|done` test frames.
   - Keep `GET /healthz`, `GET /latest`.
   - Replace `/message` with `POST /prompt` immediately.
5) Validate locally:
   - `python3 -m pyflakes scripts/codex_bridge_server.py`
   - `python3 scripts/codex_bridge_server.py --host 127.0.0.1 --port 17890`
   - `curl -s http://127.0.0.1:17890/healthz`
   - `curl -N http://127.0.0.1:17890/stream`
6) Update docs:
   - Edit `prompts/codex-bridge.md` with SSE usage, curl fixtures, and troubleshooting.
7) Log milestones to `prompts/codex-cli-integration/logs/agent-A.log` (e.g., `phase complete`, `tests passed`).
8) If you must edit outside ownership, append `needs-integration` to your log and stop.

## Verification steps
- SSE emits delta then done via curl
- /healthz returns healthy JSON
- pyflakes passes

## Collision safeguards
1) Do not modify paths outside your ownership. If a change is required, append a `needs-integration` entry to your log and stop.
2) Treat entries under `shared_read_only` as read-only; document requested edits in your log.
