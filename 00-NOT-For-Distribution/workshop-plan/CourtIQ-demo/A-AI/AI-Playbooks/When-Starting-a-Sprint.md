# Playbook: When Starting a Sprint

**Paste this into Claude Code at the start of each sprint.**
Use it before the sprint kickoff meeting — so you walk in with a prepared goal, committed scope, and deferred items already named.

This playbook reads your active initiatives, maps them to capacity, and outputs a complete sprint plan.

---

## Instructions to Claude

Read the following files before responding:
- `S-Strategy/Strategic-Bets.md`
- `S-Strategy/KPIs.md`
- `R-Relationships/Me/PM-Profile.md`
- `Learning.md`
- `AI/AI-Workflows/Sprint-Planner.md`
- All files in `I-Initiatives/` (scan for Stage and Status)
- All files in `H-Hypotheses/` (scan for active hypotheses)

Then:

**Step 1 — Initiative Scan**
List all active initiatives with their current Stage.
Flag any initiative that is `In Sprint` or `In Development` — these are already in flight.
Flag any initiative that is `Defined` — these are candidates for this sprint.

**Step 2 — Run Sprint-Planner**
Using my capacity input below, run the full Sprint-Planner workflow.
Produce: sprint goal, committed items, secondary items, explicitly out-of-scope list, hypothesis coverage, cross-team dependencies, and risks.

**Step 3 — Kickoff Brief**
Produce a short kickoff brief I can share with the team (3-5 bullet points):
goal, primary commitment, what we are not doing, what metric we are watching.

**Step 4 — Write**
Ask: "Do you want me to save this sprint plan?"
If yes: write to `P-Proof/Sprint-[number]-Plan.md`
Update initiative Stages to `In Sprint` for committed items.

---

## Sprint Context

- Sprint number: [N]
- Sprint dates: [Start → End]
- Engineering capacity: [N story points / N developer-days]
- Design capacity: [N days]
- Planned absences: [Yes — who / No]
- PM focus this sprint: [% delivery / % discovery / % stakeholder]
- Any fires or carry-overs from last sprint: [Yes — describe / No]

## Initiatives I'm Considering for This Sprint

> [List 2-4 initiative names or leave blank to let Claude surface them from I-Initiatives/]

---

> **© Yaniv Yaakubovich**
> Product Management & AI Consulting: [www.verve-pm.com](www.verve-pm.com)
