# Skill: Interview Guide Builder

## Purpose
Generate a structured customer interview guide before conducting user research.
Interviews without a guide produce conversation. Interviews with a guide produce signal.

## When to Use
- Before your first customer interview in a discovery sprint
- When you have a hypothesis or persona but no structured way to test it
- When previous interviews felt unfocused or produced unusable results
- Before validating any assumption that requires talking to a user

## Behavior Rules
- Never include solution-leading questions — the guide surfaces the job, not your answer to it
- Questions must uncover behavior, not opinion — "tell me about the last time" not "would you use"
- Every section of the guide must map to a specific assumption or unknown
- Include probes for each main question — surface the "why" behind the answer
- Flag if the stated hypothesis is solution-focused — redirect to the problem layer before proceeding
- Output must be usable without explanation — the PM should be able to hand it to anyone

## Input Expectations
Provide one or more of:
- Target persona (from `R-Relationships/Users/Personas.md` or a rough description)
- Hypothesis or assumption being tested (from `H-Hypotheses/` or stated directly)
- Research questions — what do you most need to learn?
- Constraints (optional): session length, user segment, recruitment channel

## Output Structure

### Interview Brief
- **Goal of this interview:** [One sentence — what you need to know by the end]
- **Persona being interviewed:** [Role, context, segment]
- **Hypothesis under test:** [From H-Hypotheses or stated assumption]
- **Session length:** [30 / 45 / 60 min]

---

### Opening (5 min)
Warm-up. Build rapport. Establish that you are learning, not selling.

> "Thank you for your time. I want to understand how you currently handle [problem space]. There are no right or wrong answers — I'm here to learn from you, not to pitch anything."

1. [Warm-up question — role, context, how long they've been doing this]
2. [Day-in-the-life question — surface their current workflow in the relevant area]

---

### Core Questions (20–35 min)
Each question maps to a specific unknown. Behavioral, not hypothetical.

**Block 1 — [Unknown #1 label]**
- Q: [Behavioral question — "Tell me about the last time you..."]
- Probe: [Why? / What did you do next? / What made that hard?]
- Listen for: [Signal that confirms or challenges the assumption]

**Block 2 — [Unknown #2 label]**
- Q: [Behavioral question]
- Probe: [Probe]
- Listen for: [Signal]

**Block 3 — [Unknown #3 label]**
- Q: [Behavioral question]
- Probe: [Probe]
- Listen for: [Signal]

*(Add blocks for each distinct unknown. Aim for 3–5 blocks.)*

---

### Current Solution Probe (5 min)
Understand what they are already doing — this reveals true alternatives and switching cost.

- "How are you solving this today?"
- "What do you use — tools, workarounds, or other people?"
- "What's the biggest frustration with how you handle it now?"

---

### Closing (5 min)
Surface anything the guide missed. End on a referral.

- "Is there anything about this that I haven't asked about that you think is important?"
- "Who else on your team deals with this problem? Would you be willing to introduce me?"

---

### Post-Interview Notes (fill in immediately after)
- Strongest signal heard:
- Biggest surprise:
- Assumption confirmed / challenged / unclear:
- Quote worth keeping:
- Next follow-up needed:

---

### Validity Check
- All questions are behavioral (not hypothetical): [Yes / No — fix if No]
- No solution mentioned or implied: [Yes / No — fix if No]
- Every block maps to a named unknown: [Yes / No]
- Probes defined for each core question: [Yes / No]
- Post-interview notes section included: [Yes]

---

## Skill Chain

Runs after:
- `Assumption-Extractor` — provides the assumptions to test
- `Hypothesis-Builder` — provides the hypothesis to validate
- `Persona-Builder` — provides the persona being interviewed

Output feeds into:
- `Interview-Synthesizer` — paste the guide + notes to produce structured signals
- `Research-Synthesizer` — via Interview-Synthesizer output

---

> Part of the **AI-SHIPR** product management system
> Built by **Yaniv Yaakubovich**
> Product Management & AI Consulting: www.verve-pm.com
