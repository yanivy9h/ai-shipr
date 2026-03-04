# Workflow: Populate Strategy

## Purpose
Convert a completed `Setup-Worksheet.md` into ready-to-file content for the S-Strategy and R-Relationships layers.

## When to Use
Day 1 of the Half-Sprint Guide, after completing the Setup Worksheet.
Also use when onboarding a new product or resetting strategy after a significant pivot.

## How to Run
1. Open this file
2. Copy the full prompt below
3. Paste it into a new Claude session
4. Paste your completed `Setup-Worksheet.md` immediately after
5. Claude will generate all 8 output files
6. Review each output — correct anything that misses your intent
7. Paste each output into its corresponding file in the folder structure
8. Run `Structural-Integrity-Auditor` on S-Strategy before moving to Day 2

---

## The Prompt

---

You are helping a product manager populate their AI-SHIPR operating system.

They have completed a Setup Worksheet with raw answers about their product, strategy, role, stakeholders, and users.

Your job is to convert those raw answers into 8 structured files, ready to be filed into AI-SHIPR.

Read the worksheet answers carefully. Preserve the PM's intent. Do not invent information they did not provide. If a field cannot be filled from the worksheet, write "[Missing — add manually]" and explain what is needed.

Generate each file in full, clearly separated by headers. Format each file as it would appear in Obsidian markdown.

---

### File 1: S-Strategy/Vision.md

Use this structure:

```
# Vision

## Product in one sentence
[Derived from Part 1 of the worksheet]

## Vision (2-5 lines)
[Synthesize from the product description, user outcome, and strategy sections]

## What we will NOT do
[Derived from the "explicitly not doing" answer in Part 2]
```

---

### File 2: S-Strategy/Product.md

Use this structure:

```
# Product Context

## Description (1-2 sentences)
[From Part 1]

## Target customer segment(s)
- [Primary segment from Part 1, specific]
- [Secondary if provided]

## Core user problem
[From Part 1]

## Business model
[From Part 1]

## Competitive positioning (3 bullets max)
- [What makes this product different from the alternatives named]
- ...
```

---

### File 3: S-Strategy/KPIs.md

Use this structure:

```
# KPIs

## North Star Metric
- Name: [from Part 2]
- Definition: [infer a clear definition from the worksheet context]
- Current: [from Part 2, or "Not provided"]
- Target: [from Part 2, or "Not provided"]

## Supporting Metrics
1. Name: [from Part 2]
   - Definition: [infer]
   - Current/Target: [if provided]
2. ...
3. ...
```

---

### File 4: S-Strategy/Strategic-Bets.md

Use this structure:

```
# Strategic Bets (max 3)

## Bet 1 — [Name derived from the bet description]
- Why this matters: [synthesize from worksheet]
- Who it serves: [persona or user segment]
- What success looks like: [from the success signal answer]
- Time horizon: 6 months

## Bet 2 — ...

## Bet 3 — ...
```

---

### File 5: S-Strategy/Constraints.md

Use this structure:

```
# Constraints

## Resource Constraints
- [From Part 3]

## External Risks
- [From Part 3]

## Internal Risks
- [From Part 3]
```

---

### File 6: R-Relationships/Me/PM-Profile.md

Use this structure:

```
# PM Profile

## My role in the team
- Responsibilities: [from Part 4]
- Decision ownership: [from Part 4]
- Interfaces with: [from Part 4]

## My biggest challenge right now
[From Part 4]

## Where I spend most of my time
[From Part 4]

## Where I want leverage from AI-SHIPR
- [Synthesize from the "where I want to spend more time" and "AI leverage" answers]

## My operating preference
[Two picks from Part 4: Urgency / Impact / Risk / Alignment / Strategic / Balanced]
```

---

### File 7: R-Relationships/Users/Personas.md

Use this structure:

```
# Personas

## Persona 1 — [Name or role label]
- Role / profile: [from Part 6]
- Job-to-be-done: [from Part 6]
- Biggest pain: [from Part 6]
- Emotional drivers: [from Part 6]
- What success looks like: [synthesize]
- Where they show up: [from Part 6]

## Persona 2 — [Name or role label]
[Repeat structure if secondary segment provided. If not: write "Not provided — add when identified."]
```

---

### File 8: R-Relationships/Stakeholders/Stakeholders.md

Use this structure:

```
# Stakeholders

## [Name] — [Role]
- What they care about most: [from Part 5]
- Their biggest concern: [from Part 5]
- What makes them hard to align: [from Part 5]
- Predicted objection to current work: [synthesize from the above]

## [Name] — [Role]
[Repeat for each stakeholder]
```

---

After generating all 8 files:

List any fields you had to mark as "[Missing — add manually]" and explain briefly what the PM needs to add.

Then write:
> "Run Structural-Integrity-Auditor on S-Strategy before moving to Day 2 of your Half-Sprint."

---

*End of prompt. Paste your completed Setup-Worksheet.md below this line.*

---

> **© Yaniv Yaakubovich**
> Product Management & AI Consulting: [www.verve-pm.com](www.verve-pm.com)
