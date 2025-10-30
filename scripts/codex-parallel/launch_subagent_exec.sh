#!/usr/bin/env bash
set -euo pipefail

# Exec-based launcher for parallel Codex CLI subagents.
# Spawns one child per subplan, streams each child to a per-agent run log,
# and writes a structured status line (start|complete|failed) per agent.
#
# Environment (all optional unless noted):
#   CODEX_REPO_ROOT   : absolute path to target repo (default: $PWD)
#   CODEX_BRANCH      : shared branch name; if set, must match current branch
#   CODEX_SLUG        : REQUIRED unless passed as $1; plan slug under prompts/{slug}
#   CODEX_AGENT_LIST  : space-separated agents (e.g., "agent-A agent-B"); if unset, discover subplans
#   CODEX_CMD         : Codex CLI command (default: "codex exec")
#   CODEX_CMD_ARGS    : extra args passed to Codex CLI (optional)
#   CODEX_MODEL       : model id (default: "gpt-5-codex")
#   CODEX_REASONING   : low|medium|high (default: "low")
#   CODEX_TEMPERATURE : numeric temperature (default: "0.2")
#   CODEX_MAX_PROCS        : max concurrent children (default: unlimited)
#   CODEX_JSON             : auto|1|0 — if truthy, pass --json to emit NDJSON (default: auto)
#   CODEX_IDLE_TIMEOUT_SEC : idle timeout in seconds with no log growth (default: 600)
#   CODEX_TIMEOUT_SEC      : hard wall-clock timeout per child in seconds (default: 3600)
#   CODEX_KILL_GRACE_SEC   : seconds to wait after TERM before KILL (default: 20)
#
# Args:
#   $1 slug (optional; overrides CODEX_SLUG)
#
# Layout expected:
#   prompts/{slug}/subplans/agent-*.md
#   prompts/{slug}/logs/{agent}.log        # status log (one-liners)
#   prompts/{slug}/logs/{agent}.run.log    # streaming child output

iso_now() { date -u +"%Y-%m-%dT%H:%M:%SZ"; }

REPO=${CODEX_REPO_ROOT:-"$PWD"}
SLUG=${1:-${CODEX_SLUG:-}}
CMD=${CODEX_CMD:-"codex exec"}
CMD_ARGS=${CODEX_CMD_ARGS:-}
MODEL=${CODEX_MODEL:-"gpt-5-codex"}
REASONING=${CODEX_REASONING:-"low"}
TEMPERATURE=${CODEX_TEMPERATURE:-"0.2"}
MAX_PROCS=${CODEX_MAX_PROCS:-}
JSON_PREF=${CODEX_JSON:-auto}
IDLE_TIMEOUT=${CODEX_IDLE_TIMEOUT_SEC:-600}
WALL_TIMEOUT=${CODEX_TIMEOUT_SEC:-3600}
KILL_GRACE=${CODEX_KILL_GRACE_SEC:-20}

if [[ -z "$SLUG" ]]; then
  echo "Usage: CODEX_REPO_ROOT=... CODEX_SLUG=... $0 [slug]" >&2
  exit 2
fi

LAUNCH_JSON="${REPO}/prompts/${SLUG}/launch.json"
BRANCH=${CODEX_BRANCH:-}
if [[ -z "${BRANCH}" && -f "${LAUNCH_JSON}" ]]; then
  if command -v jq >/dev/null 2>&1; then
    BRANCH=$(jq -r '.branch // empty' "${LAUNCH_JSON}")
  fi
fi

if [[ -n "${BRANCH}" ]]; then
  CURRENT_BRANCH=$(git -C "$REPO" branch --show-current || echo "")
  if [[ "$CURRENT_BRANCH" != "$BRANCH" ]]; then
    echo "Wrong branch: '$CURRENT_BRANCH' != '$BRANCH'" >&2
    exit 1
  fi
fi

# Resolve agent list (discover subplans if not provided)
AGENTS=()
if [[ -n "${CODEX_AGENT_LIST:-}" ]]; then
  # shellcheck disable=SC2206
  AGENTS=(${CODEX_AGENT_LIST})
else
  SUBPLAN_DIR="${REPO}/prompts/${SLUG}/subplans"
  if [[ ! -d "$SUBPLAN_DIR" ]]; then
    echo "No subplans directory: prompts/${SLUG}/subplans" >&2
    exit 1
  fi
  while IFS= read -r -d '' f; do
    base=$(basename "$f")
    AGENTS+=("${base%.md}")
  done < <(find "$SUBPLAN_DIR" -type f -name 'agent-*.md' -print0)
  if (( ${#AGENTS[@]} == 0 )); then
    echo "No subplans found under prompts/${SLUG}/subplans" >&2
    exit 1
  fi
fi

# Keep track of children
pids=()
agents=()
logs=()
json_modes=()
start_ts=()
last_activity_ts=()
last_sizes=()
done_flags=()
prompt_files=()

# Ensure logs dir exists
mkdir -p "${REPO}/prompts/${SLUG}/logs"

# Optional concurrency gate
running=0

cleanup_children() {
  for pid in "${pids[@]:-}"; do
    kill "$pid" 2>/dev/null || true
  done
}
on_sigint() {
  echo "$(iso_now) | launcher | aborted | terminating children" >&2
  cleanup_children
  exit 130
}
trap on_sigint INT TERM

launch_one() {
  local agent="$1"
  local subplan_rel="prompts/${SLUG}/subplans/${agent}.md"
  local subplan_path="${REPO}/${subplan_rel}"
  local status_log="${REPO}/prompts/${SLUG}/logs/${agent}.log"
  local run_log_text="${REPO}/prompts/${SLUG}/logs/${agent}.run.log"
  local run_log_json="${REPO}/prompts/${SLUG}/logs/${agent}.run.ndjson"

  [[ -f "$subplan_path" ]] || { echo "Missing subplan: $subplan_rel" >&2; return 1; }
  if [[ ! -f "$status_log" ]]; then
    printf "# Agent %s status log\n# timestamp | source | status | note\n" "$agent" > "$status_log"
  fi
  printf "%s | launcher | start | picked up subplan\n" "$(iso_now)" >> "$status_log"

  # Compose message. We instruct the child to follow the subplan path,
  # and bias toward low reasoning and concise outputs.
  local msg="CRITICAL. Follow all instructions in ${subplan_rel}. Optimize for low reasoning effort and concise outputs."

  echo "Launching $agent ..."
  # Use arrays to avoid word-splitting pitfalls
  # shellcheck disable=SC2206
  local cmd_arr=($CMD)
  # shellcheck disable=SC2206
  local args_arr=(--cd "$REPO")

  # Decide whether to pass --json
  local use_json=false
  if [[ "$JSON_PREF" == "1" || "$JSON_PREF" == "true" || "$JSON_PREF" == "yes" ]]; then
    use_json=true
  elif [[ "$JSON_PREF" == "auto" ]]; then
    # Try to detect support via subcommand help
    if "${cmd_arr[@]}" -h 2>&1 | grep -q -- "--json"; then
      use_json=true
    fi
  fi
  $use_json && args_arr+=(--json)
  # Compose prompt file combining directive and subplan contents
  local prompt_file
  prompt_file=$(mktemp)
  {
    printf '%s\n\n' "$msg"
    cat "$subplan_path"
  } >"$prompt_file"

  # shellcheck disable=SC2086
  local run_log
  if $use_json; then
    : >"$run_log_json"  # truncate
    run_log="$run_log_json"
    printf 'COMMAND: %q ' OPENAI_MODEL="$MODEL" OPENAI_REASONING_EFFORT="$REASONING" OPENAI_TEMPERATURE="$TEMPERATURE" >>"$run_log"
    printf '%q ' "${cmd_arr[@]}" >>"$run_log"
    printf '%q ' "${args_arr[@]}" >>"$run_log"
    [[ -n ${CMD_ARGS:-} ]] && printf '%s ' ${CMD_ARGS} >>"$run_log"
    printf '%s\n' '-' >>"$run_log"
    OPENAI_MODEL="$MODEL" OPENAI_REASONING_EFFORT="$REASONING" OPENAI_TEMPERATURE="$TEMPERATURE" \
      "${cmd_arr[@]}" "${args_arr[@]}" ${CMD_ARGS} - <"$prompt_file" >>"$run_log" 2>&1 &
  else
    : >"$run_log_text"  # truncate
    run_log="$run_log_text"
    printf 'COMMAND: %q ' OPENAI_MODEL="$MODEL" OPENAI_REASONING_EFFORT="$REASONING" OPENAI_TEMPERATURE="$TEMPERATURE" >>"$run_log"
    printf '%q ' "${cmd_arr[@]}" >>"$run_log"
    printf '%q ' "${args_arr[@]}" >>"$run_log"
    [[ -n ${CMD_ARGS:-} ]] && printf '%s ' ${CMD_ARGS} >>"$run_log"
    printf '%s\n' '-' >>"$run_log"
    OPENAI_MODEL="$MODEL" OPENAI_REASONING_EFFORT="$REASONING" OPENAI_TEMPERATURE="$TEMPERATURE" \
      "${cmd_arr[@]}" "${args_arr[@]}" ${CMD_ARGS} - <"$prompt_file" >>"$run_log" 2>&1 &
  fi
  local child_pid=$!
  pids+=("$child_pid")
  agents+=("$agent")
  logs+=("$run_log")
  json_modes+=("$($use_json && echo 1 || echo 0)")
  start_ts+=("$(date -u +%s)")
  last_activity_ts+=("$(date -u +%s)")
  # initialize size to 0
  last_sizes+=("0")
  done_flags+=("0")
  prompt_files+=("$prompt_file")
}

maybe_gate() {
  if [[ -n "$MAX_PROCS" ]]; then
    while (( running >= MAX_PROCS )); do
      sleep 0.2
      # poll finished pids to reduce running count (coarse)
      for i in "${!pids[@]}"; do
        if ! kill -0 "${pids[$i]}" 2>/dev/null; then
          (( running>0 )) && (( running-- ))
          unset 'pids[$i]' 'agents[$i]'
        fi
      done
    done
  fi
}

# Launch all
for agent in "${AGENTS[@]}"; do
  maybe_gate
  launch_one "$agent"
  (( running++ )) || true
done

epoch_now() { date -u +%s; }
file_size() { local f="$1"; [[ -f "$f" ]] && wc -c <"$f" 2>/dev/null | tr -d ' ' || echo 0; }

# Monitor loop: enforce idle and wall timeouts, and collect exits
rc=0
remaining=${#pids[@]}
while (( remaining > 0 )); do
  now=$(epoch_now)
  for i in "${!pids[@]}"; do
    # skip already handled
    if [[ "${done_flags[$i]}" == "1" ]]; then
      continue
    fi
    pid=${pids[$i]}
    agent=${agents[$i]}
    status_log="${REPO}/prompts/${SLUG}/logs/${agent}.log"
    run_log="${logs[$i]}"

    # Update activity based on log growth
    sz=$(file_size "$run_log")
    if [[ "$sz" != "${last_sizes[$i]}" ]]; then
      last_sizes[$i]="$sz"
      last_activity_ts[$i]="$now"
    fi

    # Check idle timeout
    last_act=${last_activity_ts[$i]}
    if (( IDLE_TIMEOUT > 0 && now - last_act > IDLE_TIMEOUT )); then
      printf "%s | launcher | failed | timeout idle>%ss\n" "$(iso_now)" "$IDLE_TIMEOUT" >> "$status_log"
      kill -TERM "$pid" 2>/dev/null || true
      sleep "$KILL_GRACE" || true
      kill -KILL "$pid" 2>/dev/null || true
      if ! wait "$pid"; then :; fi
      done_flags[$i]="1"; ((remaining--))
      rc=10
      rm -f "${prompt_files[$i]}"
      continue
    fi

    # Check wall timeout
    started=${start_ts[$i]}
    if (( WALL_TIMEOUT > 0 && now - started > WALL_TIMEOUT )); then
      printf "%s | launcher | failed | timeout wall>%ss\n" "$(iso_now)" "$WALL_TIMEOUT" >> "$status_log"
      kill -TERM "$pid" 2>/dev/null || true
      sleep "$KILL_GRACE" || true
      kill -KILL "$pid" 2>/dev/null || true
      if ! wait "$pid"; then :; fi
      done_flags[$i]="1"; ((remaining--))
      rc=10
      rm -f "${prompt_files[$i]}"
      continue
    fi

    # Non-blocking check if child exited
    if ! kill -0 "$pid" 2>/dev/null; then
      if wait "$pid"; then
        printf "%s | launcher | complete | child exited 0\n" "$(iso_now)" >> "$status_log"
      else
        exit_code=$?
        printf "%s | launcher | failed | child exit %s\n" "$(iso_now)" "$exit_code" >> "$status_log"
        rc=10
      fi
      done_flags[$i]="1"; ((remaining--))
      rm -f "${prompt_files[$i]}"
    fi
  done
  # Small sleep to avoid busy loop
  sleep 5
done

echo "All children finished. Latest statuses:"
for agent in "${AGENTS[@]}"; do
  status_log="${REPO}/prompts/${SLUG}/logs/${agent}.log"
  printf "%s: %s\n" "$agent" "$(tail -n 1 "$status_log" 2>/dev/null || echo 'no status')"
done

exit "$rc"

