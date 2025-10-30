#!/usr/bin/env bash
set -euo pipefail

# Supervisor for exec-based launcher.
# Repeats launch cycles on an interval and stops on failure/needs-integration.
#
# Env: CODEX_REPO_ROOT, CODEX_BRANCH, CODEX_CMD, CODEX_CMD_ARGS, CODEX_SLUG, CODEX_AGENT_LIST
# Args: $1 slug (optional), $2 interval seconds (default 300)

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
LAUNCHER="${SCRIPT_DIR}/launch_subagent_exec.sh"

SLUG=${1:-${CODEX_SLUG:-}}
INTERVAL=${2:-300}
REPO=${CODEX_REPO_ROOT:-"$PWD"}

if [[ -z "$SLUG" ]]; then
  echo "Usage: CODEX_SLUG=... $0 [slug] [interval_sec]" >&2
  exit 2
fi

INTEGRATION_NOTES="${REPO}/prompts/${SLUG}/integration-notes.md"
mkdir -p "$(dirname "$INTEGRATION_NOTES")"

iso_now() { date -u +"%Y-%m-%dT%H:%M:%SZ"; }

scan_logs_for_blocks() {
  local logs_dir="${REPO}/prompts/${SLUG}/logs"
  [[ -d "$logs_dir" ]] || return 0
  if rg -n "needs-integration|blocked|failed" "$logs_dir"/*.log >/dev/null 2>&1; then
    return 1
  fi
  return 0
}

while true; do
  if ! bash "$LAUNCHER" "$SLUG"; then
    echo "$(iso_now) | supervisor | launcher_failed | stopping" >> "$INTEGRATION_NOTES"
    exit 1
  fi
  if ! scan_logs_for_blocks; then
    echo "$(iso_now) | supervisor | blocked_or_failed_detected | stopping" >> "$INTEGRATION_NOTES"
    exit 20
  fi
  echo "$(iso_now) | supervisor | cycle_complete | interval=${INTERVAL}s" >> "$INTEGRATION_NOTES"
  sleep "$INTERVAL"
done

