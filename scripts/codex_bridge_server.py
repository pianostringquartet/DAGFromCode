#!/usr/bin/env python3
"""
Minimal loopback bridge for Catalyst ↔ CLI messaging.

Endpoints:
  - GET /healthz           -> { "message": <status or latest message> }
  - POST /message {json}   -> { "echo": <posted message>, "ts": <unix> }
  - GET /latest            -> { "message": <latest posted message or ""> }

Usage:
  python3 scripts/codex_bridge_server.py --port 17890
"""

from http.server import BaseHTTPRequestHandler, HTTPServer
import json
import argparse
import time


LATEST_MESSAGE = ""


class Handler(BaseHTTPRequestHandler):
    server_version = "CodexBridge/0.1"

    def _set_json(self, code=200):
        self.send_response(code)
        self.send_header("Content-Type", "application/json; charset=utf-8")
        self.send_header("Cache-Control", "no-store")
        self.end_headers()

    def log_message(self, fmt, *args):
        # Quiet noisy default logging; keep single-line summary.
        print("[bridge]", fmt % args)

    def do_GET(self):  # noqa: N802 (http.server naming)
        global LATEST_MESSAGE

        if self.path.startswith("/healthz"):
            msg = LATEST_MESSAGE or "Bridge online"
            self._set_json(200)
            self.wfile.write(json.dumps({"message": msg}).encode("utf-8"))
            return

        if self.path.startswith("/latest"):
            self._set_json(200)
            self.wfile.write(json.dumps({"message": LATEST_MESSAGE}).encode("utf-8"))
            return

        self._set_json(404)
        self.wfile.write(json.dumps({"error": "not_found"}).encode("utf-8"))

    def do_POST(self):  # noqa: N802 (http.server naming)
        global LATEST_MESSAGE
        length = int(self.headers.get("Content-Length", 0))
        raw = self.rfile.read(length) if length else b"{}"

        try:
            payload = json.loads(raw.decode("utf-8")) if raw else {}
        except Exception:
            self._set_json(400)
            self.wfile.write(json.dumps({"error": "invalid_json"}).encode("utf-8"))
            return

        if self.path.startswith("/message"):
            msg = str(payload.get("message", "")).strip()
            LATEST_MESSAGE = msg
            self._set_json(200)
            self.wfile.write(json.dumps({"echo": msg, "ts": time.time()}).encode("utf-8"))
            return

        self._set_json(404)
        self.wfile.write(json.dumps({"error": "not_found"}).encode("utf-8"))


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--port", type=int, default=17890)
    parser.add_argument("--host", default="127.0.0.1")
    args = parser.parse_args()

    server = HTTPServer((args.host, args.port), Handler)
    print(f"[bridge] listening on http://{args.host}:{args.port}")
    try:
        server.serve_forever()
    except KeyboardInterrupt:
        pass
    finally:
        server.server_close()


if __name__ == "__main__":
    main()

