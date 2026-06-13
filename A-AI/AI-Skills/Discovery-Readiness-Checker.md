# Skill: Discovery Readiness Checker

## Purpose
Validate that discovery is complete before moving to the definition stage.
Discovery is not done when time runs out. It is done when the right questions have been answered.
This skill reads current system state and produces a readiness score — with an explicit list of what is still blocking the move to definition.

## When to Use
- At the end of every discovery sprint
- When the PM or team is debating whether to move to definition
- Before running `PRD-Builder` — this is the gate
- When stakeholders are pushing to "just start building"
- When you feel ready but can't articulate why

## Behavior Rules
- Score each category independently — a high total score with one failing category is still a block
- Never produce a green signal when a strategic bet has no hypothesis
- Never produce a green signal when all personas are still hypothetical and no interviews have been run
- Flag the specific file or gap — not just the category
- A readiness score is not a permission slip — the PM decides whether to move. This skill makes the decision explicit.
- If the score is low but the team is moving anyway, flag the specific risks being accepted

## Input Expectations

Read `Settings.md` first.

**If `product_mode: multi`:**
Ask which product this discovery check covers before reading any files. Use `[product-name]/` as the path prefix for all S-Strategy, H-Hypotheses, and P-Proof reads below.

Read the following files before running:
- `S-Strategy/Vision.md` (or `[product-name]/S-Strategy/Vision.md` in multi mode)
- `S-Strategy/Product.md` (or `[product-name]/S-Strategy/Product.md` in multi mode)
- `S-Strategy/Strategic-Bets.md` (or `[product-name]/S-Strategy/Strategic-Bets.md` in multi mode)
- `S-Strategy/KPIs.md` (or `[product-name]/S-Strategy/KPIs.md` in multi mode)
- `R-Relationships/Users/Personas.md` (or `[product-name]/R-Relationships/Users/Personas.md` in multi mode)
- `R-Relationships/Stakeholders/Stakeholders.md`
- All files in `H-Hypotheses/` (or `[product-name]/H-Hypotheses/` in multi mode)
- All files in `P-Proof/` (or `[product-name]/P-Proof/` in multi mode)
- `Learning.md` (what has been learned this discovery phase)

## Output Structure

### Discovery Readiness Score

**Overall:** [X / 100] — [Not Ready / Partially Ready / Ready to Proceed]

| Category | Score | Status |
|----------|-------|--------|
| Problem Definition | [X/20] | Ready / Partial / Blocked |
| User Understanding | [X/20] | Ready / Partial / Blocked |
| Strategic Bets & Hypotheses | [X/20] | Ready / Partial / Blocked |
| Competitive Context | [X/20] | Ready / Partial / Blocked |
| Experiment Coverage | [X/20] | Ready / Partial / Blocked |

---

### Category Breakdown

**1. Problem Definition (X/20)**
Checks: `S-Strategy/Vision.md`, `S-Strategy/Product.md`

- [ ] Target user is named and specific (not "SMBs" but a specific role and context)
- [ ] Core problem is stated in behavioral terms (what the user cannot do today, not what you want to build)
- [ ] Desired outcome is measurable (specific result the user achieves, not an emotion)
- [ ] Explicit out-of-scope defined (what this product will NOT do)

Gaps: [List specific missing elements]

---

**2. User Understanding (X/20)**
Checks: `R-Relationships/Users/Personas.md`, interview notes

- [ ] At least one persona exists and is not template-only
- [ ] Persona is based on at least 3 real customer conversations (not hypothetical)
- [ ] Job-to-be-done is named for the primary persona
- [ ] Biggest pain is stated in the user's language, not product language
- [ ] At least one user has confirmed the problem is real and active

Gaps: [List specific missing elements]

---

**3. Strategic Bets & Hypotheses (X/20)**
Checks: `S-Strategy/Strategic-Bets.md`, `H-Hypotheses/`

- [ ] At least 1 and no more than 3 strategic bets are defined
- [ ] Every bet has an explicit success signal
- [ ] Every bet has at least one hypothesis in `H-Hypotheses/`
- [ ] No hypothesis is still in template state
- [ ] At least one hypothesis has been tested (any status other than "Not started")

Gaps: [List specific missing elements, including which bets have no hypothesis]

---

**4. Competitive Context (X/20)**
Checks: `S-Strategy/Product.md`, `Competitive-Landscape-Mapper` output if available

- [ ] At least 2 real alternatives have been named (including "doing nothing")
- [ ] A differentiation claim exists — what your product does that alternatives don't
- [ ] The positioning gap has been validated (not just assumed)
- [ ] Switching cost has been considered

Gaps: [List specific missing elements]

---

**5. Experiment Coverage (X/20)**
Checks: `P-Proof/`, `H-Hypotheses/`

- [ ] The riskiest assumption across all bets has been identified
- [ ] At least one experiment has been run or is in progress
- [ ] Experiment has defined pass/fail criteria (not "we'll see")
- [ ] At least one assumption has been confirmed or invalidated (not all still open)

Gaps: [List specific missing elements]

---

### Blocking Items

Items that must be resolved before moving to definition — regardless of overall score:

1. [Blocking item] — file: [which file] — action: [what to do]
2. [Blocking item] — file: [which file] — action: [what to do]

*(If no blockers: "No hard blockers. See gaps above for recommended improvements before proceeding.")*

---

### Risks Being Accepted (if moving despite gaps)

If the PM decides to proceed with a score below 80 or with any Blocked category:

| Gap | Risk Being Accepted |
|-----|-------------------|
| [Gap] | [What could go wrong if this is not resolved] |

---

### Recommended Next Step

- **Score 80–100, no blockers:** Move to definition. Run `PRD-Builder` on your highest-confidence bet.
- **Score 60–79:** Run one more targeted discovery sprint focused on the lowest-scoring category.
- **Score below 60:** Discovery is not complete. Return to `When-Building-a-New-Product.md` playbook and restart from the lowest-scoring category.

---

## Skill Chain

Runs after:
- Full discovery phase — `Interview-Guide-Builder` → `Interview-Synthesizer` → `Research-Synthesizer` → `Persona-Builder` → `JTBD-Mapper` → `Opportunity-Tree` → `Assumption-Extractor` → `Hypothesis-Builder` → `Experiment-Designer`

Output feeds into:
- Decision to move to `definition` stage (update `product_stage` in `Settings.md`)
- `PRD-Builder` — only after this checker gives a green or accepted signal
- `Learning.md` — document what was and was not resolved before moving forward

---

> Part of the **AI-SHIPR** product management system
> Built by **Yaniv Yaakubovich**
> Product Management & AI Consulting: www.verve-pm.com
