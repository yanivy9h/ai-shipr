# Slack Integration

Pipe Slack threads and channel summaries into AI-SHIPR as readable `.md` files.
Agents pick these up automatically when `slack: active` in Settings.md.

---

## What to pipe in

Focus on signal, not noise. Recommended channels:
- Your product channel — decisions, priorities, blockers
- Your stakeholder channels — alignment signals, asks, pressure
- Your team channel — morale, blockers, velocity signals
- DMs where decisions were made (when relevant)

---

## File format

Each file dropped here should follow this structure:

```
---
source: slack
channel: #product
date: 2026-02-26
processed: false
---

# Slack — #product — 2026-02-26

[thread or summary content]

Key signals:
- [decision made]
- [open question raised]
- [blocker mentioned]
- [stakeholder concern flagged]
```

---

## Setup options

**Option 1 — Slack MCP (recommended)**
Slack has an official MCP server. Connect it to Claude Code and build a skill
that pulls threads from named channels and writes them to this folder.

**Option 2 — n8n / Zapier**
Trigger: new message or daily schedule.
Action: pull channel history → format as .md → save here.

**Option 3 — Manual**
Copy important threads directly into this folder. Slower but always available.

---

## How agents use this

Morning brief, stakeholder prep, and sprint summarizer read the most recent file here
when `slack: active` in Settings.md. They surface decisions, blockers, and alignment risks
as part of their normal output.
