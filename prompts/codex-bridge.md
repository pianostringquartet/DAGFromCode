---
title: "Codex bridge helper runbook"
created_at: 2025-10-29
created_by: codex
last_updated: 2025-10-30
last_updated_by: agent-A
---

## Purpose
Operate the local bridge that proxies between the Catalyst app and the Codex CLI (`codex app-server`).

## Prerequisites
- Python 3.9+
- Codex CLI (`codex`) installed, authenticated, and able to launch `codex app-server`
- Optional: `jq` for friendlier curl output

### Environment variables
| Name | Purpose | Default |
| --- | --- | --- |
| `CODEX_CLI_BIN` | Path to the Codex CLI binary | `codex` |
| `CODEX_CLI_PROFILE` | CLI profile passed via `--profile` | unset |
| `CODEX_CLI_MODEL` | Model used for turns | `gpt-5-codex` |
| `CODEX_CLI_APPROVAL` | Approval mode (`never`, `on-request`, etc.) | `never` |
| `CODEX_CLI_EFFORT` | Reasoning effort (`high`, `medium`, `low`, `minimal`) | `high` |
| `CODEX_CLI_SUMMARY` | Reasoning summary style (`auto`, `concise`, `detailed`) | `auto` |
| `CODEX_CLI_NETWORK` | Allow sandbox network access (`1`/`0`, `true`/`false`) | `1` |

Set variables before launching the helper:

```bash
export CODEX_CLI_PROFILE=default
export CODEX_CLI_MODEL=gpt-5-codex
```

## Start the helper
1. Launch the bridge and spawn the Codex CLI subprocess:
   ```bash
   python3 scripts/codex_bridge_server.py --host 127.0.0.1 --port 17890 --spawn-cli
   ```
2. In a second shell, verify health:
   ```bash
   curl -s http://127.0.0.1:17890/healthz | jq .
   ```
   - `status` should be `"ok"` when the CLI is ready.
3. Tail server-sent events:
   ```bash
   curl -N http://127.0.0.1:17890/stream
   ```

## Test requests
1. Submit a prompt (replaces `/message`):
   - `curl -X POST -H 'Content-Type: application/json' -d '{"prompt":"Hello"}' http://127.0.0.1:17890/prompt`
2. Fetch latest: `curl -s http://127.0.0.1:17890/latest`
3. Observe SSE frames (`delta`, `patch`, `error`, `done`):
   - `curl -N http://127.0.0.1:17890/stream | head -n 20`

### SSE payload shape

Each frame is broadcast as:

```
event: <delta|patch|error|done>
data: {
  "id": "<envelope-id>",
  "type": "<delta|patch|error|done>",
  "payload": {
    "event": "codex/event/...",
    ...
  },
  "ts": 1730252220.123
}
```

- `delta`: incremental text (`agent_message_delta`, `agent_reasoning_delta`)
- `patch`: non-streaming updates (`agent_message`, `token_count`, reasoning summaries)
- `error`: CLI or stream errors (`codex/event/error`, `codex/event/stream_error`)
- `done`: conversation turn finished (`codex/event/task_complete`)

## Notes
- `/prompt` replaces `/message`; legacy clients receive `404 Not Found` on the old endpoint.
- `/healthz` surfaces bridge status plus CLI metadata (PID, conversation id, last event timestamp).
- The helper shuts the Codex CLI down on SIGINT/SIGTERM and propagates exit errors to SSE subscribers.
- Update environment variables and restart the helper whenever you change model or approval policy.
