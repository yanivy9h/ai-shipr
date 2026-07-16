---
name: competitive-landscape-mapper
description: Map alternatives, positioning gap, and differentiation signal. Run before user research begins.
user-invocable: false
---

# Skill: Competitive Landscape Mapper

## Purpose
Map the alternatives your target user is already using before you commit to building anything.
Every user has a current solution — even if it is a spreadsheet, a workaround, or doing nothing.
Understanding what you are replacing is not optional. It shapes positioning, differentiation, and what "better" actually means.

## When to Use
- After Problem-Framer has produced a clear problem statement
- Before user research begins — know the landscape before you ask users about it
- Before committing to a strategic bet — validate that the opportunity is not already owned
- When stakeholders ask "why not just use X?" and you don't have a sharp answer

## Behavior Rules
- Frame competitors as jobs being done by alternatives — not as product categories
- The real competitor is whatever the user does today, including doing nothing
- Do not default to "no direct competitors" — reframe until real alternatives are named
- Rank alternatives by how many users actually use them, not by brand recognition
- Identify what each alternative does well — a differentiation claim built on ignoring competitor strengths is fragile
- Identify the switching cost — what would a user lose if they moved to your product?
- Flag if the problem is already well-solved — this is a risk, not an insult
- **No fabricated competitors.** Do not name companies, products, or alternatives that are not provided by the user, present in `S-Strategy/Product.md`, or grounded in a source the user can verify. Generic categories ("a CRM", "an in-house spreadsheet") are fine when no specific alternative is known. If the user has not provided competitors and none can be inferred from strategy files, ask before generating a list — do not fill the table from training data. Common failure mode: writing "[Company X]'s three primary competitors" when [Company X] is unrelated to the user's product.

## Input Expectations
Provide one or more of:
- Problem statement (from `Problem-Framer` output or stated directly)
- Target user description (from `Persona-Builder` or described directly)
- Known alternatives (any you are already aware of)
- Strategic bet or opportunity being evaluated (optional)

## Output Structure

### Problem Being Solved
[One sentence restatement from input — what job the target user is trying to do]

---

### Competitive Landscape

| Alternative | What job it does for the user | Why users choose it | Key weakness | Switching cost |
|-------------|-------------------------------|---------------------|--------------|----------------|
| [Name] | [Job] | [Reason] | [Weakness] | [What user gives up] |
| [Name] | [Job] | [Reason] | [Weakness] | [What user gives up] |
| [Name — "doing nothing"] | [Describes current workaround] | [Inertia / cost / awareness] | [Pain it leaves unsolved] | [Low — already the default] |

*(Always include "doing nothing / current workaround" as a row)*

---

### Positioning Gap

**What no current alternative does well:**
[One clear statement — the space that is genuinely open]

**Conditions for the gap to be real:**
- [ ] The gap is not already being filled by a less-visible alternative
- [ ] The gap matters enough for users to switch
- [ ] The gap is achievable given your constraints

**Confidence in the gap:** High / Medium / Low
[If Low or Medium: name what research would increase confidence]

---

### Differentiation Signal

**What your product must do better or differently to win:**
[Specific claim — not "easier to use" but "does X without requiring Y"]

**What your product does NOT need to match:**
[Deliberate scope exclusion — what you are willing to lose on]

---

### Risks

| Risk | Likelihood | Implication |
|------|-----------|-------------|
| A well-funded competitor enters this gap | High / Medium / Low | [What to do if true] |
| Users don't switch because switching cost > gain | High / Medium / Low | [What to do if true] |
| The gap exists because demand is too small | High / Medium / Low | [What to do if true] |

---

### Recommended Next Step
- If gap is real and differentiation is clear: proceed to `Persona-Builder` → user research
- If gap confidence is Low: run competitive interviews — ask users directly what they use and why
- If a dominant alternative already owns the space: flag this as a strategic risk before proceeding

---

## Skill Chain

Runs after:
- `Problem-Framer` — provides the problem statement

Output feeds into:
- `Persona-Builder` — competitive context shapes what to probe in interviews
- `Interview-Guide-Builder` — add competitive probes ("what do you use today?")
- `Assumption-Extractor` — competitive assumptions become testable hypotheses
- `S-Strategy/Product.md` — positioning gap informs product scope and out-of-scope decisions

---

> Part of the **AI-SHIPR** product management system
> Built by **Yaniv Yaakubovich**
> Product Management & AI Consulting: www.verve-pm.com
