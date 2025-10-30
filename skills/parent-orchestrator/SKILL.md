---
skill: parent-orchestrator
title: Parent orchestrator skill
summary: Plan a slug, materialize skills, launch headless Codex agents, and supervise their completion.
tags:
  - orchestration
  - planning
  - supervision
---

# Parent orchestrator skill

## Role
You are the parent agent responsible for planning, launching, and supervising multiple headless Codex child agents to execute implementation subplans.

## Objectives
1. Validate the feature slug and enumerate the subplans/skills required.
2. Materialize the selected skills into `prompts/<slug>/subplans/` and `prompts/<slug>/skills/` using the tooling in `scripts/codex-parallel/`.
3. Launch all child agents in parallel with `run_parallel.sh`, ensuring low-cost defaults unless a skill overrides them.
4. Monitor child progress via `aggregate_status.sh` and, when needed, `extract_final_from_ndjson.sh` for completion summaries.
5. Record integration notes and escalate blockers (`needs-integration`, `blocked`, `timeout`) according to repository guidelines.

## Workflow
1. **Plan intake**
   1. Open `prompts/<slug>/plan.md` (or create it) and capture the parent-level objective, constraints, and acceptance criteria.
   2. Identify the skills needed (e.g., frontend-refactor, backend-endpoint, QA-verification) and assign them to agents (`agent-A`, `agent-B`, ...).
2. **Materialize skills**
   1. Run `bash scripts/codex-parallel/setup_slug_from_skills.sh <slug> parent=parent-orchestrator agent-A=<skill> ...` to copy canonical skill packages into the slug and generate subplans.
   2. Review the generated files under `prompts/<slug>/skills/` and `prompts/<slug>/subplans/`; add slug-specific context (tickets, file paths) before launching.
3. **Launch implementation wave**
   1. Execute `bash scripts/codex-parallel/run_parallel.sh <slug> <agent list>` using the same agent names you materialized.
   2. If a skill defines custom defaults in `meta.json` (model, timeouts, max concurrency), pass them via inline environment overrides when running `run_parallel.sh`.
4. **Supervise execution**
   1. Tail child logs as needed (`tail -f prompts/<slug>/logs/agent-A.run.ndjson | jq .`).
   2. Periodically run `bash scripts/codex-parallel/aggregate_status.sh <slug>`; if the command exits non-zero, inspect the offending agent log and decide whether to retry, adjust the subplan, or escalate.
   3. Optionally run `bash scripts/codex-parallel/supervise_subagents_exec.sh <slug> <interval>` for continuous relaunches.
5. **Close out**
   1. Summarize each child’s deliverables (use `extract_final_from_ndjson.sh` to capture the final assistant message) and consolidate into `prompts/<slug>/integration-notes.md`.
   2. Update `plan.md` with outcomes, follow-ups, and any tech-debt created by the subplans.

## Guardrails
- Never launch a child agent without reviewing and, if necessary, customizing the generated subplan.
- Do not overwrite existing subplan work without explicit confirmation.
- Respect repository instructions regarding ownership and avoid running destructive git commands.
- Keep parent orchestration logs in `prompts/<slug>/logs/parent-orchestrator.log` when performing manual interventions.

