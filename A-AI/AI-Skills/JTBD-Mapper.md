# Skill: JTBD Mapper

## Purpose

Produce a structured Jobs-to-be-Done analysis from customer research.
Identifies the core job customers hire the product to do, the functional, emotional, and social dimensions of that job, what alternatives they use today, and where those alternatives fall short.

Output is a paste-ready JTBD file for `S-Strategy/JTBD.md` — the strategic document that grounds Vision, Bets, and Positioning in real customer need.

---

## When to Use

- Before writing or updating `S-Strategy/Vision.md`
- Before defining Strategic Bets — you need to know what job you're playing in
- When entering a new market or customer segment
- When the team disagrees on who the customer is or what problem they're solving
- When positioning feels weak or generic ("we help teams collaborate better")
- After running `Research-Synthesizer` on customer interview notes

---

## Behavior Rules

- The job statement must be solution-agnostic. "Use a project management tool" is not a job. "Coordinate work across a team without things falling through the cracks" is.
- The job executor is not always the buyer. Identify who actually performs the job, not who signs the contract.
- Competing alternatives include analog solutions (spreadsheets, email, meetings) — not just named competitors.
- Unmet needs are phrased as outcomes, not features. "Get status updates without asking for them" is an unmet need. "Notifications" is a feature.
- Flag if research input is thin. A JTBD analysis built on fewer than 5 customer conversations should be marked low confidence.

---

## Input Expectations

Provide one of:

- `Research-Synthesizer` output (structured signals from customer interviews)
- Raw interview notes or quotes from `I-Information/Resources/`
- A description of the product and its users (lower confidence — flag it)

Optional:
- Existing `R-Relationships/Users/Personas/` files
- Current `S-Strategy/Vision.md` to check for alignment or contradiction

---

## Output Structure

### Job Statement
```
[Action Verb] + [Object of Action] + [Context]
```
Example: "Coordinate cross-functional work without losing track of who owns what and when it is due"

### JTBD File (paste-ready for `S-Strategy/JTBD.md`)

```
# JTBD — [Product / Feature / Area Name]

## Core Job Statement
[Action Verb] + [Object of Action] + [Context]

## Job Executor
[Who actually performs this job — role, context, not just user persona name]

## Job Context
[When is this job triggered? What situation causes someone to need to do it?]

## Job Dimensions

### Functional
[The practical task they are accomplishing]

### Emotional
[How they want to feel while doing it / after doing it]

### Social
[How they want to be perceived by others as a result]

## Competing Alternatives
What customers use today to get this job done — before or instead of your product:
1. [Alternative] — [Why it falls short / where it fails the job]
2. [Alternative] — [Why it falls short]
3. [Alternative if relevant] — [Why it falls short]

## Top Unmet Needs
Needs that current alternatives consistently fail to satisfy.
Phrased as outcomes, not features:
1. [Unmet need]
2. [Unmet need]
3. [Unmet need]

## Positioning Signal
One sentence: what makes your product uniquely suited to this job vs. alternatives.
[Fill after completing the full analysis]

## Confidence Level
High / Medium / Low — based on depth of research input

## Source Research
[Reference to interview notes or Research-Synthesizer output used]

## Last Updated
[YYYY-MM-DD]
```

### Alignment Flags

- Vision alignment: [Aligned / Misaligned / Not yet written — describe gap if misaligned]
- Strategic Bets alignment: [At least one bet addresses this job / No bet covers this job]
- Research confidence: [High (5+ interviews) / Medium (2–4) / Low (under 2 — flag)]

---

## Skill Chain

Runs after:
- `Research-Synthesizer` — structured signals from raw interview notes

Output feeds into:
- `Opportunity-Tree` — the job statement becomes the anchor for the opportunity map
- `S-Strategy/Vision.md` — the job should inform or validate the product vision
- `OKR-Partner` — unmet needs inform where to set ambitious targets

---

> Part of the **AI-SHIPR** product management system
> Built by **Yaniv Yaakubovich**
> Product Management & AI Consulting: www.verve-pm.com
