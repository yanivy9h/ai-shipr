# A-AI — Intelligence Layer

Routing map for the AI capabilities. Read the subfolder index that matches what you need — do not load all four.

## Doc index

- `AI-Agents/` — 12 persistent personas with a fixed lens (Problem-Framer, Decision-Architect, PM-Coach...). Read `AI-Agents/CLAUDE.md` to pick one.
- `AI-Skills/` — 51 single-task tools (Hypothesis-Builder, PRD-Builder, Priority-Stack...). Read `AI-Skills/CLAUDE.md` to pick one.
- `AI-Workflows/` — 15 multi-step sequences (today, Weekly-Review, Launch-Coordinator...). Read `AI-Workflows/CLAUDE.md` to pick one.
- `AI-Playbooks/` — 17 When-* situation guides the PM pastes in ("When There's a Fire"...). Read `AI-Playbooks/CLAUDE.md` to pick one.

## Key context

Agents hold a perspective across sessions. Skills do one job and exit. Workflows orchestrate several skills in sequence. Playbooks are user-driven decision trees for a situation.

Everything here is source of truth. `setup.sh` generates `.claude/skills/` wrappers from these files — never edit the generated wrappers, edit here and re-run `bash setup.sh`.

## Typeable slash commands (7)

All other capabilities are invoked by name in conversation or auto-invoked when the situation matches.

| Command | Does |
|---|---|
| `/today` | Daily briefing — morning priority stack |
| `/weekly` | Friday loop close |
| `/handoff` | EOD summary or ownership transfer |
| `/review-initiative` | Weekly initiative health check |
| `/review-experiment` | Weekly experiment review |
| `/shipr-guide` | Questions about the AI-SHIPR system itself |
| `/sync-context` | Refresh `vp/shared/` from Notion/Confluence. Team setups only |
