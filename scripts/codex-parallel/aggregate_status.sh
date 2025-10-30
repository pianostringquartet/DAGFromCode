#!/usr/bin/env bash
set -euo pipefail

# Aggregate per-agent status into a single JSON file and exit non-zero on failures.
#
# Env: CODEX_REPO_ROOT (default: $PWD)
# Args: $1 slug (required)

REPO=${CODEX_REPO_ROOT:-"$PWD"}
SLUG=${1:?usage: $0 <slug>}

LOGS_DIR="${REPO}/prompts/${SLUG}/logs"
OUT_JSON="${LOGS_DIR}/aggregate_status.json"

mkdir -p "$LOGS_DIR"

fail=0
echo '[' > "$OUT_JSON"
first=1
shopt -s nullglob
for status_file in "$LOGS_DIR"/agent-*.log; do
  case "$status_file" in
    *.run.log)
      continue
      ;;
  esac
  agent=$(basename "$status_file" .log)
  last_line=$(tail -n 1 "$status_file" 2>/dev/null || echo '')
  ts=$(echo "$last_line" | awk -F'|' '{gsub(/^ +| +$/,"",$1); print $1}')
  status=$(echo "$last_line" | awk -F'|' '{gsub(/^ +| +$/,"",$3); print $3}')
  note=$(echo "$last_line" | awk -F'|' '{gsub(/^ +| +$/,"",$4); print $4}')
  run_json="$LOGS_DIR/${agent}.run.ndjson"
  run_text="$LOGS_DIR/${agent}.run.log"
  run_path=""
  if [[ -f "$run_json" ]]; then run_path="$run_json"; elif [[ -f "$run_text" ]]; then run_path="$run_text"; fi
  case "$status" in
    failed|blocked|needs-integration|timeout*) fail=1 ;;
  esac
  [[ $first -eq 0 ]] && echo ',' >> "$OUT_JSON" || first=0
  printf '{"agent":"%s","timestamp":"%s","status":"%s","note":"%s","runLog":"%s","statusLog":"%s"}' \
    "$agent" "$ts" "$status" "$note" "$run_path" "$status_file" >> "$OUT_JSON"
done
echo ']' >> "$OUT_JSON"

if [[ $fail -ne 0 ]]; then
  echo "One or more agents in non-success state. See $OUT_JSON" >&2
  exit 1
fi
echo "OK: All agents successful. See $OUT_JSON"

