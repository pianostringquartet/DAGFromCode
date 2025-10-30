#!/usr/bin/env python3
"""Codex CLI subprocess manager used by the bridge server."""

from __future__ import annotations

import json
import logging
import os
import queue
import subprocess
import threading
import time
import uuid
from dataclasses import dataclass
from typing import Any, Dict, Iterator, Optional


LOGGER = logging.getLogger(__name__)
if not LOGGER.handlers:
    handler = logging.StreamHandler()
    formatter = logging.Formatter("[codex-cli] %(levelname)s %(message)s")
    handler.setFormatter(formatter)
    LOGGER.addHandler(handler)
LOGGER.setLevel(logging.INFO)


DEFAULT_CLI_BIN = os.environ.get("CODEX_CLI_BIN", "codex")
DEFAULT_MODEL = os.environ.get("CODEX_CLI_MODEL", "gpt-5-codex")
DEFAULT_PROFILE = os.environ.get("CODEX_CLI_PROFILE")
DEFAULT_APPROVAL = os.environ.get("CODEX_CLI_APPROVAL", "never")
DEFAULT_EFFORT = os.environ.get("CODEX_CLI_EFFORT", "high")
DEFAULT_SUMMARY = os.environ.get("CODEX_CLI_SUMMARY", "auto")
DEFAULT_CWD = os.environ.get("CODEX_CLI_CWD") or os.getcwd()


def _parse_bool(value: Optional[str], *, default: bool) -> bool:
    if value is None:
        return default
    return value.lower() not in {"0", "false", "no", "off"}


@dataclass
class CLIEvent:
    """Normalized event emitted by the Codex CLI process."""

    envelope_id: str
    event_type: str  # delta|patch|error|done
    payload: Dict[str, Any]


class CodexCLIError(RuntimeError):
    """Raised when the Codex CLI returns an error response."""


class CodexCLIUnavailable(RuntimeError):
    """Raised when the Codex CLI subprocess is unavailable."""


class CodexCLIProcess:
    """Manages a long-lived `codex app-server` subprocess."""

    def __init__(
        self,
        *,
        cli_bin: str = DEFAULT_CLI_BIN,
        profile: Optional[str] = DEFAULT_PROFILE,
        model: str = DEFAULT_MODEL,
        approval_policy: str = DEFAULT_APPROVAL,
        reasoning_effort: str = DEFAULT_EFFORT,
        reasoning_summary: str = DEFAULT_SUMMARY,
        sandbox_network: Optional[str] = os.environ.get("CODEX_CLI_NETWORK"),
        cwd: str = DEFAULT_CWD,
        request_timeout: float = 30.0,
    ) -> None:
        self._cli_bin = cli_bin
        self._profile = profile
        self._model = model
        self._approval_policy = approval_policy
        self._reasoning_effort = reasoning_effort
        self._reasoning_summary = reasoning_summary
        self._sandbox_network = _parse_bool(sandbox_network, default=True)
        self._cwd = cwd
        self._request_timeout = request_timeout

        self._proc: Optional[subprocess.Popen[str]] = None
        self._stdout_thread: Optional[threading.Thread] = None
        self._stderr_thread: Optional[threading.Thread] = None
        self._dispatch_thread: Optional[threading.Thread] = None

        self._pending: Dict[str, queue.Queue] = {}
        self._pending_lock = threading.Lock()

        self._event_queue: "queue.Queue[CLIEvent]" = queue.Queue()
        self._dispatch_queue: "queue.Queue[Dict[str, Any]]" = queue.Queue()
        self._stop_event = threading.Event()

        self._state_lock = threading.Lock()
        self._state = "stopped"
        self._last_error: Optional[str] = None
        self._last_event_ts: Optional[float] = None

        self._conversation_id: Optional[str] = None
        self._subscription_id: Optional[str] = None
        self._turn_index = 0
        self._turn_envelopes: Dict[str, str] = {}

    # ------------------------------------------------------------------
    # Lifecycle management
    # ------------------------------------------------------------------
    def start(self) -> None:
        with self._state_lock:
            if self._proc and self._proc.poll() is None:
                return
            self._stop_event.clear()
            self._state = "starting"

        cmd = [self._cli_bin, "app-server"]
        if self._profile:
            cmd.extend(["--profile", self._profile])

        LOGGER.info("starting Codex CLI: %s", " ".join(cmd))

        try:
            self._proc = subprocess.Popen(
                cmd,
                stdin=subprocess.PIPE,
                stdout=subprocess.PIPE,
                stderr=subprocess.PIPE,
                text=True,
                bufsize=1,
            )
        except FileNotFoundError as exc:
            with self._state_lock:
                self._state = "error"
                self._last_error = f"CLI binary not found: {exc}"
            raise CodexCLIUnavailable(self._last_error) from exc

        self._stdout_thread = threading.Thread(
            target=self._read_stdout, name="codex-cli-stdout", daemon=True
        )
        self._stdout_thread.start()

        self._stderr_thread = threading.Thread(
            target=self._read_stderr, name="codex-cli-stderr", daemon=True
        )
        self._stderr_thread.start()

        self._dispatch_thread = threading.Thread(
            target=self._dispatch_notifications,
            name="codex-cli-dispatch",
            daemon=True,
        )
        self._dispatch_thread.start()

        try:
            self._handshake()
        except Exception as exc:  # noqa: BLE001
            LOGGER.exception("failed to initialize Codex CLI")
            self.stop()
            with self._state_lock:
                self._state = "error"
                self._last_error = str(exc)
            raise

        with self._state_lock:
            self._state = "ready"
            self._last_error = None

    def stop(self) -> None:
        self._stop_event.set()

        if self._proc and self._proc.poll() is None:
            LOGGER.info("terminating Codex CLI (pid=%s)", self._proc.pid)
            try:
                self._proc.terminate()
                self._proc.wait(timeout=5)
            except subprocess.TimeoutExpired:
                LOGGER.warning("Codex CLI unresponsive; killing")
                self._proc.kill()
        self._proc = None

        # Allow threads to unwind
        self._dispatch_queue.put_nowait({"__stop__": True})
        self._event_queue.put_nowait(
            CLIEvent(envelope_id="bridge", event_type="done", payload={"reason": "shutdown"})
        )

        with self._state_lock:
            self._state = "stopped"

    # ------------------------------------------------------------------
    # Public API
    # ------------------------------------------------------------------
    def ensure_running(self) -> None:
        if self._proc and self._proc.poll() is None:
            return
        self.start()

    def send_prompt(self, prompt: str, *, envelope_id: Optional[str] = None) -> str:
        if not prompt.strip():
            raise ValueError("prompt cannot be empty")

        self.ensure_running()

        if self._conversation_id is None:
            raise CodexCLIUnavailable("conversation not initialized")

        envelope = envelope_id or str(uuid.uuid4())
        turn_id = str(self._turn_index)
        self._turn_index += 1
        self._turn_envelopes[turn_id] = envelope

        params = {
            "conversationId": self._conversation_id,
            "items": [{"type": "text", "data": {"text": prompt}}],
            "cwd": self._cwd,
            "approvalPolicy": self._approval_policy,
            "sandboxPolicy": {
                "mode": "workspace-write",
                "network_access": self._sandbox_network,
                "exclude_tmpdir_env_var": False,
                "exclude_slash_tmp": False,
            },
            "model": self._model,
            "effort": self._reasoning_effort,
            "summary": self._reasoning_summary,
        }

        try:
            self._request("sendUserTurn", params)
        except CodexCLIError:
            self._turn_envelopes.pop(turn_id, None)
            raise
        except Exception as exc:  # noqa: BLE001
            self._turn_envelopes.pop(turn_id, None)
            raise CodexCLIUnavailable(str(exc)) from exc

        return envelope

    def events(self) -> Iterator[CLIEvent]:
        while True:
            event = self._event_queue.get()
            if event is None:
                return
            yield event

    def health_snapshot(self) -> Dict[str, Any]:
        with self._state_lock:
            state = self._state
            error = self._last_error
        pid = self._proc.pid if self._proc and self._proc.poll() is None else None
        return {
            "state": state,
            "pid": pid,
            "conversationId": self._conversation_id,
            "subscriptionId": self._subscription_id,
            "lastEventTs": self._last_event_ts,
            "lastError": error,
        }

    # ------------------------------------------------------------------
    # Internal helpers
    # ------------------------------------------------------------------
    def _handshake(self) -> None:
        self._request(
            "initialize",
            {
                "clientInfo": {
                    "name": "codex-bridge",
                    "title": "Codex Bridge Helper",
                    "version": "0.1",
                }
            },
        )

        result = self._request(
            "newConversation",
            {
                "model": self._model,
                "profile": None,
                "cwd": self._cwd,
                "approvalPolicy": self._approval_policy,
                "sandbox": "workspace-write",
                "config": None,
                "baseInstructions": None,
                "includeApplyPatchTool": True,
            },
        )
        self._conversation_id = result.get("conversationId")
        if not self._conversation_id:
            raise CodexCLIError("newConversation did not return conversationId")

        listen_result = self._request(
            "addConversationListener",
            {
                "conversationId": self._conversation_id,
                "experimentalRawEvents": False,
            },
        )
        self._subscription_id = listen_result.get("subscriptionId")
        if not self._subscription_id:
            raise CodexCLIError("addConversationListener failed")

    def _request(self, method: str, params: Any) -> Dict[str, Any]:
        if not self._proc or self._proc.poll() is not None or not self._proc.stdin:
            raise CodexCLIUnavailable("CLI process is not running")

        request_id = f"req-{uuid.uuid4().hex}"
        response_queue: queue.Queue = queue.Queue(maxsize=1)
        with self._pending_lock:
            self._pending[request_id] = response_queue

        payload = {"jsonrpc": "2.0", "id": request_id, "method": method, "params": params}
        try:
            self._proc.stdin.write(json.dumps(payload) + "\n")
            self._proc.stdin.flush()
        except (BrokenPipeError, OSError) as exc:
            with self._pending_lock:
                self._pending.pop(request_id, None)
            raise CodexCLIUnavailable("failed to write to Codex CLI") from exc

        try:
            response = response_queue.get(timeout=self._request_timeout)
        except queue.Empty as exc:
            with self._pending_lock:
                self._pending.pop(request_id, None)
            raise CodexCLIUnavailable("Codex CLI request timed out") from exc

        if "error" in response:
            error = response["error"]
            message = error.get("message", "unknown error")
            raise CodexCLIError(message)

        return response.get("result", {})

    def _read_stdout(self) -> None:
        assert self._proc is not None and self._proc.stdout is not None
        for raw_line in self._proc.stdout:
            line = raw_line.strip()
            if not line:
                continue
            try:
                message = json.loads(line)
            except json.JSONDecodeError:
                LOGGER.warning("malformed stdout line: %s", line)
                continue

            if "id" in message and message.get("id") in self._pending:
                req_id = message["id"]
                with self._pending_lock:
                    response_queue = self._pending.pop(req_id, None)
                if response_queue:
                    response_queue.put(message)
                continue

            if "method" in message:
                self._dispatch_queue.put(message)
                continue

            LOGGER.debug("unhandled stdout message: %s", message)

        LOGGER.info("Codex CLI stdout closed")
        self._dispatch_queue.put({"__exit__": True, "returncode": self._proc.poll()})

    def _read_stderr(self) -> None:
        assert self._proc is not None and self._proc.stderr is not None
        for line in self._proc.stderr:
            LOGGER.warning("CLI stderr: %s", line.rstrip())

    def _dispatch_notifications(self) -> None:
        while not self._stop_event.is_set():
            message = self._dispatch_queue.get()
            if "__stop__" in message:
                return
            if "__exit__" in message:
                rc = message.get("returncode")
                self._handle_exit(rc)
                return
            self._handle_notification(message)

    def _handle_exit(self, returncode: Optional[int]) -> None:
        with self._state_lock:
            self._state = "exited"
            self._last_error = f"CLI exited with code {returncode}"
        for envelope in list(self._turn_envelopes.values()):
            self._event_queue.put(
                CLIEvent(
                    envelope_id=envelope,
                    event_type="error",
                    payload={
                        "event": "process_exit",
                        "message": self._last_error,
                        "returncode": returncode,
                    },
                )
            )
        self._turn_envelopes.clear()
        self._event_queue.put(
            CLIEvent(
                envelope_id="bridge",
                event_type="error",
                payload={"message": self._last_error, "returncode": returncode},
            )
        )

    def _handle_notification(self, message: Dict[str, Any]) -> None:
        method = message.get("method")
        params = message.get("params") or {}
        turn_id = params.get("id")

        if method == "account/rateLimits/updated":
            return

        if not turn_id or turn_id not in self._turn_envelopes:
            return

        envelope = self._turn_envelopes[turn_id]
        payload = params.get("msg") or {}
        self._last_event_ts = time.time()

        event = self._translate_event(method, payload, envelope)
        if not event:
            return

        if event.event_type == "done":
            self._turn_envelopes.pop(turn_id, None)

        self._event_queue.put(event)

    def _translate_event(
        self,
        method: str,
        payload: Dict[str, Any],
        envelope: str,
    ) -> Optional[CLIEvent]:
        if method == "codex/event/agent_message_delta":
            text = payload.get("delta")
            if text is None:
                return None
            return CLIEvent(
                envelope_id=envelope,
                event_type="delta",
                payload={"event": "agent_message_delta", "text": text},
            )

        if method == "codex/event/agent_message":
            return CLIEvent(
                envelope_id=envelope,
                event_type="patch",
                payload={"event": "agent_message", "text": payload.get("message")},
            )

        if method == "codex/event/agent_reasoning_delta":
            text = payload.get("delta")
            if text is None:
                return None
            return CLIEvent(
                envelope_id=envelope,
                event_type="delta",
                payload={"event": "agent_reasoning_delta", "text": text, "channel": "reasoning"},
            )

        if method == "codex/event/agent_reasoning":
            return CLIEvent(
                envelope_id=envelope,
                event_type="patch",
                payload={"event": "agent_reasoning", "text": payload.get("text"), "channel": "reasoning"},
            )

        if method == "codex/event/token_count":
            return CLIEvent(
                envelope_id=envelope,
                event_type="patch",
                payload={"event": "token_count", "usage": payload.get("info"), "limits": payload.get("rate_limits")},
            )

        if method == "codex/event/task_complete":
            return CLIEvent(
                envelope_id=envelope,
                event_type="done",
                payload={
                    "event": "task_complete",
                    "message": payload.get("last_agent_message"),
                },
            )

        if method == "codex/event/error":
            return CLIEvent(
                envelope_id=envelope,
                event_type="error",
                payload={"event": "error", "message": payload.get("message")},
            )

        if method == "codex/event/stream_error":
            return CLIEvent(
                envelope_id=envelope,
                event_type="error",
                payload={"event": "stream_error", "message": payload.get("message")},
            )

        return None


__all__ = [
    "CLIEvent",
    "CodexCLIError",
    "CodexCLIProcess",
    "CodexCLIUnavailable",
]
