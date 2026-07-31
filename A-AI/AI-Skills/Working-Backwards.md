---
name: working-backwards
description: Break a raw idea using Amazon's Working Backwards method. Routes to prototype-first or write-first, then produces press release, FAQ, customer experience, and user manual, and extracts the claims that have to be true.
user-invocable: false
---

# Skill: Working Backwards

## Purpose
Take a raw product idea and break it down by writing the launch first: a customer-facing press release, an FAQ, a customer experience walkthrough, and a user manual.
The output is not marketing copy. It is a clarity test: an idea that cannot be written as a press release a customer would care about is not ready to build.

Method source: Amazon's Working Backwards process, as described by Werner Vogels (2006).
https://www.allthingsdistributed.com/2006/11/working_backwards.html

**2026 amendment.** Vogels revised the sequence once coding agents made prototypes nearly free: when there is conviction about the customer problem but genuine uncertainty about whether the approach works, build first, use it as a customer would, and only then write. "You will learn more in one evening of building than in two weeks of writing about what you think will happen." The writing does not go away and it stays yours. It just comes second, grounded in something real.
https://www.allthingsdistributed.com/2026/06/return-to-two-pizza-culture.html

## When to Use
- A new product or feature idea arrives and nobody can state the customer benefit in one sentence
- Before writing a PRD, when the initiative is still a solution looking for a problem
- When a team is arguing about implementation before agreeing on what the customer gets
- Before committing a quarter of engineering to a bet that has never been described from the outside in
- When an existing initiative has drifted and you need to test whether the original customer promise still holds
- When you are tempted to start building because building is cheap now, and you want the sequencing decided on purpose rather than by impulse

## Behavior Rules

**Routing**
- Always run the Step 0 routing gate before writing anything. Name where the uncertainty sits and say which route you took and why.
- Route to **prototype-first** when the problem is understood and the uncertainty is the approach: will this work, will it feel right, is this flow the one.
- Route to **write-first** when the uncertainty is the problem or the demand: does this matter to anyone, would they pay, is the pain real. A prototype answers how something feels. It never answers whether anyone wants it. `Experiment-Designer` already holds this line ("Smoke test before prototype if demand is the unknown"), and this skill does not break it.
- When the route is prototype-first, do not write the press release until the "What the prototype taught" section is filled. A press release written from imagination and then decorated with a prototype is the old process wearing new clothes.

**Prototype loop (prototype-first route only)**
- The prototype this skill builds is deliberately thin: one screen, fake data, single self-contained HTML file, throwaway. It exists to answer one written question. Anything heavier escalates to `Prototype-Builder`.
- Write the question the prototype answers before building. A prototype without a question is a demo.
- Label fake data as fake inside the interface. Unmarked fake data is how a prototype gets mistaken for a working product.
- Keep it visibly unfinished unless the question is specifically about look and feel. Polish moves the conversation to pixels, and the conversation you need is about the flow.
- Time-box it and say the box out loud before starting. An evening is the reference unit, not a sprint.
- After building, use it the way a customer would, then record what actually changed your mind and what did not. "It confirmed what I thought" is a legitimate and useful finding. Write it down as one.

**Writing**
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

### 0. Route

- Where the uncertainty sits: **the problem** / **the approach** / both
- Route: **prototype-first** / **write-first**
- Why: [One or two sentences. If both are uncertain, write first. You cannot prototype your way to knowing whether anyone cares.]

Prototype-first runs Section 2 before Section 3. Write-first skips Section 2 and marks it "not run, uncertainty was demand-side".

---

### 1. Bet Linkage
- Strategic Bet: [Bet # and name, or "none identified"]
- Why now: [What changed that makes this the right moment, or "no answer yet"]

---

### 2. Prototype Loop

*Prototype-first route only. Runs before the press release is written.*

**The question this answers**
[One sentence, falsifiable by using the thing. "Does the setup flow make sense without a walkthrough" is a question. "Is this good" is not.]

**Build list**
[2-5 items, the smallest set that makes the question answerable. Pulled from the parts of the idea you cannot picture.]

**Timebox:** [Hours, not days.]
**What is fake:** [Data, integrations, states. Everything faked, listed.]
**File:** `P-Proof/Prototypes/[idea-name]/index.html`

**What the prototype taught**

| What I expected | What actually happened | Changed my mind? |
|---|---|---|
| [...] | [...] | Yes / No |

- Where a real person would get stuck: [...]
- What I could not build, and what that tells me: [...]
- What I still do not know after using it: [...]

**Escalate to `Prototype-Builder`?** Yes / No.
Escalate when any of these is true: the question needs real or seeded data, more than two screens or real state, a feasibility spike, more than one round of iteration, or the prototype is going in front of actual customers. Otherwise this thin one is enough and the writing starts now.

---

### 3. Press Release

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

### 4. FAQ

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

### 5. Customer Experience

Step-by-step, from the customer's first contact to the moment they get the benefit.

| Step | What the customer does | What they see | What has to work behind it | Seen in the prototype? |
|---|---|---|---|---|
| 1 | [...] | [...] | [...] | Yes / No / n/a |

Mark any step that cannot be described concretely as `[unresolved]`. Unresolved steps are where the real design work is.

On the prototype-first route, the `[unresolved]` steps are the build list for the next prototype round. On the write-first route they stay open questions and feed `Experiment-Designer`.

---

### 6. User Manual (outline)

**Concepts** - what the customer has to understand before using this. If the list runs past three, the product is too complex.
- [Concept 1]

**How to** - the tasks the customer performs.
- [Task 1]

**Reference** - the details they look up later: limits, settings, errors, permissions.
- [Item 1]

---

### 7. Claims That Must Be True

Every claim the press release makes, pulled out and rated. This is the handoff to Assumption-Extractor.

| Claim | Type | Killing claim? | Evidence so far | How we would test it |
|---|---|---|---|---|
| [Quote the claim from the PR] | Customer / Business / Technical | Yes / No | Prototype / File / None | [Cheapest test that would prove it wrong] |

A "killing claim" is one that, if false, ends the initiative.

Evidence rules: a prototype can evidence a **feasibility** or **usability** claim only. It can never evidence a demand claim, no matter how good the demo felt. Demand claims stay "None" until an experiment says otherwise.

---

### 8. Structural Flags

- [Flag: no Strategic Bet linkage]
- [Flag: benefit could not be stated in one page]
- [Flag: press release describes a feature, not a customer outcome]
- [Flag: no persona exists for the customer in the quote]
- [Flag: every internal FAQ answer is "unknown" - this is an idea, not an initiative]
- [Flag: customer experience has [unresolved] steps at the core of the benefit]
- [Flag: prototype-first route taken, but the uncertainty was actually demand - the prototype cannot answer it]
- [Flag: the prototype changed nothing and the press release is unchanged from the pre-build version - the build was decoration]

(Omit this section if there are no flags.)

---

### 9. Verdict

One of four, stated plainly:
- **Ready to frame** - the customer benefit is clear. Next: Problem-Framer, then Assumption-Extractor on the claims above.
- **Needs a deeper prototype** - the thin build answered its question and raised a bigger one that needs real data, real state, or real users. Next: `Prototype-Builder`, with the escalation reason from Section 2.
- **Needs discovery** - the benefit is plausible but unevidenced, and no prototype will fix that because the unknown is demand. Next: the discovery chain, starting with the killing claims.
- **Not ready** - the press release could not be written honestly. Say which part failed and what would have to be learned first. A good demo does not upgrade this verdict.

---

## Filing

Offer to write the output to `I-Initiatives/PRFAQ-[idea-name].md`.
Any prototype built during Section 2 files to `P-Proof/Prototypes/[idea-name]/`.
If the verdict is "Ready to frame", also offer to create the initiative file at Stage: `Defined`.

## Chains Into
```
Working-Backwards (prototype-first) → Prototype-Builder → Working-Backwards (write the docs)
Working-Backwards → Assumption-Extractor → Hypothesis-Builder → Experiment-Designer
Working-Backwards → Problem-Framer → PRD-Builder
```

---

> Part of the **AI-SHIPR** product management system
> Built by **Yaniv Yaakubovich**
> Product Management & AI Consulting: www.verve-pm.com
