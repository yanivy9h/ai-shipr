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
- "Individual PM" → `team_mode: solo`
- "Team lead" → `team_mode: lead` → also generate Team files (see end of each flow)

Note: `team_mode` and `product_mode` are independent. An individual PM can manage multiple products. A team lead can manage a single product. Set each based only on the answer to its own question.

Do not invent information the PM did not provide. If a field cannot be filled from the worksheet, write "[Missing — add manually]" and explain what is needed.

Generate each file in full, clearly separated by headers. Format each file as it would appear in Obsidian markdown.

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
- Where they show up: [from Part 6]

## Persona 2 — [Name or role label]
[Repeat structure if secondary segment provided. If not: write "Not provided — add when identified."]
```

---

### File 8: R-Relationships/Stakeholders/Stakeholders.md

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

After generating all 8 files, list any fields marked "[Missing — add manually]" and explain briefly what the PM needs to add.

**If `team_mode: lead` (Question 2 answer was "Team lead"):**
Also generate the following file from Part 8 of the worksheet:

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
- Set `team_mode: solo` (or `team_mode: lead` if Question 2 answer was "Team lead")
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
Also generate `R-Relationships/Team/Roster.md` from Part 8 of the worksheet, using the same structure as in the Single-Product flow above.

3. Update `Settings.md`:
   - Set `product_mode: multi`
   - Set the `products:` list using the folder names generated above (lowercased, hyphenated product names matching the subfolder names). For example:
     ```
     products:
       - patient-prep
       - dashboard
     ```
   - Set `team_mode: solo` (or `team_mode: lead` if Question 2 answer was "Team lead")
   - Do not change any other settings.

4. Write:
   > "Settings.md updated — product_mode: multi with [N] products, team_mode: [value]. Run Structural-Integrity-Auditor on each product's S-Strategy folder before moving to Day 2 of your Half-Sprint. Start with whichever product you will focus on first."

---

> Part of the **AI-SHIPR** product management system
> Built by **Yaniv Yaakubovich**
> Product Management & AI Consulting: www.verve-pm.com
