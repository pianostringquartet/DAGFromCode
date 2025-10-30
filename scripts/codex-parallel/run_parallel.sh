#!/usr/bin/env bash
set -euo pipefail

# One-stop entrypoint for running parallel Codex subagents.
# Ensures subplans/log directories exist and launches all agents headlessly.
#
# Usage: run_parallel.sh <slug> [agent-A agent-B ...]
#
# Environment (optional overrides):
#   CODEX_REPO_ROOT        : repo root (default: pwd)
#   CODEX_SUBPLAN_TEMPLATE : template copied into new subplans
#   CODEX_CMD              : CLI command (default: "codex exec")
#   CODEX_MODEL            : model id (default: "gpt-5-codex")
#   CODEX_REASONING        : reasoning effort (default: "low")
#   CODEX_TEMPERATURE      : temperature (default: "0.2")
#   CODEX_JSON             : auto|1|0 (default: "auto")
#   CODEX_IDLE_TIMEOUT_SEC : idle timeout (default: 600)
#   CODEX_TIMEOUT_SEC      : wall timeout (default: 3600)
#   CODEX_KILL_GRACE_SEC   : TERM→KILL grace seconds (default: 20)
#   CODEX_MAX_PROCS        : optional concurrency cap (omit for full parallelism)
#   CODEX_CMD_ARGS         : extra args passed to Codex CLI (inherited if set)
#   CODEX_BRANCH           : branch guard (inherited if set)

REPO=${CODEX_REPO_ROOT:-"$PWD"}
SLUG=$1
shift

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
INIT_SCRIPT="${SCRIPT_DIR}/init_slug.sh"
LAUNCH_SCRIPT="${SCRIPT_DIR}/launch_subagent_exec.sh"

AGENTS=("$@")

if (( ${#AGENTS[@]} == 0 )); then
  manifest_path="${REPO}/prompts/${SLUG}/skills/manifest.json"
  if [[ ! -f "$manifest_path" ]]; then
    echo "No agent list provided and manifest missing: $manifest_path" >&2
    exit 2
  fi
  if ! command -v jq >/dev/null 2>&1; then
    echo "jq is required to read agent list from manifest" >&2
    exit 2
  fi
  AGENTS=()
  while IFS= read -r agent; do
    [[ -z "$agent" ]] && continue
    AGENTS+=("$agent")
  done < <(jq -r '.agents[].agent' "$manifest_path")
  if (( ${#AGENTS[@]} == 0 )); then
    echo "Agent list is empty in manifest: $manifest_path" >&2
    exit 2
  fi
else
  manifest_path="${REPO}/prompts/${SLUG}/skills/manifest.json"
fi

if (( ${#AGENTS[@]} > 0 )); then
  # Scaffold slug directories and stub subplans (only creates missing files)
  bash "$INIT_SCRIPT" "$SLUG" "${AGENTS[@]}"
fi

# Construct space-separated agent list
agent_list=""
for agent in "${AGENTS[@]}"; do
  agent_list+="$agent "
done
agent_list=${agent_list% }

manifest_model=""
manifest_reasoning=""
manifest_idle=""
manifest_wall=""

if [[ -f "$manifest_path" ]]; then
  if command -v jq >/dev/null 2>&1; then
    manifest_model=$(jq -r '.parent.meta.defaults.model // empty' "$manifest_path")
    manifest_reasoning=$(jq -r '.parent.meta.defaults.reasoning // empty' "$manifest_path")
    manifest_idle=$(jq -r '.parent.meta.defaults.idleTimeoutSec // empty' "$manifest_path")
    manifest_wall=$(jq -r '.parent.meta.defaults.wallTimeoutSec // empty' "$manifest_path")
  fi
fi

# Resolve runtime defaults (allow caller overrides)
CMD=${CODEX_CMD:-"codex exec"}
MODEL_DEFAULT="gpt-5-codex"
REASONING_DEFAULT="low"
IDLE_DEFAULT=600
WALL_DEFAULT=3600

if [[ -n "$manifest_model" ]]; then MODEL_DEFAULT="$manifest_model"; fi
if [[ -n "$manifest_reasoning" ]]; then REASONING_DEFAULT="$manifest_reasoning"; fi
if [[ -n "$manifest_idle" ]]; then IDLE_DEFAULT="$manifest_idle"; fi
if [[ -n "$manifest_wall" ]]; then WALL_DEFAULT="$manifest_wall"; fi

MODEL=${CODEX_MODEL:-"$MODEL_DEFAULT"}
REASONING=${CODEX_REASONING:-"$REASONING_DEFAULT"}
TEMPERATURE=${CODEX_TEMPERATURE:-"0.2"}
JSON_PREF=${CODEX_JSON:-"auto"}
IDLE_TIMEOUT=${CODEX_IDLE_TIMEOUT_SEC:-"$IDLE_DEFAULT"}
WALL_TIMEOUT=${CODEX_TIMEOUT_SEC:-"$WALL_DEFAULT"}
KILL_GRACE=${CODEX_KILL_GRACE_SEC:-20}

# Launch in a subshell so exports do not leak to the caller
(
  export CODEX_REPO_ROOT="$REPO"
  export CODEX_SLUG="$SLUG"
  export CODEX_AGENT_LIST="$agent_list"
  export CODEX_CMD="$CMD"
  export CODEX_MODEL="$MODEL"
  export CODEX_REASONING="$REASONING"
  export CODEX_TEMPERATURE="$TEMPERATURE"
  export CODEX_JSON="$JSON_PREF"
  export CODEX_IDLE_TIMEOUT_SEC="$IDLE_TIMEOUT"
  export CODEX_TIMEOUT_SEC="$WALL_TIMEOUT"
  export CODEX_KILL_GRACE_SEC="$KILL_GRACE"
  # Only export optional vars if caller provided them
  if [[ -n "${CODEX_CMD_ARGS:-}" ]]; then export CODEX_CMD_ARGS; fi
  if [[ -n "${CODEX_BRANCH:-}" ]]; then export CODEX_BRANCH; fi
  if [[ -n "${CODEX_MAX_PROCS:-}" ]]; then export CODEX_MAX_PROCS; fi
  bash "$LAUNCH_SCRIPT" "$SLUG"
)

