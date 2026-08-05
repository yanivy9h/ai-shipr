---
name: populate-strategy
description: Initial setup workflow. Reads AI-SHIPR-Setup-Worksheet.md and populates S-Strategy files.
user-invocable: false
---

# Workflow: Populate Strategy

## Purpose
Convert a completed `AI-SHIPR-Setup-Worksheet.md` into ready-to-file content for the S-Strategy and R-Relationships layers.
Supports both single-product and multi-product setups.

## When to Use
Day 1 of the Half-Sprint Guide, after completing the Setup Worksheet.
Also use when onboarding a new product or resetting strategy after a significant pivot.

## How to Run
1. Open a new Claude Code session in your AI-SHIPR vault
2. Copy the full prompt below and paste it in
3. Claude will read `AI-SHIPR-Setup-Worksheet.md` automatically and generate all output files
4. Review each output — correct anything that misses your intent
5. Paste each output into its corresponding file in the folder structure
6. Run `Structural-Integrity-Auditor` on S-Strategy before moving to Day 2

---

## The Prompt

---

You are helping a product manager populate their AI-SHIPR operating system.

Start by reading the file `AI-SHIPR-Setup-Worksheet.md` from the current directory. Use its contents as the worksheet answers for everything below. Do not ask the user to paste anything — read the file directly.

**First: read both Setup Mode answers in "Before You Start."**

These are two independent questions. Determine both before running anything:

**Question 1 — product_mode:**
- "Single product" → `product_mode: single` → run the Single-Product flow
- "Multiple products" → `product_mode: multi` → run the Multi-Product flow

**Question 2 — team_mode:**
- "Solo PM" → `team_mode: solo`
- "PM on a team" → `team_mode: individual` → **first** run the Individual Mode step below, then the product flow
- "Team lead" → `team_mode: lead` → also run the Lead Mode step below (org layer + Team files)

Older worksheets offer only "Individual PM / Team lead". Treat "Individual PM" as `solo` **unless** the worksheet mentions a VP, a shared org layer, or `../vp/shared/` — in that case ask which of `solo` or `individual` applies before generating anything. Never silently set `solo` for someone who belongs to a team, or their session will skip the org layer entirely.

Note: `team_mode` and `product_mode` are independent. A solo PM can manage multiple products. A team lead can manage a single product. Set each based only on the answer to its own question.

**These two rules apply to every mode and every flow below:**

Do not invent information the PM did not provide. If a field cannot be filled from the worksheet, write "[Missing — add manually]" and explain what is needed.

Generate each file in full, clearly separated by headers. Format each file as it would appear in Obsidian markdown.

---

## Individual Mode — Run First (only if `team_mode: individual`)

Before generating anything, read the org layer:

```
../vp/shared/Vision.md
../vp/shared/Strategy.md
../vp/shared/OKRs.md
../vp/shared/Strategic-Bets.md
../vp/shared/Portfolio-Roadmap.md
../vp/shared/Constraints.md
```

If the folder is missing or empty, stop and say so. A PM instance generated without org context has to be reconciled against it afterwards, and reconciliation after the fact is a rewrite. Direct them to the team rollout guide: verve-pm.com/ai-shipr-resources/team-rollout/

If it is present, use it as follows while generating:

- **Ladder the bets.** Every bet in the PM's Part 2 should map to an org bet. List any that do not — each one is either unfunded work or a real gap in the org layer, and both are decisions someone needs to make.
- **Flag conflicts, do not resolve them.** Where a PM answer contradicts org vision, OKRs, or constraints, name the file, name the conflict, and carry on. Do not quietly rewrite the PM's answer to match, and do not quietly rewrite the org layer.
- **Do not duplicate.** If a constraint or stakeholder already exists in the org layer, reference it rather than copying it into the PM's local files.

**Never write to `shared/` in this mode.** The org layer has exactly one writer: the lead.

---

## Single-Product Flow

Generate these 8 files using the Product A sections of the worksheet (or the single product section if labeled differently).

### File 1: S-Strategy/Vision.md

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

```
# Personas

## Persona 1 — [Name or role label]
- Role / profile: [from Part 6]
- Job-to-be-done: [from Part 6]
- Biggest pain: [from Part 6]
- Emotional drivers: [from Part 6]
- What success looks like: [synthesize]
- Where & when they engage with the product: [from Part 6]

## Persona 2 — [Name or role label]
[Repeat structure if secondary segment provided. If not: write "Not provided — add when identified."]
```

---

### File 8: R-Relationships/Stakeholders/Stakeholders.md

Preserve the `## Rubrics` section already present at the top of the template — do not overwrite it. Append one stakeholder block per Part 5 entry, using the field set below.

```
## [Name] — [Role]
- **Trust level with product team:** [To assess — see rubric — PM fills on Day 2]
- **Decision role:** [To assess — see rubric — PM fills on Day 2]
- **Current sentiment:** [To assess — see rubric — PM fills on Day 2]
- **Optimizes for:** [from Part 5 — "what they care about most"]
- **Biggest fear:** [synthesize from Part 5 — "biggest concern about your current work"]
- **Common objections:** [synthesize from Part 5 — "what makes them hard to align"]
- **Communication style:** [To assess — PM fills on Day 2]
- **What they need to see to say "yes":** [synthesize from Part 5]
```

The three rubric-gated fields (Trust level, Decision role, Current sentiment) require judgment the Setup Worksheet does not collect. Do **not** infer them — leave "[To assess]" and let the PM fill them on Day 2 using the rubric at the top of Stakeholders.md.

---

After generating all 8 files, list any fields marked "[Missing — add manually]" and explain briefly what the PM needs to add.

**If `team_mode: lead` (Question 2 answer was "Team lead"):**
Also run the **Lead Mode — The Org Layer** section near the end of this file, then generate the following from Part 8 of the worksheet:

### File 9: R-Relationships/Team/Roster.md

```
# Team Roster

## PMs

| Name | Products owned | Key bets |
|------|---------------|----------|
| [From Part 8] | [From Part 8] | [From Part 8] |

## Team challenges
[From Part 8 — biggest challenge as team lead]

## Who needs most support right now
[From Part 8]

## Team gaps
[From Part 8 — skill, capacity, or coverage gap]

## Open headcount
[From Part 8, or "None identified at setup"]

## 1:1 format preference
[From Part 8]
```

Then update `Settings.md`:
- Set `product_mode: single`
- Set `team_mode:` from Question 2 — `solo` ("Solo PM"), `individual` ("PM on a team"), or `lead` ("Team lead")
- Do not change any other settings.

Then write:
> "Settings.md updated — product_mode: single, team_mode: [value]. Run Structural-Integrity-Auditor on S-Strategy before moving to Day 2 of your Half-Sprint."

---

## Multi-Product Flow

Generate files for each product, then generate the shared layer.

**Step 1 — For each product (repeat for Product A, Product B, etc.):**

Use the product-specific sections of the worksheet (Product A Strategy, Product A Constraints, Product A Users, etc.).

File the output into a subfolder named after the product (e.g., `product-a/`, `product-b/`). Use the product name from the worksheet as the folder label.

Generate these files per product:

- `[product-name]/S-Strategy/Vision.md` — use the same structure as File 1 above, scoped to this product
- `[product-name]/S-Strategy/Product.md` — use the same structure as File 2, scoped to this product
- `[product-name]/S-Strategy/KPIs.md` — use the same structure as File 3, scoped to this product
- `[product-name]/S-Strategy/Strategic-Bets.md` — use the same structure as File 4, scoped to this product
- `[product-name]/S-Strategy/Constraints.md` — use the same structure as File 5, scoped to this product (product-specific constraints only)
- `[product-name]/R-Relationships/Users/Personas.md` — use the same structure as File 7, scoped to this product's users (Part 6)

Do not mix content between products. If a constraint or stakeholder applies to both products, note it but do not duplicate — it will go in the shared layer.

---

**Step 2 — Shared layer (generate once, from Parts 4, 5, and 7 of the worksheet):**

### File: shared/Constraints.md

```
# Shared Constraints

## Capacity
[From Part 4 — time split across products. State explicitly how PM time is allocated.]
[From Part 7 — any shared engineering, design, or budget constraints]

## Rules that apply to both products
[From Part 7 — shared budget, shared resources, constraints that span both products]
```

---

### File: shared/Stakeholders.md

```
# Cross-Product Stakeholders

[For each stakeholder marked "Cross-product" in Part 5:]

## [Name] — [Role]
- Products they touch: [which products]
- What they care about most: [from Part 5]
- Their biggest concern: [from Part 5]
- What makes them hard to align: [from Part 5]
- Predicted objection: [synthesize]
```

---

### File: shared/Portfolio-Roadmap.md

```
# Portfolio Roadmap (Draft)

## Product Overview
| Product | Stage | North Star Metric | Key Bets |
|---------|-------|-------------------|----------|
| [Product A] | [stage from Part 2] | [from Part 2] | [bets from Part 2] |
| [Product B] | [stage from Part 2] | [from Part 2] | [bets from Part 2] |

## Relationship Between Products
[From Part 7 — how the products relate]

## Cross-Product Tensions
[From Part 7 — biggest cross-product tension]

## Unstated Priority
[From Part 7 — "if you had to pick one" answer. Surface it explicitly here.]

## Shared Initiatives or Bets
[From Part 7 — any bets that span both products. If none: "None identified at setup — revisit quarterly."]

## PM Time Allocation
[From Part 4 — time split. State it explicitly as a constraint the Portfolio-Strategist should use.]
```

---

### File: R-Relationships/Me/PM-Profile.md (shared, one file)

Use the same structure as File 6 in the single-product flow. Add a section:

```
## Multi-Product Context
- Time split: [from Part 4]
- Products owned: [list]
- Relationship between products: [from Part 4]
```

---

After generating all files:

1. List any fields marked "[Missing — add manually]" per product and for the shared layer.
2. Flag if any product-specific stakeholders were NOT marked cross-product but appear to interact with both products — ask the PM to confirm.

**If `team_mode: lead` (Question 2 answer was "Team lead"):**
Also run the **Lead Mode — The Org Layer** section near the end of this file, and generate `R-Relationships/Team/Roster.md` from Part 8 of the worksheet, using the same structure as in the Single-Product flow above.

In multi-product mode, `shared/Constraints.md`, `shared/Stakeholders.md` and `shared/Portfolio-Roadmap.md` are already generated by Step 2 above. Do not generate them twice — the Lead Mode section adds only `Vision.md`, `Strategy.md`, `OKRs.md` and `Strategic-Bets.md` on top of them.

3. Update `Settings.md`:
   - Set `product_mode: multi`
   - Set the `products:` list using the folder names generated above (lowercased, hyphenated product names matching the subfolder names). For example:
     ```
     products:
       - patient-prep
       - dashboard
     ```
   - Set `team_mode:` from Question 2 — `solo` ("Solo PM"), `individual` ("PM on a team"), or `lead` ("Team lead")
   - Do not change any other settings.

4. Write:
   > "Settings.md updated — product_mode: multi with [N] products, team_mode: [value]. Run Structural-Integrity-Auditor on each product's S-Strategy folder before moving to Day 2 of your Half-Sprint. Start with whichever product you will focus on first."

---

## Lead Mode — The Org Layer (only if `team_mode: lead`)

Run this **in addition to** the product flow above, in both single and multi-product mode.

These six files are the org layer. Every PM instance running `team_mode: individual` reads them from `../vp/shared/` at the start of every session, before any local file. They are the reason org context compounds instead of being pasted into prompts by hand.

Generate all six. In multi-product mode, `Portfolio-Roadmap.md` and `Constraints.md` already exist from the Multi-Product flow — keep those and add the other four.

---

### shared/Vision.md

```
# Vision (Org)

## What we do in one sentence
[From Part 1, at company altitude — not one product]

## Vision
[Synthesize from Part 1 and Part 2. Where the company is going and why.]

## What we will NOT do
[From the "explicitly not doing" answer in Part 2, at org level]
```

---

### shared/Strategy.md

```
# Strategy (Org)

## Where we play
[From Part 1 — markets, segments, product lines]

## How we win
[From Part 2 — the basis of advantage. If the worksheet does not state one,
write "[Missing — add manually]" and say so. Do not invent a basis of advantage.]

## What we are betting against
[The assumption the strategy depends on, from Part 2. Mark as inferred if inferred.]
```

---

### shared/OKRs.md

```
# OKRs (Org)

## Period
[From Part 2, or "[Missing — add manually]"]

## Objective 1 — [from the bets and metrics in Part 2]
- KR1: [from the north star metric and its 6-month target]
- KR2: [from a supporting metric]
- KR3: [from a bet success signal]

## Objective 2 — ...

## North star metric
- Name: [from Part 2]
- Current: [from Part 2, or "Not provided"]
- Target: [from Part 2, or "Not provided"]
```

The Setup Worksheet collects metrics and bets, not formal OKRs. This file is therefore a **draft assembled from adjacent answers**. Say so explicitly in your output, and tell the lead to run `OKR-Partner` on it before the team reads it. Do not invent key results with numbers the worksheet does not contain — an invented org OKR is worse than a blank one, because the whole team plans against it.

---

### shared/Strategic-Bets.md

```
# Strategic Bets (Org, max 3)

## Bet 1 — [name derived from the bet description in Part 2]
- Why this matters: [synthesize from the worksheet]
- Who it serves: [segment or persona]
- What success looks like: [from the bet success signal]
- Which products carry it: [from Part 1 / Part 7, or "[Missing — add manually]"]
- Time horizon: 6 months

## Bet 2 — ...

## Bet 3 — ...
```

Org bets are what each PM's product bets ladder up to. If a bet as written could not fail, it is an objective wearing a bet's clothes — flag it, because the PMs will copy whatever shape they see here.

---

### shared/Portfolio-Roadmap.md

Multi-product mode: already generated in Step 2 of the Multi-Product flow. Leave it.

Single-product mode: generate a short version from Part 7 if answered, otherwise:

```
# Portfolio Roadmap (Org)

## Products
| Product | Stage | Owner | North Star Metric | Key Bets |
|---|---|---|---|---|
| [from Part 1] | [from Part 2] | [Missing — add manually] | [from Part 2] | [from Part 2] |

## Notes
Single product at setup. Revisit when a second product or a second PM is added.
```

Key this table by **product**, never by PM name. The `Owner` column is what absorbs people changing products or leaving — see verve-pm.com/ai-shipr-resources/team-rollout/

---

### shared/Constraints.md

Multi-product mode: already generated in Step 2. Leave it.

Single-product mode: generate from Part 3, at org altitude:

```
# Constraints (Org)

## Capacity
[From Part 3 and Part 8 — headcount, budget, engineering capacity]

## External
[From Part 3 — market, regulation, platform and integration reality]

## Internal
[From Part 3 — tech debt, org politics, team gaps]
```

---

After generating the org layer:

1. List every field marked `[Missing — add manually]` and say what is needed. A blank org file is safer than a plausible invented one, because the invented one gets trusted by the whole team.
2. Remind the lead that `shared/` has exactly one writer: them. PMs read it and never edit it.
3. Write:

> "Org layer generated in `shared/` — six files. Run `OKR-Partner` on `shared/OKRs.md` before the team reads it, then publish the layer to wherever your team reads it from (see verve-pm.com/ai-shipr-resources/team-collab/). Your PMs should not install until this is done — see verve-pm.com/ai-shipr-resources/team-rollout/ for the sequence."

---

> Part of the **AI-SHIPR** product management system
> Built by **Yaniv Yaakubovich**
> Product Management & AI Consulting: www.verve-pm.com
