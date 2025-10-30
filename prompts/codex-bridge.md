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
3. Tail stream (once SSE lands): `curl -N http://127.0.0.1:17890/stream`

## Test requests
1. Send a message: `curl -X POST -H 'Content-Type: application/json' -d '{"message":"Hello"}' http://127.0.0.1:17890/message`
2. Fetch latest: `curl -s http://127.0.0.1:17890/latest`

## Notes
- SSE and Codex CLI subprocess management will be documented here when implemented.

