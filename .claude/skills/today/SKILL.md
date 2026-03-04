---
name: today
description: Run the AI-SHIPR daily briefing. Reads system state and generates a morning priority stack.
---

You are running the AI-SHIPR daily briefing for a product manager.

---

## Pre-Flight: GitHub Status

Read `Settings.md` first.

If `github: active`:
- Run `git status` in the current folder
- Output a one-line summary before the briefing:
  - If clean: `Git: clean — nothing uncommitted.`
  - If changes exist: `Git: [N] uncommitted changes — push before your first edit today.` Then list the modified/untracked files (file names only, one per line, indented)
- Do not commit, stage, or push. Status display only.

If `github: inactive`: skip this step entirely.

---

Read these files before generating output:
- `S-Strategy/Strategic-Bets.md`
- `S-Strategy/KPIs.md`
- All files in `I-Initiatives/`
- All files in `H-Hypotheses/` (status only)
- All files in `P-Proof/` (status only)
- `R-Relationships/Me/PM-Profile.md`
- `Learning.md` (last entry only)
- `Settings.md` (github pre-flight + integration status: email, slack, teams)
- `I-Information/Integrations/Email/` (most recent unprocessed file, only if email: active)
- `I-Information/Integrations/Slack/` (most recent unprocessed file, only if slack: active — filter by channels listed in `I-Information/Integrations/Slack/channels.md`)
- `I-Information/Integrations/Teams/` (most recent unprocessed file, only if teams: active — filter by channels listed in `I-Information/Integrations/Teams/channels.md`)
- `I-Information/Resources/pm-resources.md` (for reading suggestion — subscribed section only)

Generate the Today Briefing below. Be concise. This is a morning tool, not a report.
Total output should be readable in under 3 minutes.

---

### Today Briefing

**Date:** [Today's date]

---

#### Priority Stack

Based on active initiatives, pending decisions, and PM operating preference — list the top 3 things that deserve focus today.

One line each. No elaboration unless something is urgent or blocked.

1. [Priority] — [why it's top of stack today]
2. [Priority] — [why]
3. [Priority] — [why]

---

#### Decisions Waiting

List any initiatives or hypotheses with a pending decision that has no criteria or is overdue.

- [Initiative/Hypothesis] — decision needed: [what] — by: [date if available]

If none: "No pending decisions flagged."

---

#### Stale Items

List any Active initiatives or Hypotheses in Testing status not updated in more than 7 days (if dates available).

- [Item] — last updated: [date] — action needed: [check in / update / close]

If none: "Nothing stale flagged."

---

#### Hypothesis Watch

Any hypotheses currently in Testing status that are approaching or past their test duration.

- [HYP] — status: Testing — duration: [X] — due: [date if available]

If none: "No hypotheses in active testing."

---

#### One Reminder from Learning

Pull the most recent relevant entry from `Learning.md` that applies to today's priorities.

> "[Entry]"

If Learning.md is empty: "No learning log entries yet. Update after today's first session."

---

#### Inbox Signals

Check Settings.md for active integrations. For each active integration, read the most recent unprocessed file.

**Email** (only if `email: active`):
- If unprocessed files exist: list each as `[subject/sender] — [decision/ask/blocker/FYI] — action: [what to do]`
- If none: "No new email signals."

**Slack** (only if `slack: active`):
- Read `I-Information/Integrations/Slack/channels.md` for the list of channels to watch.
- If unprocessed files exist: list as `[#channel] — [date] — [key signal]`
- If none: "No new Slack signals."

**Teams** (only if `teams: active`):
- Read `I-Information/Integrations/Teams/channels.md` for the list of channels to watch.
- If unprocessed files exist: list as `[channel] — [date] — [key signal]`
- If none or inactive: skip.

If no integrations are active: "No integrations active. See Settings.md to enable."

---

#### PM Reading

Based on today's top priority, pick the single most relevant resource from the "Currently Subscribed" section of `I-Information/Resources/pm-resources.md`.

> **[Newsletter name]** — [one sentence on why it's relevant to today's priority]
> [Link]

If no clear match: "No strong match today — browse pm-resources.md for curated PM resources."

---

#### Today's Open Question

One question the system cannot answer — that only the PM can resolve through judgment, conversation, or discovery.

> "[Question]"
