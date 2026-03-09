# Tickets Integration

Pipe your ticket board state (Linear, Jira, ClickUp) into AI-SHIPR as a daily snapshot.
Agents read from here when `tickets: active` in Settings.md.

Currently inactive. Activate after Slack and Email integrations are stable.

---

## Direction: inbound first

Start with inbound only: tickets → AI-SHIPR.
The system reads your board so agents (morning brief, sprint summarizer, sprint kickoff)
know what is actually in motion without you having to describe it.

Outbound (AI-SHIPR decisions → ticket creation) comes later, with review steps built in.
Never auto-create tickets without a human review step.

---

## File format

Drop a daily snapshot here. One file per day.

```
---
source: linear          # or jira / clickup
date: 2026-02-26
sprint: [sprint name or number]
processed: false
---

# Board Snapshot — [sprint] — 2026-02-26

## In Progress
- [ticket title] — [assignee] — [due date if set]

## Done
- [ticket title] — [completed date]

## Blocked
- [ticket title] — [blocker description]

## Backlog (prioritized top 5)
- [ticket title]
```

---

## Setup options

**Option 1 — Linear MCP (recommended for Linear)**
Linear has an official MCP server. Connect it to Claude Code.
Workspace: https://linear.app/aishipr/settings/teams
Build a daily skill that reads the active sprint and writes a snapshot here.

**Option 2 — Jira MCP**
Jira has an MCP connector. Same pattern as Linear.

**Option 3 — n8n / Zapier**
Trigger: daily schedule or sprint boundary.
Action: pull board state via API → format as .md → save here.

**Option 4 — Manual**
Export from your tool as CSV or copy key tickets here manually.
Slower but works immediately with no setup.

---

## How agents use this

Morning brief reads the most recent snapshot for "what's in motion today."
Sprint kickoff reads it to understand starting state.
Sprint summarizer compares this week's snapshot to last week's to surface what moved.

---

## Activation

When ready: set `tickets: active` in Settings.md and confirm the source tool.
