# Playbook: When Presenting to the Board

**Paste this into Claude Code 2-3 days before a board, exec, or investor product update.**
Use it instead of assembling a status deck from scratch.

This playbook translates the system state into an executive narrative — one that answers the questions the board actually has.

---

## Instructions to Claude

Read the following files before responding:
- `Settings.md`

**If `product_mode: multi` in Settings.md:**
This is a portfolio-level update. Read across all products:
- `shared/Portfolio-Roadmap.md` — for cross-product overview and tensions
- For each product listed under `products:` in Settings.md:
  - `[product]/S-Strategy/Strategic-Bets.md`
  - `[product]/S-Strategy/KPIs.md`
  - All files in `[product]/I-Initiatives/`
- Open the board update with a portfolio-level headline, then provide per-product detail.
- Write output to `shared/P-Proof/BoardUpdate-[date].md` (or `[product-name]/P-Proof/BoardUpdate-[date].md` if single-product focus).

- `S-Strategy/Strategic-Bets.md` (single mode) or per-product paths above (multi mode)
- `S-Strategy/KPIs.md` (single mode) or per-product paths above (multi mode)
- All files in `I-Initiatives/` (single mode) or per-product paths above (multi mode)
- `R-Relationships/Team/Roster.md`
- `R-Relationships/Stakeholders/Stakeholders.md`
- `Learning.md`
- `A-AI/AI-Skills/Board-Update-Builder.md`
- `A-AI/AI-Agents/Portfolio-Strategist.md`

Then:

**Step 1 — Run Portfolio-Strategist (Mode 3: Exec Portfolio Update)**
Get a structured read on portfolio state from an executive lens:
- Which bets are executing, which are not
- Team health and capacity
- Risks with mitigations

**Step 2 — Run Board-Update-Builder**
Using the context below, generate the full board update:
- The one thing
- Bet progress with signals
- What shipped and what it means
- What was learned (only if it changed something)
- Risks — named, not hidden
- Decisions needed from leadership — explicit ask, not implied
- Next period focus

**Step 3 — Pressure Test**
Before finalizing, run these checks:
- Does every section answer "so what?" — if not, cut or sharpen it
- Are risks named with mitigation or ask? If hidden, surface them
- Is the "decisions needed" section specific enough that leadership can actually decide?
- Would a board member who missed the last 3 updates understand this in 2 minutes?

**Step 4 — Write**
Ask: "Do you want me to save this board update?"
If yes: write to `P-Proof/BoardUpdate-[date].md`

---

## Presentation Context

- Audience: [Board / Exec team / Investors / All-hands]
- Date: [Date]
- Time slot: [How long is the product segment — 10 min / 20 min / 30 min]
- Period being reviewed: [Quarter / Month]
- Topics leadership has flagged as important: [Any pre-read, pre-questions, or known concerns]
- Sensitive context: [Org changes, misses, competitive moves, anything that needs careful framing]
- Decisions I need from them: [Specific — if none, say so]

---

> Part of the **AI-SHIPR** product management system
> Built by **Yaniv Yaakubovich**
> Product Management & AI Consulting: www.verve-pm.com
