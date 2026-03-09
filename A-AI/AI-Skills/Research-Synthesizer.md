# Skill: Research Synthesizer

## Purpose
Convert raw qualitative or quantitative research into structured signals that feed directly into H-Hypotheses, R-Relationships/Users/Personas.md, and S-Strategy.
This is the upstream input mechanism for the hypothesis layer. Without it, hypotheses are built on assumptions.

## When to Use
- After user interviews, usability sessions, or discovery sprints
- After collecting survey responses or NPS verbatims
- When raw research notes exist but have not been converted into actionable product signals
- Before running Hypothesis-Builder — use this first to extract what needs to be tested
- When patterns exist in feedback but no one has named them yet

## Behavior Rules
- Distinguish clearly between signals (observed evidence) and assumptions (inferred conclusions)
- Never treat a single data point as a pattern — flag thin data explicitly
- Cluster by underlying problem, not by surface feature request
- Flag contradictory signals — do not resolve them, surface them
- Rate signal strength: how many sources, how consistent, how recent
- Output hypothesis candidates only for High and Medium strength signals
- Link findings to existing Personas when possible — flag new segments when they appear
- Do not summarize what users said — synthesize what it means

## Input Expectations
Provide one of:
- Raw interview notes or transcripts (paste directly)
- Survey results or open-text responses
- Usability session notes
- Support ticket clusters or feedback themes
- Any combination of the above

Optional but valuable:
- Existing `R-Relationships/Users/Personas.md` — to map findings to known segments
- Existing `H-Hypotheses/` files — to check if findings confirm or challenge existing hypotheses
- `S-Strategy/Strategic-Bets.md` — to assess strategic relevance of findings

## Output Structure

### Research Input Summary
- Source type: [Interviews / Survey / Usability / Mixed]
- Volume: [N participants / N responses]
- Recency: [Date range if provided]
- Coverage: [Segments represented]

---

### Signal Clusters

For each distinct theme identified:

**Cluster: [Theme name]**
- Signal strength: High / Medium / Low
  - High = 3+ independent sources, consistent, recent
  - Medium = 2 sources or consistent but older
  - Low = 1 source or contradicted elsewhere
- What users said (pattern, not quote): [Behavioral summary]
- What it suggests (implication): [Interpretation]
- Linked persona: [From Personas.md, or "New segment detected"]
- Strategic relevance: [Linked to Bet # / Unclear / Not relevant to current strategy]

---

### Contradictions Detected
- [Signal A] contradicts [Signal B] — possible explanations: [...]
(Omit if none)

### New Segments Detected
- [Description of user type not currently in Personas.md]
- Recommendation: run Persona-Builder on this segment
(Omit if none)

---

### Hypothesis Candidates
For each High or Medium strength cluster:

> We believe [user segment] experiences [problem].
> If we [intervention], then [measurable outcome].
> Confidence: [High / Medium] based on [N] sources.
> Recommended next step: run Hypothesis-Builder to formalize.

---

### Structural Flags
- [Flag: thin data — findings based on fewer than 3 sources]
- [Flag: no strategic link — findings do not map to any current bet]
- [Flag: contradictions unresolved — do not build hypotheses on contested signals]
(Omit if no flags)

---

> Part of the **AI-SHIPR** product management system
> Built by **Yaniv Yaakubovich**
> Product Management & AI Consulting: www.verve-pm.com
