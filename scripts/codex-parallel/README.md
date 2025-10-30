# Codex exec orchestration

## What this does
1. `init_slug.sh` scaffolds `prompts/{slug}` directories and stub subplans (used for ad-hoc agents).
2. `setup_slug_from_skills.sh` copies canonical skills from `skills/` into a slug, generating parent instructions and agent subplans.
3. `run_parallel.sh` is the parent-agent entrypoint: it ensures subplans exist (or reads the manifest) and launches headless children.
4. `launch_subagent_exec.sh` runs one `codex exec` child per subplan under `prompts/{slug}/subplans/agent-*.md`.
5. Each child streams output to `prompts/{slug}/logs/{agent}.run.log` (or `.run.ndjson`) and a status line is appended to `prompts/{slug}/logs/{agent}.log` on start/complete/failed.
6. `supervise_subagents_exec.sh` repeats launch cycles on an interval and stops if any status log shows `failed` or `needs-integration|blocked`.
7. `aggregate_status.sh` produces `aggregate_status.json` and fails if any agent is non-success.
8. `extract_final_from_ndjson.sh` converts NDJSON output into `{agent}.final.txt` for summaries.

## Quick start
```bash
# 1) Materialize skills for the slug (creates parent + agent subplans)
bash scripts/codex-parallel/setup_slug_from_skills.sh feature-demo \
  parent=parent-orchestrator \
  agent-A=implementation-standard \
  agent-B=implementation-standard

# 2) Launch all agents in parallel (reads agent list from manifest)
bash scripts/codex-parallel/run_parallel.sh feature-demo

# optional: continuous supervision loop
bash scripts/codex-parallel/supervise_subagents_exec.sh feature-demo 300
```

Override defaults per run without polluting the caller’s shell (env vars apply only to this invocation):
```bash
CODEX_MODEL="gpt-5.1-mini" CODEX_TIMEOUT_SEC=5400 \
  bash scripts/codex-parallel/run_parallel.sh feature-demo
```

## Exit codes
1. `0` — all children exited successfully and no blocking notes found.
2. `10` — one or more children failed (launcher).
3. `20` — supervisor detected `needs-integration|blocked|failed` in status logs.
4. `2` — usage or preflight errors (missing slug, subplans, etc.).

## Notes
1. `setup_slug_from_skills.sh` writes `prompts/{slug}/skills/manifest.json`, which `run_parallel.sh` consumes when no agent list is provided.
2. `run_parallel.sh` exports runtime variables inside a subshell, so the parent agent’s environment stays clean.
3. The launcher exports `OPENAI_MODEL`, `OPENAI_REASONING_EFFORT`, and `OPENAI_TEMPERATURE` for each child.
4. The message instructs children to follow the subplan path and to optimize for low reasoning effort and concise outputs.
5. To limit concurrency, set `CODEX_MAX_PROCS` (e.g., `CODEX_MAX_PROCS=2`).
6. Branch enforcement also supports `prompts/{slug}/launch.json` with `{ "branch": "feature/{slug}" }`.
7. With `CODEX_JSON=auto|1`, each child writes NDJSON to `prompts/{slug}/logs/{agent}.run.ndjson`; otherwise plain text goes to `{agent}.run.log`.
8. The launcher monitors children for idle and wall timeouts and marks the status log accordingly before terminating stuck processes.
9. `init_slug.sh` copies `CODEX_SUBPLAN_TEMPLATE` into each new subplan if provided; otherwise it writes a generic scaffold.

## Reading JSON logs
```bash
# show final assistant content lines (example; event field names may vary by CLI version)
jq -r 'select(.type=="assistant_message" and .delta? == null) | .content[]?.text // empty' \
  prompts/$CODEX_SLUG/logs/agent-A.run.ndjson

# pretty-print stream while working
tail -f prompts/$CODEX_SLUG/logs/agent-A.run.ndjson | jq .
```

