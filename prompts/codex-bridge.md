---
title: "Codex bridge helper runbook"
created_at: 2025-10-29
created_by: codex
last_updated: 2025-10-29
last_updated_by: codex
---

## Purpose
Operate the local bridge that proxies between the Catalyst app and the Codex CLI for development.

## Prerequisites
- Python 3.9+
- Codex CLI installed and on `PATH` (future step; helper currently standalone)

## Start the helper
1. `python3 scripts/codex_bridge_server.py --host 127.0.0.1 --port 17890`
2. Verify health: `curl -s http://127.0.0.1:17890/healthz | jq .message`
3. Tail SSE stream: `curl -N http://127.0.0.1:17890/stream`

## Test requests
1. Submit a prompt (replaces `/message`):
   - `curl -X POST -H 'Content-Type: application/json' -d '{"prompt":"Hello"}' http://127.0.0.1:17890/prompt`
2. Fetch latest: `curl -s http://127.0.0.1:17890/latest`
3. Observe SSE frames (expect two `delta` and one `done`):
   - `curl -N http://127.0.0.1:17890/stream`

## Notes
- `/message` is deprecated and returns `410 Gone`; use `/prompt`.
- SSE frames follow `event: delta|patch|done` with `data: { id, type, payload }`.
- Subprocess integration with `codex app-server` will be documented when added.
