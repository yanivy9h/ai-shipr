# MS Teams Integration

Pipe Teams channel messages and meeting notes into AI-SHIPR as `.md` files.
Agents read from here when `teams: active` in Settings.md.

Currently inactive. MS Teams MCP is not yet available.
Use n8n or manual export in the meantime.

---

## What to pipe in

Same logic as Slack — filter for signal:
- Product and engineering channel decisions
- Meeting notes from recurring product reviews
- Stakeholder threads with asks or alignment signals
- Any message where a decision or commitment was made

---

## File format

```
---
source: teams
channel: [channel name]
date: 2026-02-26
processed: false
---

# Teams — [channel] — 2026-02-26

[thread or meeting notes]

Key signals:
- [decision made]
- [commitment given]
- [blocker raised]
- [stakeholder concern]
```

---

## Setup options

**Option 1 — n8n**
Trigger: new message in selected channel or daily schedule.
Action: pull history → format as .md → save here.
Microsoft Graph API gives Teams access.

**Option 2 — Manual**
Copy threads or meeting notes directly here after important discussions.

**Option 3 — Teams MCP (future)**
When an official MCP server for MS Teams is released, connect it to Claude Code
and build a read skill following the same pattern as Slack.

---

## Activation

When ready to use: set `teams: active` in Settings.md.
