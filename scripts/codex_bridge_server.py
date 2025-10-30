#!/usr/bin/env python3
"""
Dev loopback bridge for Catalyst ↔ Codex CLI with SSE.

Endpoints:
  - GET  /healthz          -> { "message": <status or latest prompt> }
  - POST /prompt {json}    -> { "ack": <envelope id>, "ts": <unix> }
  - GET  /latest           -> { "message": <latest posted prompt or ""> }
  - GET  /stream           -> Server-Sent Events (SSE):
       event: delta|patch|done
       data: { "id": string, "type": "delta|patch|done", "payload": { ... } }

Usage:
  python3 scripts/codex_bridge_server.py --host 127.0.0.1 --port 17890
  curl -N http://127.0.0.1:17890/stream
"""

from http.server import BaseHTTPRequestHandler, ThreadingHTTPServer
import json
import argparse
import time
import uuid
import sys


LATEST_MESSAGE = ""
LAST_ACK_ID = None


class Handler(BaseHTTPRequestHandler):
    server_version = "CodexBridge/0.1"

    def _set_json(self, code=200):
        self.send_response(code)
        self.send_header("Content-Type", "application/json; charset=utf-8")
        self.send_header("Cache-Control", "no-store")
        self.send_header("Access-Control-Allow-Origin", "*")
        self.send_header("Access-Control-Allow-Headers", "Content-Type, Authorization")
        self.send_header("Access-Control-Allow-Methods", "GET, POST, OPTIONS")
        self.end_headers()

    def log_message(self, fmt, *args):
        # Quiet noisy default logging; keep single-line summary.
        print("[bridge]", fmt % args)

    def do_OPTIONS(self):  # CORS preflight
        self._set_json(200)
        self.wfile.write(json.dumps({"ok": True}).encode("utf-8"))

    def do_GET(self):  # noqa: N802 (http.server naming)
        if self.path.startswith("/healthz"):
            msg = LATEST_MESSAGE or "Bridge online"
            self._set_json(200)
            self.wfile.write(json.dumps({"message": msg}).encode("utf-8"))
            return

        if self.path.startswith("/latest"):
            self._set_json(200)
            self.wfile.write(json.dumps({"message": LATEST_MESSAGE}).encode("utf-8"))
            return

        if self.path.startswith("/stream"):
            self.send_response(200)
            self.send_header("Content-Type", "text/event-stream; charset=utf-8")
            self.send_header("Cache-Control", "no-cache")
            self.send_header("Connection", "keep-alive")
            self.send_header("Access-Control-Allow-Origin", "*")
            # Disable proxy buffering if present (harmless otherwise)
            self.send_header("X-Accel-Buffering", "no")
            self.end_headers()

            # Simple demo producer: emit 2 delta events then done.
            envelope_id = str(uuid.uuid4())

            def send_event(event_type: str, payload: dict):
                try:
                    data = json.dumps({
                        "id": envelope_id,
                        "type": event_type,
                        "payload": payload,
                    })
                    self.wfile.write(f"event: {event_type}\n".encode("utf-8"))
                    self.wfile.write(f"data: {data}\n\n".encode("utf-8"))
                    self.wfile.flush()
                except BrokenPipeError:
                    return False
                except Exception as e:
                    print(f"[bridge] stream error: {e}", file=sys.stderr)
                    return False
                return True

            # Initial heartbeat (comment frame) and an immediate delta burst
            try:
                self.wfile.write(b": keepalive\n\n")
                self.wfile.flush()
            except Exception:
                return

            # Emit a tiny demo sequence irrespective of LATEST_MESSAGE
            text = LATEST_MESSAGE or "hello from codex bridge"
            chunks = [text[: max(1, len(text)//2)], text[max(1, len(text)//2):]]
            for ch in chunks:
                if not send_event("delta", {"text": ch}):
                    return
                time.sleep(0.3)

            # Done
            send_event("done", {"summary": "demo complete"})
            return

        self._set_json(404)
        self.wfile.write(json.dumps({"error": "not_found"}).encode("utf-8"))

    def do_POST(self):  # noqa: N802 (http.server naming)
        global LATEST_MESSAGE, LAST_ACK_ID
        length = int(self.headers.get("Content-Length", 0))
        raw = self.rfile.read(length) if length else b"{}"

        try:
            payload = json.loads(raw.decode("utf-8")) if raw else {}
        except Exception:
            self._set_json(400)
            self.wfile.write(json.dumps({"error": "invalid_json"}).encode("utf-8"))
            return

        # Old endpoint is deprecated immediately; guide callers to /prompt
        if self.path.startswith("/message"):
            self._set_json(410)
            self.wfile.write(json.dumps({
                "error": "gone",
                "use": "/prompt"
            }).encode("utf-8"))
            return

        if self.path.startswith("/prompt"):
            msg = str(payload.get("prompt", payload.get("message", ""))).strip()
            LATEST_MESSAGE = msg
            LAST_ACK_ID = str(uuid.uuid4())
            self._set_json(200)
            self.wfile.write(json.dumps({"ack": LAST_ACK_ID, "ts": time.time()}).encode("utf-8"))
            return

        self._set_json(404)
        self.wfile.write(json.dumps({"error": "not_found"}).encode("utf-8"))


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--port", type=int, default=17890)
    parser.add_argument("--host", default="127.0.0.1")
    args = parser.parse_args()

    server = ThreadingHTTPServer((args.host, args.port), Handler)
    print(f"[bridge] listening on http://{args.host}:{args.port}")
    try:
        server.serve_forever()
    except KeyboardInterrupt:
        pass
    finally:
        server.server_close()


if __name__ == "__main__":
    main()
