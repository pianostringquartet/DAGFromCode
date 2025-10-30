#!/usr/bin/env python3
"""HTTP bridge that proxies between Catalyst and the Codex CLI."""

from __future__ import annotations

import argparse
import json
import logging
import queue
import signal
import threading
import time
import uuid
from http.server import BaseHTTPRequestHandler, ThreadingHTTPServer
from typing import Any, Dict, Optional

from codex_cli_process import (
    CLIEvent,
    CodexCLIError,
    CodexCLIProcess,
    CodexCLIUnavailable,
)


LOGGER = logging.getLogger("bridge")
if not LOGGER.handlers:
    handler = logging.StreamHandler()
    formatter = logging.Formatter("[bridge] %(levelname)s %(message)s")
    handler.setFormatter(formatter)
    LOGGER.addHandler(handler)
LOGGER.setLevel(logging.INFO)


class SSEHub:
    """Manages Server-Sent Event subscribers."""

    def __init__(self) -> None:
        self._subscribers: set["queue.Queue[Dict[str, Any]]"] = set()
        self._lock = threading.Lock()

    def subscribe(self) -> "queue.Queue[Dict[str, Any]]":
        subscriber: "queue.Queue[Dict[str, Any]]" = queue.Queue(maxsize=256)
        with self._lock:
            self._subscribers.add(subscriber)
        return subscriber

    def unsubscribe(self, subscriber: "queue.Queue[Dict[str, Any]]") -> None:
        with self._lock:
            self._subscribers.discard(subscriber)

    def publish(self, event: Dict[str, Any]) -> None:
        with self._lock:
            for subscriber in list(self._subscribers):
                try:
                    subscriber.put_nowait(event)
                except Exception:  # noqa: BLE001
                    self._subscribers.discard(subscriber)


class BridgeApp:
    """Encapsulates application state shared by request handlers."""

    def __init__(self, *, spawn_cli: bool) -> None:
        self._spawn_cli = spawn_cli
        self._hub = SSEHub()
        self._cli: Optional[CodexCLIProcess] = None
        self._forwarder: Optional[threading.Thread] = None

        self._latest_message = ""
        self._latest_prompt = ""
        self._latest_ack: Optional[str] = None
        self._lock = threading.Lock()

        if spawn_cli:
            self._initialize_cli()

    # ------------------------------------------------------------------
    # Public helpers used by handlers
    # ------------------------------------------------------------------
    def hub(self) -> SSEHub:
        return self._hub

    def send_prompt(self, prompt: str) -> str:
        with self._lock:
            self._latest_prompt = prompt

        if not self._spawn_cli:
            raise CodexCLIUnavailable("CLI subprocess disabled (start server with --spawn-cli)")

        self._initialize_cli()
        assert self._cli is not None  # for type checkers

        ack = str(uuid.uuid4())
        try:
            envelope = self._cli.send_prompt(prompt, envelope_id=ack)
        except CodexCLIError as exc:
            raise CodexCLIUnavailable(str(exc)) from exc

        with self._lock:
            self._latest_ack = envelope

        return envelope

    def latest_snapshot(self) -> Dict[str, Any]:
        with self._lock:
            return {
                "latestPrompt": self._latest_prompt,
                "latestMessage": self._latest_message,
                "latestAck": self._latest_ack,
            }

    def health(self) -> Dict[str, Any]:
        snapshot = self.latest_snapshot()
        cli_status: Optional[Dict[str, Any]] = None
        if self._cli:
            cli_status = self._cli.health_snapshot()

        status = "ok"
        if not self._spawn_cli:
            status = "degraded"
        elif not cli_status or cli_status.get("state") != "ready":
            status = "degraded"

        return {
            "status": status,
            "cli": cli_status,
            "bridge": snapshot,
        }

    def shutdown(self) -> None:
        if self._cli:
            self._cli.stop()

    # ------------------------------------------------------------------
    # Internal helpers
    # ------------------------------------------------------------------
    def _initialize_cli(self) -> None:
        if self._cli is None:
            self._cli = CodexCLIProcess()

        try:
            self._cli.ensure_running()
        except CodexCLIUnavailable:
            raise
        except Exception as exc:  # noqa: BLE001
            raise CodexCLIUnavailable(str(exc)) from exc

        if self._forwarder is None or not self._forwarder.is_alive():
            self._forwarder = threading.Thread(
                target=self._forward_events, name="cli-event-forwarder", daemon=True
            )
            self._forwarder.start()

    def _forward_events(self) -> None:
        assert self._cli is not None
        for event in self._cli.events():
            self._handle_cli_event(event)

    def _handle_cli_event(self, event: CLIEvent) -> None:
        payload = {
            "id": event.envelope_id,
            "type": event.event_type,
            "payload": event.payload,
            "ts": time.time(),
        }

        if event.event_type in {"patch", "done"}:
            message = event.payload.get("text") or event.payload.get("message")
            if message:
                with self._lock:
                    self._latest_message = message

        self._hub.publish(payload)


class BridgeHTTPRequestHandler(BaseHTTPRequestHandler):
    server: "BridgeHTTPServer"

    # ----------------------------
    # Response helpers
    # ----------------------------
    def _set_json(self, code: int = 200) -> None:
        self.send_response(code)
        self.send_header("Content-Type", "application/json; charset=utf-8")
        self.send_header("Cache-Control", "no-store")
        self.send_header("Access-Control-Allow-Origin", "*")
        self.send_header("Access-Control-Allow-Headers", "Content-Type, Authorization")
        self.send_header("Access-Control-Allow-Methods", "GET, POST, OPTIONS")
        self.end_headers()

    def _json(self, code: int, body: Dict[str, Any]) -> None:
        self._set_json(code)
        self.wfile.write(json.dumps(body).encode("utf-8"))

    def log_message(self, fmt: str, *args: Any) -> None:  # noqa: D401 - keep quiet
        LOGGER.info(fmt, *args)

    # ----------------------------
    # HTTP verbs
    # ----------------------------
    def do_OPTIONS(self) -> None:  # noqa: N802 - BaseHTTPRequestHandler signature
        self._json(200, {"ok": True})

    def do_GET(self) -> None:  # noqa: N802
        if self.path.startswith("/healthz"):
            self._json(200, self.server.app.health())
            return

        if self.path.startswith("/latest"):
            self._json(200, {"message": self.server.app.latest_snapshot().get("latestMessage", "")})
            return

        if self.path.startswith("/stream"):
            self._handle_stream()
            return

        self._json(404, {"error": "not_found"})

    def do_POST(self) -> None:  # noqa: N802
        if not self.path.startswith("/prompt"):
            self._json(404, {"error": "not_found"})
            return

        length = int(self.headers.get("Content-Length", "0") or 0)
        raw = self.rfile.read(length) if length else b"{}"
        try:
            payload = json.loads(raw.decode("utf-8")) if raw else {}
        except json.JSONDecodeError:
            self._json(400, {"error": "invalid_json"})
            return

        prompt = str(payload.get("prompt", payload.get("message", ""))).strip()
        if not prompt:
            self._json(400, {"error": "missing_prompt"})
            return

        try:
            ack = self.server.app.send_prompt(prompt)
        except CodexCLIUnavailable as exc:
            self._json(503, {"error": "cli_unavailable", "detail": str(exc)})
            return

        self._json(200, {"ack": ack, "ts": time.time()})

    # ----------------------------
    # Streaming helper
    # ----------------------------
    def _handle_stream(self) -> None:
        subscriber = self.server.app.hub().subscribe()
        try:
            self.send_response(200)
            self.send_header("Content-Type", "text/event-stream; charset=utf-8")
            self.send_header("Cache-Control", "no-cache")
            self.send_header("Connection", "keep-alive")
            self.send_header("Access-Control-Allow-Origin", "*")
            self.send_header("X-Accel-Buffering", "no")
            self.end_headers()

            self.wfile.write(b": keepalive\n\n")
            self.wfile.flush()

            quiet_until = time.time() + 15
            while True:
                timeout = max(0, quiet_until - time.time())
                try:
                    event = subscriber.get(timeout=timeout)
                except queue.Empty:
                    self.wfile.write(b": keepalive\n\n")
                    self.wfile.flush()
                    quiet_until = time.time() + 15
                    continue

                if event is None:
                    return

                data = json.dumps(event)
                self.wfile.write(f"event: {event['type']}\n".encode("utf-8"))
                self.wfile.write(f"data: {data}\n\n".encode("utf-8"))
                self.wfile.flush()
                quiet_until = time.time() + 15
        except BrokenPipeError:
            pass
        finally:
            self.server.app.hub().unsubscribe(subscriber)


class BridgeHTTPServer(ThreadingHTTPServer):
    def __init__(self, server_address: tuple[str, int], app: BridgeApp) -> None:
        super().__init__(server_address, BridgeHTTPRequestHandler)
        self.app = app


def main() -> None:
    parser = argparse.ArgumentParser(description="Codex bridge helper")
    parser.add_argument("--host", default="127.0.0.1")
    parser.add_argument("--port", type=int, default=17890)
    parser.add_argument("--spawn-cli", action="store_true", help="spawn codex app-server subprocess")
    args = parser.parse_args()

    app = BridgeApp(spawn_cli=args.spawn_cli)
    server = BridgeHTTPServer((args.host, args.port), app)

    LOGGER.info("listening on http://%s:%s", args.host, args.port)

    def _shutdown(signum: int, _frame: Any) -> None:  # noqa: D401
        LOGGER.info("received signal %s; shutting down", signum)
        server.shutdown()
        app.shutdown()

    signal.signal(signal.SIGINT, _shutdown)
    signal.signal(signal.SIGTERM, _shutdown)

    try:
        server.serve_forever()
    finally:
        app.shutdown()


if __name__ == "__main__":
    main()
