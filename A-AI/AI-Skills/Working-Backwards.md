---
name: working-backwards
description: Break a raw idea using Amazon's Working Backwards method. Produces press release, FAQ, customer experience, and user manual, then extracts the claims that have to be true.
user-invocable: false
---

# Skill: Working Backwards

## Purpose
Take a raw product idea and break it down by writing the launch first: a customer-facing press release, an FAQ, a customer experience walkthrough, and a user manual.
The output is not marketing copy. It is a clarity test: an idea that cannot be written as a press release a customer would care about is not ready to build.

Method source: Amazon's Working Backwards process, as described by Werner Vogels (2006).
https://www.allthingsdistributed.com/2006/11/working_backwards.html

## When to Use
- A new product or feature idea arrives and nobody can state the customer benefit in one sentence
- Before writing a PRD, when the initiative is still a solution looking for a problem
- When a team is arguing about implementation before agreeing on what the customer gets
- Before committing a quarter of engineering to a bet that has never been described from the outside in
- When an existing initiative has drifted and you need to test whether the original customer promise still holds

## Behavior Rules
- Write the press release in the present tense, as if the product shipped today. Never in future or roadmap tense ("will enable", "is designed to").
- The press release is customer-facing language only. No internal jargon, no team names, no technology choices, no metrics dashboards. Technology appears in the FAQ and the customer experience section, never in the press release.
- Hard limit: one page for the press release. If the benefit needs more than a page to explain, say so explicitly. That is the finding, not a formatting problem.
- Every quantified claim in the press release ("cuts setup from 3 days to 10 minutes") is an assumption, not a fact. Collect them all in the Claims That Must Be True section and hand them to Assumption-Extractor.
- The FAQ must carry the uncomfortable questions: what could kill this, what is not known, what it costs, who loses if it ships, why now and not last year. An FAQ that only answers friendly questions is a brochure. Include at least three questions the team would rather not answer.
- Use persona names from `R-Relationships/Users/Personas.md` for the customer quote. Never invent a named company, customer, or executive. If no persona file exists, write the quote against a described segment and flag that it is unattributed.
- The customer experience section describes what the user does and sees, step by step. No feature lists. If a step cannot be described concretely, mark it `[unresolved]` rather than smoothing over it.
- Do not soften a weak idea into a good press release. If the benefit is thin, write the honest version and put the verdict in Structural Flags.
- Link the idea to a Strategic Bet from `S-Strategy/Strategic-Bets.md`. If it links to none, flag it before producing the artifacts.

## Input Expectations
Required:
- The raw idea. One paragraph is enough. Unstructured thinking is the expected input.

Optional but strongly recommended:
- `S-Strategy/Strategic-Bets.md` for bet linkage
- `S-Strategy/Vision.md` for scope boundaries
- `R-Relationships/Users/Personas.md` for the customer segment and the quote
- Where the idea came from: customer conversation, data, stakeholder request, or intuition
- Any constraint already known: deadline, platform, budget, dependency

**Multi-product note:** If `product_mode: multi` in Settings.md, use `[product-name]/` as the path prefix for all file reads and writes above.

## Output Structure

### 0. Bet Linkage
- Strategic Bet: [Bet # and name, or "none identified"]
- Why now: [What changed that makes this the right moment, or "no answer yet"]

---

### 1. Press Release

**Headline**
[One line. The customer benefit, in the customer's words. Not the feature name.]

**Sub-heading**
[One line. Who it is for and what they can now do.]

**Summary paragraph**
[3-4 sentences. What launched, for whom, and the single benefit. Written for someone who reads nothing else.]

**The problem**
[The customer's problem today, and what it costs them. Concrete, not abstract.]

**The solution**
[How the product solves it, described from the outside. What the customer experiences, not how it is built.]

**Quote from us**
> [Why we built this. States the belief behind the product, not the feature list.]
> - [Role, e.g. "Head of Product". Do not invent a person's name.]

**How to get started**
[The first thing a customer does. One or two sentences.]

**Customer quote**
> [The benefit in the customer's own voice. Specific enough to be falsifiable.]
> - [Persona name from Personas.md, or a described segment if none exists]

**Closing and call to action**
[Where to go next.]

---

### 2. FAQ

**Customer questions**

| Question | Answer |
|---|---|
| [What a real user would ask before trying it] | [Direct answer] |

**Internal questions**

| Question | Answer | Confidence |
|---|---|---|
| Why would this fail? | [...] | [Grounded in a file or a finding, or "unknown"] |
| What do we not know yet? | [...] | [...] |
| What does this cost us to build and to run? | [...] | [...] |
| Who inside the company loses if this ships? | [...] | [...] |
| Why now and not a year ago? | [...] | [...] |

At least three of the internal questions must be ones the team would rather skip.

---

### 3. Customer Experience

Step-by-step, from the customer's first contact to the moment they get the benefit.

| Step | What the customer does | What they see | What has to work behind it |
|---|---|---|---|
| 1 | [...] | [...] | [...] |

Mark any step that cannot be described concretely as `[unresolved]`. Unresolved steps are where the real design work is.

---

### 4. User Manual (outline)

**Concepts** - what the customer has to understand before using this. If the list runs past three, the product is too complex.
- [Concept 1]

**How to** - the tasks the customer performs.
- [Task 1]

**Reference** - the details they look up later: limits, settings, errors, permissions.
- [Item 1]

---

### 5. Claims That Must Be True

Every claim the press release makes, pulled out and rated. This is the handoff to Assumption-Extractor.

| Claim | Type | Killing claim? | How we would test it |
|---|---|---|---|
| [Quote the claim from the PR] | Customer / Business / Technical | Yes / No | [Cheapest test that would prove it wrong] |

A "killing claim" is one that, if false, ends the initiative.

---

### 6. Structural Flags

- [Flag: no Strategic Bet linkage]
- [Flag: benefit could not be stated in one page]
- [Flag: press release describes a feature, not a customer outcome]
- [Flag: no persona exists for the customer in the quote]
- [Flag: every internal FAQ answer is "unknown" - this is an idea, not an initiative]
- [Flag: customer experience has [unresolved] steps at the core of the benefit]

(Omit this section if there are no flags.)

---

### 7. Verdict

One of three, stated plainly:
- **Ready to frame** - the customer benefit is clear. Next: Problem-Framer, then Assumption-Extractor on the claims above.
- **Needs discovery** - the benefit is plausible but unevidenced. Next: the discovery chain, starting with the killing claims.
- **Not ready** - the press release could not be written honestly. Say which part failed and what would have to be learned first.

---

## Filing

Offer to write the output to `I-Initiatives/PRFAQ-[idea-name].md`.
If the verdict is "Ready to frame", also offer to create the initiative file at Stage: `Defined`.

## Chains Into
```
Working-Backwards → Assumption-Extractor → Hypothesis-Builder → Experiment-Designer
Working-Backwards → Problem-Framer → PRD-Builder
```

---

> Part of the **AI-SHIPR** product management system
> Built by **Yaniv Yaakubovich**
> Product Management & AI Consulting: www.verve-pm.com
