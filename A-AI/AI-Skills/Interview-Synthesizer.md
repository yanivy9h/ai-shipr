# Skill: Interview Synthesizer

## Purpose
Convert raw post-interview notes into structured signals using the original interview guide as context.
The guide defined what you were listening for. This skill checks whether you heard it — and what it means.

## When to Use
- Immediately after completing one or more customer interviews
- When you have raw notes but no structured way to turn them into product signals
- Before running `Research-Synthesizer` — this skill produces input shaped for it
- When interview findings are sitting in a doc and not yet informing any decision

## Behavior Rules
- Use the original interview guide to anchor synthesis — every finding maps back to a named unknown
- Debrief each interview using the FFQC framework before aggregating across the batch: **Facts** (behavioral statements, what they said or did), **Feelings** (emotional signals — frustrations, delights, anxieties), **Quotes** (exact words — not your paraphrase), **Conclusions** (your one-step-beyond interpretation)
- Distinguish what the user said (observed) from what it implies (inferred) — Quotes and Facts are observed; Conclusions are inferred
- Never treat a single interview as a pattern — flag thin data when N < 3
- Surface surprises explicitly — things the guide did not anticipate are often the most valuable signal
- Do not summarize the conversation — synthesize what it means for the hypothesis
- If the hypothesis was confirmed, say so clearly and state the evidence
- If the hypothesis was challenged, say so clearly and state what was wrong
- Flag anything that requires a follow-up interview before conclusions can be drawn

## Input Expectations
Provide:
1. **Interview guide** — from `Interview-Guide-Builder`, or paste the guide used
2. **Raw notes** — paste directly: transcript, bullet notes, voice memo transcription, or written summary
3. **Number of interviews this batch** — helps calibrate signal strength

Optional:
- Existing `H-Hypotheses/` file this interview was testing — to update status
- `R-Relationships/Users/Personas.md` — to link findings to known segments

**Multi-product note:** If `product_mode: multi` in Settings.md, use `[product-name]/` as the path prefix for H-Hypotheses reads above (e.g., `patient-prep/H-Hypotheses/`).

## Output Structure

### Per-Interview Debrief — FFQC Framework

Complete this for each interview immediately after the session, before moving to batch aggregation.

**Interview [N] — [Participant description] — [Date]**

**Facts** — What statements of fact did you hear?
- [Behavioral observations, usage patterns, factual statements about how they work or what they do]

**Feelings** — What feelings did they express?
- [Emotions, frustrations, delights, anxieties, motivations — what made them lean in or pull back]

**Quotes** — Direct quotes to note
- "[Exact words — not your paraphrase. The quote is the evidence.]"

**Conclusions** — What do you conclude from this interview?
- [Your interpretations — one step beyond what was observed. What does this mean for the hypothesis?]

---

*(Repeat for each interview in the batch before moving to aggregation below)*

---

### Interview Batch Summary
- Interviews in this batch: [N]
- Persona interviewed: [From guide or described]
- Hypothesis under test: [From guide or stated]
- Date range: [If provided]

---

### Findings by Guide Block

For each block from the interview guide:

**Block: [Unknown label from guide]**
- What was observed: [Behavioral pattern — what users said or did, not opinions]
- What it implies: [Interpretation — one step beyond observation]
- Assumption status: Confirmed / Challenged / Unclear / Not reached
- Signal strength: High (3+ consistent) / Medium (2 or mixed) / Low (1 or contradicted)
- Representative quote: "[Direct quote if available]"

---

### Surprises (Not in the Guide)
Things that emerged that the guide did not anticipate:

- [Finding] — implication: [What this means] — worth following up: [Yes / No]

*(Omit if none)*

---

### Hypothesis Update

**Hypothesis:** [State the hypothesis being tested]

**Verdict from this batch:**
- Confirmed: [Evidence]
- Challenged: [Evidence]
- Inconclusive: [What's still unclear — what would resolve it]

**Recommended next step:**
- [ ] Update hypothesis status in `H-Hypotheses/`
- [ ] Run another round of interviews (N needed: [X])
- [ ] Proceed to `Hypothesis-Builder` to refine
- [ ] Flag as validated — move to `Experiment-Designer` for next test

---

### New Signals Not in Hypothesis

Findings that don't map to the current hypothesis but are worth keeping:

- [Signal] — suggested action: [File to Research-Synthesizer / Open new hypothesis / Note for later]

---

### Research-Synthesizer Input (Ready to Paste)

A structured summary formatted for direct input into `Research-Synthesizer`:

```
Source type: Customer interviews
Volume: [N] participants
Recency: [Date]
Segments: [Persona(s)]

Signal clusters:
- [Cluster name]: [Behavioral summary] — strength: [High/Medium/Low]
- [Cluster name]: [Behavioral summary] — strength: [High/Medium/Low]

Contradictions:
- [If any]

Hypothesis candidates:
- [If new assumptions surfaced]
```

---

### Structural Flags
- Thin data (N < 3): [Flag if yes — do not draw firm conclusions]
- Hypothesis not reached in interviews: [Flag if yes — guide may need revision]
- Contradictory findings: [Flag — do not resolve, surface]
- Follow-up interviews needed: [Yes / No — if yes, state what question needs answering]

---

## Skill Chain

Runs after:
- `Interview-Guide-Builder` — provides the guide used in the interviews

Output feeds into:
- `Research-Synthesizer` — paste the "Ready to Paste" block as input
- `H-Hypotheses/` — update hypothesis status based on verdict
- `Persona-Builder` — if new segments were detected

---

> Part of the **AI-SHIPR** product management system
> Built by **Yaniv Yaakubovich**
> Product Management & AI Consulting: www.verve-pm.com
