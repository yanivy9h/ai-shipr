# Decision Log

Append-only record of decisions made in conversation that affect strategy, scope, sequencing, prioritization, or process.

This is the home for "we decided X over Y because Z." It is deliberately a lower bar than `Learning.md` — every meaningful decision lands here, not just the surprising ones. `Learning.md` is for patterns and insights; `Decision-Log.md` is for decisions and their reasoning.

The Session-Close Protocol writes here automatically at session boundaries (see `CLAUDE.md`). You can also append entries manually.

---

## Format

Every entry uses this shape. Newest at the bottom (chronological append).

```
## [YYYY-MM-DD] — [Short decision title]
**Decision:** [what was decided, one sentence]
**Alternatives considered:** [what was on the table and rejected, briefly]
**Why this one:** [the reasoning that picked the chosen option]
**Downstream impact:** [what files, initiatives, or people this changes — and any follow-up edits required]
```

Keep each entry under ~6 lines. If the reasoning needs more depth, write it once in the relevant strategy or initiative file and link from here.

---

## Entries

## [2026-07-16] — Ship v3.0 to the public repo; treat .claude/skills/ as a build artifact
**Decision:** Published the uncommitted v3.0 work to github.com/yanivy9h/ai-shipr, and gitignored the generated `.claude/skills/` tree instead of committing it.
**Alternatives considered:** Commit the full working tree including the 64 generated skill folders (what was initially staged).
**Why this one:** `setup.sh` regenerates `.claude/skills/` from the `A-AI/` source files, so committing it duplicates content and invites drift. Source of truth is `A-AI/` + `setup.sh`; users run `bash setup.sh` after cloning. Dropped the diff from 171 files/+10k to 108 files/+2.2k.
**Downstream impact:** `.gitignore` now excludes `.claude/skills/`; stale v2 skill copies removed from tracking. Future edits go to `A-AI/` source files, never the generated folder. GitHub About panel still needs a manual v3 refresh (no `gh` CLI locally).

## [2026-07-31] — Add Working-Backwards as a skill, hidden not slash
**Decision:** Added `Working-Backwards` to Discovery & Framing (Amazon's PR/FAQ method: press release, FAQ, customer experience, user manual, plus a claims table and a ready / needs-discovery / not-ready verdict), registered as `user-invocable: false`.
**Alternatives considered:** A playbook in `A-AI/AI-Playbooks/` (paste-and-run, like When-You-Have-a-New-Idea); or a slash command `/working-backwards`.
**Why this one:** It is one task with one structured output, which is the skill definition, not a multi-agent sequence. Slash commands in this system are reserved for rhythms (`/today`, `/weekly`, `/handoff`, `/review-*`); every task skill in `AI-Skills/` is hidden and model-invoked, so a visible command would break the pattern.
**Downstream impact:** Registered in `A-AI/AI-Skills/README.md` (count 40 to 41, plus two new chains) and the skills table in `CLAUDE.md`. Chains into Assumption-Extractor and Problem-Framer. Candidate follow-up: a `When-You-Have-a-New-Idea` playbook revision that runs Working-Backwards as Step 0.
