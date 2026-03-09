# Figma Integration

Pipe structured design context from Figma files into AI-SHIPR as `.md` files.
Agents read from here when Figma is set to active in `Settings.md`.

---

## What this enables

- Share screen designs with Claude without pasting screenshots
- Claude reads frame names, page structure, and text content from your Figma files
- PRD-Builder, Hypothesis-Builder, and Problem-Framer can reference actual design context
- No manual copy-paste — one command syncs the file

---

## What to pipe in

Not raw Figma JSON — structured design summaries:
- Screen names and their purpose (frames and pages)
- Key text content visible in the UI
- Component inventory (what reusable components exist)
- Design notes and annotations
- Flow structure (which screens connect to which)

---

## File format

```
---
source: figma
file: [file name]
file_key: [figma file key]
url: [figma url]
date: 2026-03-07
pages: [comma-separated page names]
frames_count: [N]
processed: false
---

# Figma — [file name] — 2026-03-07

## Pages

### [Page Name]

#### [Frame Name]
- Purpose: [inferred from name and content]
- Key text: [visible text content]
- Notes: [any annotations found]

...

## Components Referenced

- [ComponentName] — used in: [frames]
- ...

## Design Notes

[Any text found in annotation layers or sticky notes]
```

---

## Setup

### Step 1 — Get a Figma Personal Access Token

1. Go to figma.com → Settings → Personal access tokens
2. Create a token with **File content** read access
3. Copy the token

### Step 2 — Set your token

In your terminal, add to `~/.zshrc` or `~/.bash_profile`:
```bash
export FIGMA_TOKEN="your-token-here"
```
Then `source ~/.zshrc`.

Or create a `.env` file in the AI-SHIPR root folder:
```
FIGMA_TOKEN=your-token-here
```

### Step 3 — Run the sync script

From the AI-SHIPR root folder:
```bash
node figma-sync.js https://www.figma.com/design/FILE_KEY/FILE_NAME
```

This creates a dated `.md` file in this folder.

### Step 4 — Activate in Settings.md

```
figma: active
```

---

## How agents use this

When `figma: active`, agents read the most recent `.md` file in this folder as design context.

**PRD-Builder** — references frame names and text when describing the proposed solution.
**Hypothesis-Builder** — uses design screens to identify assumptions embedded in the UI.
**Problem-Framer** — uses flow structure to understand what problem the design is solving.
**Edge-Case-Finder** — reads UI text and states to surface edge cases.

Invoke any skill normally. It will automatically pick up design context if Figma is active.

---

## Manual option

No script, no token — paste structured design notes manually in this format:
```
figma-2026-03-07-[file-name].md
```
Follow the file format above. Useful for one-off files or sharing specific screens.

---

_Part of AI-SHIPR — the PM operating system._
