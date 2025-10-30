#!/usr/bin/env bash
set -euo pipefail

# Extracts a best-effort final assistant message from an NDJSON run log and
# writes it to an adjacent .final.txt file. If no NDJSON exists or parsing fails,
# the script exits 2 without creating an output.
#
# Env: CODEX_REPO_ROOT (default: $PWD)
# Args: $1 slug (required), $2 agent (e.g., agent-A)

REPO=${CODEX_REPO_ROOT:-"$PWD"}
SLUG=${1:?usage: $0 <slug> <agent>}
AGENT=${2:?usage: $0 <slug> <agent>}

NDJSON="${REPO}/prompts/${SLUG}/logs/${AGENT}.run.ndjson"
OUT_TXT="${REPO}/prompts/${SLUG}/logs/${AGENT}.final.txt"

if [[ ! -f "$NDJSON" ]]; then
  echo "missing NDJSON: $NDJSON" >&2
  exit 2
fi

# Heuristics across possible CLI schemas:
# 1) type=="assistant_message" with .final==true
# 2) event=="response.finished" with .content
# 3) last assistant_message content regardless of .final

tmp=$(mktemp)
trap 'rm -f "$tmp"' EXIT

if jq -er 'select(.type=="assistant_message" and (.final==true)) | .content // empty' "$NDJSON" >/dev/null; then
  jq -r 'select(.type=="assistant_message" and (.final==true)) | .content | if type=="array" then map(.text // empty) | join("\n") else tostring end' "$NDJSON" > "$tmp"
else
  if jq -er 'select(.event=="response.finished") | .content // empty' "$NDJSON" >/dev/null; then
    jq -r 'select(.event=="response.finished") | .content | if type=="array" then map(.text // empty) | join("\n") else tostring end' "$NDJSON" > "$tmp"
  else
    # fallback: take the last assistant_message content present
    jq -r 'select(.type=="assistant_message") | .content | if type=="array" then map(.text // empty) | join("\n") else tostring end' "$NDJSON" | tail -n 100 > "$tmp" || true
  fi
fi

if [[ ! -s "$tmp" ]]; then
  echo "no final content found" >&2
  exit 2
fi

mv "$tmp" "$OUT_TXT"
echo "wrote $OUT_TXT"

