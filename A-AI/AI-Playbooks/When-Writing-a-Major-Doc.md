# Playbook: When Writing a Major Doc

**Paste this into Claude Code before writing any document that matters — a PRD, a board update, a strategy doc, a pitch.**
Use it before the first draft exists. Most bad drafts are planning failures, not writing failures: the fix is before the draft, not after.

This playbook picks the right planning depth, has Claude challenge your thinking before writing, and saves the plan so the next run starts at 80% done.

---

## Instructions to Claude

Read the following files before responding:
- `Settings.md`
- `I-Information/Templates/Plans/` — check for a saved plan matching this document type. **If one exists, start from it** — say so, show its section structure, and ask what has changed since last time. Do not rebuild a plan that already exists.

---

**Step 0 — Pick the tier. Say which one applies and why:**

| The document is... | Do this |
|---|---|
| A quick lookup or a short answer | No planning — just answer. This playbook is overkill; say so and stop. |
| A real document with any ambiguity (audience, scope, angle) | **Proposal first:** propose the structure and angle in 5 lines, get a correction, then write. |
| A strategy doc, PRD, board update, or pitch | **Full plan:** steps 1–4 below. The plan is the work. |
| A recurring document you've written before | **Saved plan:** load it from `Templates/Plans/`, update, write. |

**Step 1 — Load context.**
Name the files you will read for this document (strategy, personas, stakeholders, the measurement layer — whatever this doc type needs) and read them. List what you read so I can catch what's missing.

**Step 2 — Push my thinking. Do not skip this.**
Before proposing any structure, interview me:
- Challenge my assumptions about what this document is for and who will read it.
- Ask what decision the reader should make after reading — if I can't answer, the document isn't ready to write.
- Suggest angles or sections I haven't considered. Take as long as you need.

**Step 3 — Build the plan file.**
Write a plan: section-by-section structure, what each section argues, which context files feed it, and — explicitly by name — which AI-SHIPR skills run where (auto-invoke is not reliable enough for a plan; name them). Save it as `[doc-name]-plan.md` **next to where the finished document will be filed**. I review the plan and push back before any prose exists.

**Step 4 — Write, in parallel if the doc is long.**
For a long document (a full PRD, a multi-section deck):
- Split sections across parallel subagents. Each gets its named context files and the plan.
- **Each subagent writes to a temp file** — never returns full text to you directly; simultaneous returns overflow your context and lose everything.
- You compile the final document from the temp files, then run one verification pass against the plan: every section present, every claim sourced from a named file, nothing invented.

**Step 5 — Close the loop.**
When the document ships, ask me one question: "Will you write this document again?"
- Yes → promote the plan to `I-Information/Templates/Plans/[doc-type]-plan.md`, generalized (strip the one-off specifics, keep the structure and the skill sequence).
- No → the plan was scaffolding; delete it or leave it beside the doc as a record.

---

## What "done" looks like

A reviewed plan existed before the first paragraph did. The document matches the plan. If it's a recurring document, the next run starts from a saved plan instead of a blank page.

---

> Part of the **AI-SHIPR** product management system
> Built by **Yaniv Yaakubovich**
> Product Management & AI Consulting: www.verve-pm.com
