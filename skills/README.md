# Repository skills library

## Purpose
This folder is the single source of truth for every reusable skill in the repository. Each skill is a self-contained package—metadata, canonical instructions, and optional helper scripts—that any parent or child agent can materialize into a prompt-specific workspace.

## Layout
- `skills/<skill-name>/SKILL.md` — canonical instructions with YAML frontmatter describing the skill.
- `skills/<skill-name>/meta.json` — machine-readable metadata (tags, summary, recommended usage, default timeouts).
- `skills/<skill-name>/support/` — optional assets (scripts, fixtures, screenshots) required by the skill.

## Usage
1. Run `scripts/codex-parallel/setup_slug_from_skills.sh <slug> parent=<skill> agent-A=<skill> ...` to assemble a slug from canonical skills.
2. The script copies the chosen skills into `prompts/<slug>/skills/`, generates subplans, and writes `manifest.json` for the slug.
3. Launch child agents with `scripts/codex-parallel/run_parallel.sh <slug>` (reads the manifest when no agent list is provided).
4. See `prompts/skills-orchestration.md` for the full workflow.

## Adding a new skill
1. Create a folder under `skills/` named for the skill (kebab-case).
2. Add `SKILL.md` with numbered steps, deliverables, and guardrails.
   - Prepend YAML frontmatter (e.g., `skill`, `title`, `summary`, `tags`) so orchestrators can read metadata without loading full content.
3. Add `meta.json` describing the skill (`name`, `description`, `tags`, `recommendedAgents`, optional `defaults`).
4. Add any helper assets to `support/` and reference them from `SKILL.md`.
5. Update `scripts/codex-parallel/setup_slug_from_skills.sh` if the new skill needs custom instantiation logic.

