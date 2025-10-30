# Skills orchestration playbook

## Overview
This playbook explains how to assemble a feature slug from reusable skills, launch multiple headless Codex agents, and supervise their progress using the tooling in `scripts/codex-parallel/`.

## Prerequisites
1. Canonical skills live under `skills/` (see `skills/README.md`).
2. Each skill contains `SKILL.md` (instructions), `meta.json` (tags + defaults), and optional assets in `support/`.
3. Install `jq` and `rg` locally—they are used by the orchestration scripts.

## Workflow
1. Select skills
   1. Review available skills in `skills/`; pick one parent skill (normally `parent-orchestrator`) and one skill per agent (e.g., `qa-verification`, custom Swift skills).
   2. Decide agent names (`agent-A`, `agent-B`, ...) for the slug.
2. Materialize skills into the slug
   1. Run `bash scripts/codex-parallel/setup_slug_from_skills.sh <slug> parent=<skill> agent-A=<skill> ...`.
   2. The script copies canonical skill folders into `prompts/<slug>/skills/`, generates subplans under `prompts/<slug>/subplans/`, and writes `prompts/<slug>/skills/manifest.json`.
   3. Update the generated subplans with slug-specific context before launching.
3. Launch child agents
   1. Execute `bash scripts/codex-parallel/run_parallel.sh <slug>` (no agent list required when the manifest exists).
   2. Override defaults per run with inline env variables, for example `CODEX_MODEL`, `CODEX_TIMEOUT_SEC`, or `CODEX_MAX_PROCS`.
4. Monitor progress
   1. Use `bash scripts/codex-parallel/aggregate_status.sh <slug>` to summarize statuses and fail fast on `failed|needs-integration|blocked|timeout`.
   2. Tail child logs via `tail -f prompts/<slug>/logs/agent-*.run.ndjson | jq .`.
   3. Extract final child summaries with `bash scripts/codex-parallel/extract_final_from_ndjson.sh <slug> <agent>`.
5. Supervise continuously (optional)
   1. Run `bash scripts/codex-parallel/supervise_subagents_exec.sh <slug> <interval>` to relaunch cycles until all agents succeed or a blocker appears.

## Files created per slug
- `prompts/<slug>/skills/manifest.json` — records the parent skill and agent-to-skill assignments plus metadata defaults.
- `prompts/<slug>/parent/parent.md` — parent instructions sourced from the selected parent skill.
- `prompts/<slug>/subplans/agent-*.md` — child subplans sourced from the selected skills (prefixed with a source comment).
- `prompts/<slug>/subplans/agent-*.meta.json` — optional skill metadata copied alongside subplans.
- `prompts/<slug>/logs/agent-*.log` & `.run.ndjson` — child status and streaming logs produced during execution.

## Tips
1. Keep skill folders immutable; apply slug-specific edits only to the generated copies under `prompts/<slug>/`.
2. When updating a canonical skill, rerun `setup_slug_from_skills.sh` to refresh the copies in active slugs (or manually merge changes if you already customized them).
3. Store additional helper scripts per skill in `skills/<skill>/support/` and they will be copied automatically when the skill is materialized.
4. The manifest defaults (`meta.defaults`) flow into `run_parallel.sh` when explicit env overrides are absent, keeping per-skill timeouts/models consistent.

