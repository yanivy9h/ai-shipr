# Playbook: When Creating a Skill

**Paste this into Claude Code when you want to add a new skill to AI-SHIPR.**
Fill in the "My Skill" section below, then paste the whole file into chat.

This playbook defines the skill, writes the file, and updates the README.

---

**Skill or agent?**
- **Skill** — a single structured task. Give it an input, get a consistent structured output. Stateless — no identity or memory. Examples: Priority Stack, Assumption Extractor, Business Case Builder.
- **Agent** — a persistent persona with behavioral rules across many situations. Use `When-Creating-an-Agent.md` instead.

---

## Instructions to Claude

Read the following files before responding:
- `A-AI/AI-Skills/README.md` (current skill list and categories — check for overlap)
- `A-AI/AI-Skills/Priority-Stack.md` (format reference)

Then run the following sequence:

**Step 1 — Review my input**
Read the "My Skill" section below. If something critical is unclear, ask one clarifying question. If the task overlaps significantly with an existing skill, flag it and ask how this one is different. Otherwise proceed.

**Step 2 — Draft the skill**
Using `Priority-Stack.md` as your format template, draft the full skill file with these required sections:
- `# Skill: [Name]`
- `## Purpose` — 1–2 sentences. One task. One outcome. No compound purposes.
- `## When to Use` — 3–5 bullets. Specific situations, not general descriptions.
- `## Behavior Rules` — 4–7 rules governing how the task is executed. Make each rule a constraint — what it always does, what it never does, what it requires before proceeding.
- `## Input Expectations` — Required inputs / Optional inputs.
- `## Output Structure` — Exact section headers, tables, and template formats for the output.

If the user left "Behavior rules" blank, propose 4–6 rules based on the task logic.

Show me the draft. **Wait for my approval before writing.**

**Step 3 — Write**
After I approve: write the skill file to `A-AI/AI-Skills/[SkillName].md`.
Confirm the exact path after writing.

**Step 4 — Update README**
Add the new skill to the correct category table in `A-AI/AI-Skills/README.md`.
If no existing category is a clear fit, propose a new category name first.
Confirm after updating.

---

## My Skill

**Skill name:**
> [What should this skill be called? Use a noun phrase — e.g., "Dependency Mapper", "Risk Screener", "Launch Checklist", "Gap Finder"]

**What it does:**
> [1–2 sentences. What is the single task? What does the PM give it, and what does it produce? Keep it to one thing.]

**When to use it:**
> - [Specific situation 1]
> - [Specific situation 2]
> - [Specific situation 3]

**Input:**
> [What does the PM provide? An initiative description? A list of items? A document or meeting notes? How much context is needed for a useful output?]

**Output:**
> [Describe the expected output structure. Even a rough sketch is enough — a ranked table, a set of yes/no checks, a rewritten narrative, a list with flags, a scored matrix, etc.]

**Behavior rules (optional):**
> [Any specific rules for how the skill should behave? E.g., "Always require at least 3 items before running", "Never recommend more than 3 items for immediate action", "Flag items that have no evidence". Leave blank — Claude will propose rules.]

---

## Context (optional)

- Similar to an existing skill? Which one, and how is this different?
- Should this skill chain with another? (e.g., "Output feeds into Hypothesis-Builder")
- Should it read any system files before running? (e.g., `S-Strategy/Strategic-Bets.md`, `R-Relationships/Users/Personas.md`, active `I-Initiatives/`)

---

> Part of the **AI-SHIPR** product management system
> Built by **Yaniv Yaakubovich**
> Product Management & AI Consulting: www.verve-pm.com
