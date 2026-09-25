---
name: sunset-review
description: Decide whether a live product or feature should keep running. Compares what the roadmap says against where the team's time actually went, asks whether a new PM would choose to work on it, and ends on a keep-condition with a check date.
user-invocable: false
---

# Skill: Sunset Review

## Purpose
Every other decision skill in this system helps decide what to build. This one decides what to stop.
The cost of keeping software alive keeps falling, so products rarely get killed by pain any more. They just stay, and they keep taking attention, support and the next version that nobody starts.
This skill turns "we should probably look at that someday" into one of three outcomes: keep, keep on a written condition with a date, or sunset.

## When to Use
- Quarterly, on every product or feature you own that has no active initiative behind it
- When a feature keeps showing up in support or maintenance work but never on the roadmap
- When the roadmap and the team's calendar disagree about what matters
- Before `Plan` or `Priority-Stack`, so the stack being ranked does not include things nobody chose to keep
- When a Monitoring-stage initiative has passed its measurement window and nobody has moved it

## Behavior Rules
- One product or feature per run. A portfolio sweep is several runs, not one blended answer.
- **Evidence before opinion.** Column B (where the time actually went) needs real numbers from the last full quarter: team hours, tickets, incidents, and AI/token spend if the team tracks it. If the PM has no numbers, stop and say what to pull. Do not estimate on their behalf.
- **Mismatch is a finding, not a verdict.** If the roadmap and the time spent disagree, report that the organisation may have already decided and nobody said it. Do not jump from mismatch to sunset.
- **The new-PM question is asked without history.** Strip out sunk cost, past promises and who built it. If the PM answers with history ("we promised X two years ago"), name it as history and ask again.
- **A "no" does not mean sunset.** It triggers the keep-condition step first.
- **The keep-condition must be observable:** a number, a named customer, a usage threshold. "If it becomes strategic again" is not a condition. Flag and rewrite.
- **Every keep-condition carries a check date.** No date, no decision. This is the core rule of the skill.
- **Name the real cost of stopping,** not only the cost of keeping. Users who depend on it, migration work, contractual commitments, and what the team loses when the thing it built together goes away.
- **Do not invent customers, usage numbers or contracts.** Everything named must come from the PM or a file in this system.
- **Keeping it and keeping it here are two different choices.** If the product has paying users but no strategic fit, handing it to another team, open-sourcing it or selling it are valid outcomes and must be considered before sunset.
- **End on the decision and the date.** Do not close with offers to do more work. Filing the outcome is the only follow-up.

## Input Expectations
Provide:
- The product or feature, and who owns it
- What the roadmap (or strategy files) currently say about it: invested in, maintained, or not mentioned
- Last full quarter's actual effort on it: team hours or share of sprint capacity, support tickets, incidents, and token or AI spend if tracked

Optional:
- Usage trend (active users, revenue, retention) for the same quarter
- Customers or contracts that depend on it
- Anything already promised about it, and to whom

## Output Structure

### Sunset Review: [Product / Feature]

**Owner:** [name] · **Review date:** [YYYY-MM-DD] · **Period reviewed:** [quarter]

---

#### 1. Two Columns

| A. What the roadmap says | B. Where the time actually went |
|---|---|
| [Invested in / Maintained / Not mentioned, with source file] | [hours or % of capacity, tickets, incidents, token spend] |

**Match?** Yes / No
**If no:** [One sentence. Either the organisation has already moved away from this and nobody said it (B is far below A), or it is eating capacity nobody planned (B is far above A).]

---

#### 2. The New-PM Question
> If a new PM took this over tomorrow, with none of our history and none of the promises made about it, would they choose to work on it?

**Answer:** Yes / No / Only if [...]
**History removed from the answer:** [sunk cost, past promises, authorship. List what was stripped out, or "none raised".]

---

#### 3. Keep-Condition (required if the answer is No or Only if)
> This stays if **[observable condition: number, customer, usage threshold]** by **[YYYY-MM-DD]**.

**Who checks:** [name]
**Where the data comes from:** [metric definition in `P-Proof/` or the source]

---

#### 4. Cost of Stopping
- **Users affected:** [who, how many, from input only]
- **Migration or replacement:** [what they move to, or "none exists" as a flag]
- **Commitments:** [contracts, public promises]
- **What the team loses:** [shared ownership, domain knowledge, the one thing they build together]

---

#### 5. Outcome
**One of:** Keep · Keep on condition (see section 3) · Hand off / sell / open-source · Sunset

**Reason:** [two sentences maximum, citing sections 1 to 4]

**If Sunset:** internal name for the decision vs the public wording. Write both down, and flag it if they are far apart.

---

#### Actions Required
- [ ] Add the decision, alternatives and reason to `Decision-Log.md`
- [ ] If the product is an initiative: set its Status (`Paused` for a keep-condition, `Completed` for a sunset) and put the keep-condition and date in **Decision Needed**
- [ ] Put the check date on the calendar of the person named in section 3
- [ ] If Sunset: run `Narrative-Refiner` for the user and stakeholder announcement, and `Cross-Team-Mapper` for dependent teams

---

## Where This Comes From
The core question adapts Andy Grove's 1985 "revolving door" question to Gordon Moore at Intel (*Only the Paranoid Survive*, 1996): if the board brought in a new CEO, what would they do? In 1985 it bit because keeping a product alive cost factories. In 2026 a mature software product costs almost nothing to keep running, so the question moves from "would a new CEO keep this product?" to "would a new PM choose to work on it?". The two-column check comes from the other half of the Intel story: production planners had already been shifting capacity away from memory month by month, before anyone announced the decision.

> Part of the **AI-SHIPR** product management system
> Built by **Yaniv Yaakubovich**
> Product Management & AI Consulting: www.verve-pm.com
