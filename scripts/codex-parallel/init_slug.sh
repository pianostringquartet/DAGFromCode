#!/usr/bin/env bash
set -euo pipefail

# Scaffold directories and stub subplans for a given slug.
#
# Usage: ./init_slug.sh <slug> agent-A agent-B ...
# Optional env:
#   CODEX_REPO_ROOT           : repo root (default: pwd)
#   CODEX_SUBPLAN_TEMPLATE    : path to markdown template copied into each subplan

REPO=${CODEX_REPO_ROOT:-"$PWD"}

if (( $# < 2 )); then
  echo "usage: $0 <slug> agent-A [agent-B ...]" >&2
  exit 2
fi

SLUG=$1
shift

ROOT_DIR="${REPO}/prompts/${SLUG}"
SUBPLAN_DIR="${ROOT_DIR}/subplans"
LOG_DIR="${ROOT_DIR}/logs"

mkdir -p "$SUBPLAN_DIR" "$LOG_DIR"

template=${CODEX_SUBPLAN_TEMPLATE:-}

for agent in "$@"; do
  file="${SUBPLAN_DIR}/${agent}.md"
  if [[ -f "$file" ]]; then
    echo "exists: $file" >&2
  else
    if [[ -n "$template" ]]; then
      cp "$template" "$file"
    else
      cat <<'EOF' >"$file"
# Subplan

## Objectives
- [ ] TODO describe objective

## Tasks
1. Task details here

## Deliverables
- Summary of changes
- Test evidence
EOF
    fi
    echo "created: $file"
  fi
done

touch "${ROOT_DIR}/integration-notes.md"
echo "slug scaffolded at prompts/${SLUG}" >&2

