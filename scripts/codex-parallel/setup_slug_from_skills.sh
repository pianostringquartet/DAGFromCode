#!/usr/bin/env bash
set -euo pipefail

# Assemble a slug from repository-level skills.
#
# Usage:
#   setup_slug_from_skills.sh <slug> parent=<skill> agent-A=<skill> agent-B=<skill> ...
#
# The script:
#   - Copies the canonical skill packages from `skills/<skill>/` into `prompts/<slug>/skills/`.
#   - Generates `prompts/<slug>/parent/parent.md` and `prompts/<slug>/subplans/<agent>.md` from the source `SKILL.md` files.
#   - Writes `prompts/<slug>/skills/manifest.json` summarizing the parent + agent skill assignments.
#   - Creates per-agent meta files (`subplans/<agent>.meta.json`) when the source skill defines `meta.json`.

if (( $# < 2 )); then
  echo "usage: $0 <slug> parent=<skill> agent-A=<skill> [...]" >&2
  exit 2
fi

REPO=${CODEX_REPO_ROOT:-"$PWD"}
SLUG=$1
shift

if ! command -v jq >/dev/null 2>&1; then
  echo "jq is required for setup_slug_from_skills.sh" >&2
  exit 2
fi

parent_skill=""
agent_names=()
agent_skill_values=()

for assignment in "$@"; do
  case "$assignment" in
    parent=*)
      parent_skill=${assignment#parent=}
      ;;
    agent-*=*)
      agent=${assignment%%=*}
      skill=${assignment#*=}
      agent_names+=("$agent")
      agent_skill_values+=("$skill")
      ;;
    *)
      echo "Unrecognized assignment: $assignment" >&2
      exit 2
      ;;
  esac
done

if [[ -z "$parent_skill" ]]; then
  echo "parent=<skill> is required" >&2
  exit 2
fi

skills_root="${REPO}/skills"
slug_root="${REPO}/prompts/${SLUG}"
subplans_dir="${slug_root}/subplans"
skills_output_dir="${slug_root}/skills"
parent_dir="${slug_root}/parent"

mkdir -p "$subplans_dir" "$skills_output_dir" "$parent_dir"

copy_skill_dir() {
  local source_dir=$1
  local dest_dir=$2
  mkdir -p "$dest_dir"
  cp -R "$source_dir"/. "$dest_dir"/
}

ensure_skill_exists() {
  local skill=$1
  local skill_dir="${skills_root}/${skill}"
  if [[ ! -d "$skill_dir" ]]; then
    echo "Missing skill: $skill_dir" >&2
    exit 2
  fi
}

ensure_skill_exists "$parent_skill"

# Copy parent skill package
parent_skill_src="${skills_root}/${parent_skill}"
parent_skill_dest="${parent_dir}/${parent_skill}"

if [[ -e "$parent_skill_dest" ]]; then
  echo "Parent skill already materialized at $parent_skill_dest" >&2
else
  copy_skill_dir "$parent_skill_src" "$parent_skill_dest"
  printf "<!-- Source skill: %s -->\n\n" "$parent_skill" > "${parent_dir}/parent.md"
  cat "${parent_skill_dest}/SKILL.md" >> "${parent_dir}/parent.md"
  if [[ -f "${parent_skill_dest}/meta.json" ]]; then
    cp "${parent_skill_dest}/meta.json" "${parent_dir}/parent.meta.json"
  fi
fi

# Copy agent skills and generate subplans
declare -a manifest_entries

for idx in "${!agent_names[@]}"; do
  agent=${agent_names[$idx]}
  skill=${agent_skill_values[$idx]}
  ensure_skill_exists "$skill"

  skill_src="${skills_root}/${skill}"
  agent_skill_dest="${skills_output_dir}/${agent}"
  subplan_path="${subplans_dir}/${agent}.md"

  if [[ -e "$agent_skill_dest" ]]; then
    echo "Agent skill already materialized at $agent_skill_dest" >&2
  else
    copy_skill_dir "$skill_src" "$agent_skill_dest"
  fi

  if [[ -e "$subplan_path" ]]; then
    echo "Subplan exists, skipping overwrite: $subplan_path" >&2
  else
    printf "<!-- Source skill: %s -->\n\n" "$skill" > "$subplan_path"
    cat "${agent_skill_dest}/SKILL.md" >> "$subplan_path"
  fi

  if [[ -f "${agent_skill_dest}/meta.json" ]]; then
    cp "${agent_skill_dest}/meta.json" "${subplan_path%.md}.meta.json"
    meta_json=$(jq -c '.' "${agent_skill_dest}/meta.json")
  else
    meta_json="null"
  fi
  manifest_entries+=("{\"agent\":\"$agent\",\"skill\":\"$skill\",\"meta\":$meta_json}")
done

# Build manifest JSON
parent_meta_json="null"
if [[ -f "${parent_skill_dest}/meta.json" ]]; then
  parent_meta_json=$(jq -c '.' "${parent_skill_dest}/meta.json")
fi

agents_json="["
if (( ${#manifest_entries[@]} > 0 )); then
  for idx in "${!manifest_entries[@]}"; do
    agents_json+="${manifest_entries[$idx]}"
    if (( idx < ${#manifest_entries[@]} - 1 )); then
      agents_json+="," 
    fi
  done
fi
agents_json+="]"

manifest_path="${skills_output_dir}/manifest.json"
cat <<EOF > "$manifest_path"
{
  "slug": "${SLUG}",
  "parent": {
    "skill": "${parent_skill}",
    "meta": ${parent_meta_json}
  },
  "agents": ${agents_json}
}
EOF

echo "Materialized skills for slug '${SLUG}'. Parent: ${parent_skill}. Agents: ${agent_names[*]}"

