# Email Integration

Pipe product-relevant email threads into AI-SHIPR as `.md` files.
Agents read from here when `email: active` in Settings.md.

---

## What to pipe in

Not your entire inbox. Filtered signal:
- Stakeholder emails with decisions, asks, or escalations
- User feedback forwarded from support
- External partner or vendor updates that affect the product
- Any thread where a decision was made or needs to be made

---

## File format

```
---
source: email
from: [name / role]
date: 2026-02-26
subject: [email subject]
processed: false
---

# Email — [subject] — 2026-02-26

[body or summary]

Key signals:
- [decision or ask]
- [concern flagged]
- [action needed]
```

---

## Setup options

**Option 1 — n8n / Zapier**
Trigger: email received with specific label (e.g. "AI-SHIPR" or "Product")
Action: extract body → format as .md → save here.

**Option 2 — Manual**
Forward or paste important emails into this folder. Takes 60 seconds per email.

**Option 3 — Gmail / Outlook MCP**
Both have MCP connectors in development. When available, connect and filter by label.

---

## How agents use this

Stakeholder Translator and 1:1 prep skills read the most recent files here when `email: active`.
Morning brief surfaces any unread signals flagged as decisions or asks.
