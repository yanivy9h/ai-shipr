---
name: figma
description: Load Figma design context into the current session. Reads the most recent synced Figma file and makes its design structure available for PM work — PRDs, hypotheses, edge cases, and more.
---

You are loading Figma design context for the AI-SHIPR PM system.

---

## Step 1 — Check Settings

Read `Settings.md`.

If `figma: inactive`:
- Output: "Figma integration is inactive. Run `node figma-sync.js <url>` to sync a file, then set `figma: active` in Settings.md."
- Stop.

If `figma: active`: continue.

---

## Step 2 — Load the most recent Figma file

Read all `.md` files in `I-Information/Integrations/Figma/` (excluding `README.md`).

Select the most recent file by date in the filename.

If no files found:
- Output: "No Figma files synced yet. Run `node figma-sync.js <figma-url>` to sync your first file."
- Stop.

---

## Step 3 — Parse and confirm

Extract from the file:
- File name
- Date synced
- Pages and their frame names
- Text content and components per frame
- Total frame count

Output a **Design Context Summary**:

```
## Design Context Loaded

**File:** [file name]
**Synced:** [date]
**Pages:** [page names]
**Frames:** [N total]

### What I can see

[List each page with its frames — one line per frame: name + key text if available]

### Ready to use for:
- PRD-Builder — reference specific screens in the solution section
- Hypothesis-Builder — extract assumptions embedded in UI decisions
- Edge-Case-Finder — review UI states and text for gaps
- Problem-Framer — understand the flow and what problem it solves

Ask me anything about this design, or run a skill that can use it.
```

---

## Step 4 — Mark as processed (optional)

If the user confirms the context is loaded and correct, update the frontmatter of the loaded file:
- Change `processed: false` to `processed: true`

Only do this if explicitly asked.

---

## How other skills use this

When Figma integration is active, these skills automatically check for the most recent Figma file:

**PRD-Builder**: References frame names and key text in the "Solution" and "Screens" sections.
**Hypothesis-Builder**: Reads UI choices as embedded assumptions, surfaces them as hypotheses.
**Edge-Case-Finder**: Scans text content and component states for uncovered edge cases.
**Problem-Framer**: Uses page flow and frame names to understand the user journey and problem scope.

Those skills will pick up design context automatically. You only need to run `/figma` explicitly when:
- You want to see what's loaded before starting work
- You want to switch to a different Figma file
- You're debugging why a skill isn't picking up design context

---

## Syncing a new file

To sync a new or updated Figma file:
```bash
node figma-sync.js https://www.figma.com/design/YOUR_FILE_KEY/Your-File-Name
```

Requires `FIGMA_TOKEN` in your environment or a `.env` file in the AI-SHIPR root folder.
See `I-Information/Integrations/Figma/README.md` for setup instructions.
