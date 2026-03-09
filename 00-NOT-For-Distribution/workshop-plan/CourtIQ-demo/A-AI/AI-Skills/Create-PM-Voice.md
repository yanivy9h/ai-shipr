# Skill: Create PM Voice

## Purpose

Analyze a PM's own writing samples to extract their natural communication style.
Generate a `PM-Voice.md` file that agents reference when producing written outputs.
This turns AI-SHIPR outputs from generic-AI into something that sounds like you wrote it.

---

## Activation

"Create my PM voice" or "Run the PM voice setup"

Before running: drop 5-10 writing samples into `I-Information/Resources/` and tag each
with a note at the top: `<!-- pm-voice-sample -->` or simply tell the agent which files to use.

Good samples: emails explaining a decision, retrospective notes, Slack messages to stakeholders,
1:1 agendas you wrote, product updates you sent. Any writing where you were actually thinking,
not dashing off a reply.

Weak samples: calendar invites, quick reactions ("sounds good"), formal legal documents.
More samples = more accurate voice. Minimum 5.

---

## Behavior Rules

- Require at least 5 samples before proceeding. If fewer than 5 are provided, ask for more and stop.
- Read each sample in full. Do not summarize — analyze structure and pattern.
- Extract across 7 dimensions (see below).
- After extraction: synthesize patterns. Look for what is consistent, not what appears once.
- Generate `R-Relationships/Me/PM-Voice.md` using the output structure below.
- Tell the PM what was found and flag anything that seemed inconsistent or unclear.
- Do not invent patterns that are not in the samples. If a dimension has no clear signal, say so.

---

## 7 Extraction Dimensions

**1. Sentence structure**
How long are sentences? Is there a typical rhythm (short-short-long)? Do sentences tend to be declarative or questioning?

**2. Openings**
How does the PM typically open a message or document?
(Direct statement, context first, question, acknowledgment, data point?)

**3. Decision language**
How does the PM frame a decision they've made?
(Confident, hedged, data-backed, reasoning-first, conclusion-first?)

**4. Disagreement and redirection**
When the PM pushes back or redirects, how do they do it?
(Blunt, question-first, reframe, acknowledge-then-pivot?)

**5. Closing / calls to action**
How do messages end? (Clear ask, open question, soft close, next step?)

**6. Vocabulary fingerprint**
What words or phrases appear repeatedly? What words are conspicuously absent?
(Any filler words, signature phrases, preferred framing words?)

**7. Emotional register**
What is the default emotional tone across samples?
(Warm, neutral, urgent, analytical, collaborative, authoritative?)

---

## Output Structure

Writes to `R-Relationships/Me/PM-Voice.md`:

```markdown
# PM Voice Profile

Generated from [N] writing samples on [date].
Update by running the Create PM Voice skill with new samples.

---

## Voice in one sentence
[A single sentence that captures the overall communication style]

## Sentence structure
[Pattern observed — e.g. "Short declarative sentences. Rarely exceeds 20 words. Occasional longer sentence to add nuance."]

## How messages open
[Pattern — e.g. "Usually opens with the context or situation, then states the point. Rarely starts with 'I'."]

## Decision framing
[Pattern — e.g. "States the decision first, then the reasoning. Does not hedge. Flags tradeoffs explicitly."]

## How disagreement sounds
[Pattern — e.g. "Asks a clarifying question before pushing back. Uses 'I want to make sure I understand...' as a pattern."]

## Closing style
[Pattern — e.g. "Ends with a specific ask or a named next step. Rarely leaves things open-ended."]

## Vocabulary fingerprint
Used often: [words/phrases]
Never uses: [words/phrases if notable]

## Emotional register
[e.g. "Neutral to warm. Does not show urgency in language even under pressure. Collaborative framing even in disagreements."]

---

## Usage note for agents
When generating written outputs for this PM (stakeholder updates, 1:1 agendas, decision logs,
sprint summaries in stakeholder mode), apply the patterns above.
Do not make the output sound like generic AI.
The goal: the PM reads it and thinks "I would have written it this way."
```

---

## After Running

1. Review `PM-Voice.md` and correct anything that feels off.
2. Confirm `pm_voice: active` in `Settings.md`.
3. Agents will now apply your voice to all written outputs automatically.
4. Re-run this skill every few months or when your communication style shifts.
