---
name: board-update-builder
description: Generate a structured product update for exec, board, or investor audiences.
user-invocable: false
---

# Skill: Board Update Builder

## Purpose
Generate a structured product update for exec, board, or investor audiences.
Translate portfolio state into a narrative that answers the questions leadership actually has — not the questions the PM team wants to answer.

## When to Use
- Monthly or quarterly board/exec product update
- All-hands or leadership sync where product state needs to be communicated
- Investor update that includes product progress
- Any situation where the audience is senior, time is short, and credibility is on the line

## Plan First

This is a major document. Before generating:

1. Check `I-Information/Templates/Plans/` for a saved plan matching this document type — if one exists, use its structure instead of the default Output Structure below, and say so.
2. If no saved plan exists and the request carries any ambiguity (audience, scope, angle), offer the `When-Writing-a-Major-Doc` playbook — or at minimum propose the structure in 5 lines and get a correction before writing.
3. For a long output, use parallel subagents per section, each writing to a temp file, then compile — never have subagents return full text directly.
4. When the document ships and the PM will write this type again, offer to promote the plan to `Templates/Plans/`.

## Behavior Rules
- Executives read signals, not status. Every section must answer: "so what?"
- Do not present what was built. Present what moved — and what it means for the bets.
- Risks must be named explicitly with a mitigation or ask. Hidden risks destroy trust faster than visible ones.
- Requests from leadership must be stated as a specific ask, not implied.
- Length: 1 page equivalent. If it can't be said in 5 bullets per section, the thinking isn't clear enough yet.

## What It Reads

Read `Settings.md` first.

**If `product_mode: single` (or not set):**
- `S-Strategy/Strategic-Bets.md`
- `S-Strategy/KPIs.md`
- All files in `I-Initiatives/`

**If `product_mode: multi`:**
Ask: "Is this update for one product or the full portfolio?" Then:
- `shared/Portfolio-Roadmap.md` — for cross-product overview and PM time allocation
- For each relevant product (or all products if portfolio-level update):
  - `[product]/S-Strategy/Strategic-Bets.md`
  - `[product]/S-Strategy/KPIs.md`
  - All files in `[product]/I-Initiatives/`
- Label all output sections by product. Open with a portfolio-level headline before per-product detail.

Always read (both modes):
- `R-Relationships/Stakeholders/Stakeholders.md` (for audience context)
- `R-Relationships/Team/Roster.md` (for team state context, if populated)
- `Learning.md` (for any signals worth surfacing)

## Input Expectations
Provide:
- Audience: board / exec team / investors / all-hands
- Period: [month / quarter]
- Any specific topics leadership has flagged as important
- Any sensitive context to be aware of (org changes, misses, competitive moves)

## Output Structure

### Product Update — [Period]

**Audience:** [Board / Exec / Investors / All-hands]
**Prepared by:** [Lead name]

---

#### The One Thing

> [One sentence — the single most important thing to know about product this period]

---

#### Bet Progress

| Bet | Signal | Trend | What It Means |
|-----|--------|-------|---------------|
| [Bet] | [Key metric or milestone] | Up / Flat / Down | [So what — 1 sentence] |

---

#### What Shipped

3-5 bullets maximum. Format: [What] — [Who it serves] — [Signal it produced or is expected to produce]

---

#### What We Learned

2-3 bullets. Format: [What we believed] → [What the data showed] → [What we're doing differently]

Do not include learnings that did not change anything. A learning with no action is just an observation.

---

#### Risks

| Risk | Likelihood | Impact | Mitigation |
|------|-----------|--------|-----------|
| [Risk] | High / Medium | High / Medium | [What is being done / what is needed] |

---

#### Decisions Needed from Leadership

Be explicit. Each item must include: situation, options considered, recommendation, and specific ask.

- **[Topic]:** [Situation] — Recommendation: [specific] — Ask: [decision needed by when]

If no decisions are needed: state "No decisions required this period."

---

#### Next Period Focus

3 bullets. What the team will be heads-down on and why.

---

> Part of the **AI-SHIPR** product management system
> Built by **Yaniv Yaakubovich**
> Product Management & AI Consulting: www.verve-pm.com
