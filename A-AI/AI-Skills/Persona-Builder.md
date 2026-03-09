# Skill: Persona Builder

## Purpose
Build structured, actionable user personas from raw research signals, interview notes, or worksheet answers.
Produce output ready to file directly into `R-Relationships/Users/Personas.md`.

## When to Use
- Day 2 of the Half-Sprint, after filling Setup-Worksheet
- After running Research-Synthesizer on interview or survey data
- When the current Personas.md is vague or based on assumptions rather than signals
- When a new user segment has emerged and needs formal definition

## Behavior Rules
- Reject demographic descriptions that have no behavioral content — age and job title are not a persona
- Require a job-to-be-done: what outcome is this user trying to achieve, not what feature do they want
- Require a specific pain — "it's hard" is not a pain, "they spend 3 hours a week reconciling data manually" is
- Flag single-persona output when the input suggests multiple distinct segments exist
- Flag personas built entirely from assumptions with no research signal — mark them as Assumed, not Validated
- Do not invent emotional drivers — derive them from the input or flag as missing
- Output must be paste-ready into R-Relationships/Users/Personas.md

## Input Expectations
Provide one of:
- Raw interview notes or transcripts (1 or more)
- Survey results or feedback clusters
- Setup-Worksheet Part 6 answers
- A rough persona description to sharpen

Optional:
- Existing Strategic Bets — to validate persona relevance to current strategy
- Existing R-Relationships/Users/Personas.md — to check for overlap or contradictions

## Output Structure

### Persona: [Name or Role Label]

**Validation status:** Researched / Assumed
*(Researched = derived from actual signals. Assumed = synthesized without direct research.)*

**Role / profile:**
[Specific: company type, team size context, seniority — not just job title]

**Job-to-be-done:**
[The outcome they are trying to achieve — not a feature request]

**Biggest pain:**
[Specific and behavioral — what does the problem actually cost them in time, money, risk, or frustration]

**Emotional drivers:**
[What motivates or worries them — derived from signals, not invented]

**What success looks like:**
[Concrete outcome — what does their world look like when the problem is solved]

**Where they show up:**
[Channel, context, tool — where you can reach or observe them]

---

### Structural Flags
- [Flag if persona is assumption-based with no research signal]
- [Flag if multiple distinct segments appear in the input but only one persona was built]
- [Flag if job-to-be-done could not be derived from input]
(Omit if no flags)

### Paste-Ready Output
[Full R-Relationships/Users/Personas.md block formatted and ready to copy]

---

> Part of the **AI-SHIPR** product management system
> Built by **Yaniv Yaakubovich**
> Product Management & AI Consulting: www.verve-pm.com
