---
name: sync-context
description: Refresh the local vp/shared/ org layer from the team's shared surface (Notion, Confluence, or any non-filesystem tool).
---

# Skill: Sync Context

## Purpose

Refresh the local `vp/shared/` mirror from wherever your team edits its org context.

AI-SHIPR reads org context as **files**, at a fixed path, at the start of every session. That guaranteed read is the mechanism that makes org context compound instead of being pasted into prompts by hand.

Google Drive and SharePoint satisfy that by mounting as folders. Notion and Confluence cannot — they have no file path. This skill closes that gap: the wiki is where people **edit**, `vp/shared/` is what Claude **reads**, and this command connects the two.

`vp/shared/` is a cache. It is never hand-edited. The shared surface is the source.

---

## When to Use

- Right after installing AI-SHIPR on a new machine, before filling the Setup Worksheet
- Whenever the lead says the org context moved
- At the start of a planning session, if it has been a while
- Before any work that depends on current OKRs or bets

Not needed at all on Google Drive or SharePoint setups — those mount directly.

---

## Prerequisites

1. The relevant connector is enabled in this Claude Code session.
2. `Context-Index.md` exists in the repo root, mapping page ID to target filename.
3. `team_mode` is `individual` or `lead` in `Settings.md`.

---

## Steps

**1. Read `Context-Index.md`.**

It holds the page-ID-to-filename map. Expected shape:

```
| Page ID | Target file | Owner |
|---|---|---|
| 24f1e3a94b2c80d3a1f4e5b6c7d8e9f0 | vp/shared/Vision.md | <name> |
```

If the file is missing, **stop and say so.** Do not fall back to searching the shared surface by page name. Renaming a page is normal behaviour, and name-based lookup silently binds to the wrong page or orphans a file.

**2. Fetch each page by ID.**

Use the connector for the team's tool. If a fetch fails, report that row and continue to the next. **Never write a partial or empty file over a good one** — a truncated org file is worse than a stale one, because nothing looks wrong.

**3. Convert to markdown.**

Flatten headings, paragraphs, bullets and tables. Drop tool-specific chrome. Content nested inside toggles, synced blocks or columns may be lost — that is expected, and is why org pages should be written flat.

**4. Write front matter, then the body.**

```
---
source: <notion|confluence|other>
page_id: <id>
owner: <Owner property>
last_reviewed: <Last reviewed property>
synced: <today's date>
---
```

**5. Write each file to its target path under `vp/shared/`.**

If a target file has local modifications since the last sync, **warn before overwriting** and name the file. Someone editing the mirror by hand means the edit went to the wrong place — it belongs on the shared surface.

**6. Report.**

Summarize files updated, unchanged, and failed. Then flag two conditions loudly:

| Condition | Why it matters |
|---|---|
| `last_reviewed` older than 90 days | Stale context. Claude will otherwise quote an old OKR with full confidence |
| `owner` empty | **Unowned context — the worse of the two.** Usually means someone left and the page was never reassigned. Unowned shared context is more dangerous than none, because people still trust it |

---

## Rules

- **One direction only: shared surface → local.** Never write back from this skill. Two-way sync gives the org layer two sources and then nobody knows which is true.
- **Never hand-edit `vp/shared/`.** Edits belong on the shared surface and arrive here.
- **Key on IDs, never names.** The index is the contract.
- **Only the lead writes the org layer.** This skill is read-only against it for everyone.
- **Do not mirror a live PRD database.** Pull only the document in play, at the start of the session. A stale mirror of a live PRD is worse than no mirror.

---

## The One Exception

Sync is shared surface → local, always, with a single exception at setup: `Populate-Strategy` generates the org files on the lead's machine, and the lead publishes that first version up by hand. After that, local → shared never happens again for those six files.

---

## Related

- `Populate-Strategy` — generates the org layer in the first place (Lead Mode section)
- Where the files live, per tool: verve-pm.com/ai-shipr-resources/team-collab/
- Who fills what and in what order: verve-pm.com/ai-shipr-resources/team-rollout/

---

> Part of the **AI-SHIPR** product management system
> Built by **Yaniv Yaakubovich**
> Product Management & AI Consulting: www.verve-pm.com
