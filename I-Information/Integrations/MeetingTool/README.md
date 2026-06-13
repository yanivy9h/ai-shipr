# Meeting Tool Integration

Drop exported meeting notes or transcripts here.

## Supported sources

- **Fireflies.ai** — export meeting summary or transcript as markdown
- **tl;dv** — export transcript or AI summary as markdown
- **Granola** — export meeting notes (File → Export as Markdown)
- **Any tool** — paste notes into a new .md file manually

## File naming convention

```
YYYY-MM-DD-meeting-name.md
```

Examples:
```
2026-06-02-stakeholder-sync-with-dana.md
2026-06-03-sprint-review.md
2026-06-04-user-interview-maya.md
```

## How it works

When you run `/after-meeting`, the Meeting-Synthesizer skill checks this folder for the most recent file.
It will confirm with you before processing: "Found [filename] from [date]. Is this the meeting to process?"

If this folder is empty, the workflow will ask you to paste the notes directly.

---

> Part of the **AI-SHIPR** product management system
> Built by **Yaniv Yaakubovich**
> Product Management & AI Consulting: www.verve-pm.com
