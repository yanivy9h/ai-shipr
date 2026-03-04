# Miro Integration

Pipe structured outputs from Miro boards into AI-SHIPR as `.md` files.
Agents read from here when Miro is added to active integrations in Settings.md.

---

## What to pipe in

Not board screenshots — structured content:
- Workshop output summaries (affinity maps, priority grids, user journey outputs)
- Retrospective boards (what worked, what didn't, action items)
- Discovery session outputs (opportunity maps, assumption lists)
- Roadmap planning boards (bets, timelines, constraints noted)

---

## File format

```
---
source: miro
board: [board name]
date: 2026-02-26
session-type: [retro / workshop / discovery / roadmap]
processed: false
---

# Miro — [board name] — 2026-02-26

## Session type: [type]

[Structured summary of board content]

Key outputs:
- [decision or insight]
- [action item]
- [open question]
```

---

## Setup options

**Option 1 — Manual export**
Most Miro boards: export as .md or copy key sections after a session.
Takes 5-10 minutes post-workshop. Worth doing for any significant session.

**Option 2 — Miro API**
Miro has a REST API. n8n can pull board content on a schedule or trigger.

**Option 3 — During workshop**
Run a Claude Code skill at the end of a Miro session that reads exported content
and structures it into the format above.

---

## How agents use this

Research Synthesizer and Problem Framer read relevant Miro outputs when preparing
for hypothesis framing or discovery synthesis. Retro Facilitator may reference
previous retro boards for patterns.
