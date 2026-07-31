---
name: prototype-builder
description: Turn one written uncertainty into a runnable prototype and a read on what it taught. Picks fidelity from the question, time-boxes the build, and files the result as evidence.
user-invocable: false
---

# Skill: Prototype Builder

## Purpose
Turn one written uncertainty into something a person can actually use, then convert what happened into evidence the system can file.
The prototype is not the product and not the spec. It is the cheapest way to find out that your intuition was wrong.

Context: coding agents made prototypes nearly free, which changed the sequence but not the discipline. A prototype still has to answer a question that was written down before the build started, or it is a demo with a budget.

## When to Use
- `Working-Backwards` escalated: the thin one-screen build hit its ceiling and the question needs real data, real state, or real users
- An `[unresolved]` step in a customer experience walkthrough is the whole benefit and nobody can describe it
- A hypothesis is about feasibility or usability, and an interview cannot answer it
- Engineering and product disagree about whether an approach will feel right, and the argument has run more than one meeting
- A stakeholder needs to see the thing before they will decide, and a document has already failed twice

## Behavior Rules
- Require one written question before building. If the input is "build a prototype of X", stop and ask what it would tell us. A prototype without a question is a demo.
- Choose fidelity from the question, never from taste or available time. Use the fidelity table below and name which row you used.
- Refuse to prototype a demand question. Route it to `Experiment-Designer` for a smoke test instead. This is the most common misuse: a beautiful prototype that people praise and nobody would have paid for.
- Time-box before starting and state the box. If the box is blown, that overrun is itself a finding about complexity: record it.
- Label every faked element inside the interface. Unmarked fake data is how a prototype gets forwarded to a customer as a product.
- Keep the visual finish below the fidelity of the question. If the question is about flow, it should look unfinished, or the feedback comes back about spacing and color.
- Build as a single self-contained HTML file with no build step and no external dependencies unless the question requires otherwise. It has to open by double-clicking, offline, on someone else's machine, a year from now.
- Record what did **not** change your mind alongside what did. A prototype that only confirms prior beliefs is either a good result or a badly aimed build, and you cannot tell which unless both are written.
- Never put a prototype in front of a customer without a script. Chain to `Interview-Guide-Builder` first.
- Close with a decision, not a feeling. "It felt good" is not an output.

## Fidelity Selection

| The question is about | Right fidelity | What it is |
|---|---|---|
| Does the flow make sense | Clickable HTML, fake data, one path | Screens that move, nothing real underneath |
| Does it feel right to use | Clickable HTML with real interaction timing and empty, loading, and error states | The states everyone forgets are usually where the feeling lives |
| Does it hold up on real data | Seeded prototype with a sample of actual production-shaped data | Exposes volume, edge cases, and ugly strings |
| Can we technically do this | Feasibility spike, thrown away after | Answers one technical unknown, not a user question |
| Would people use it if it existed | **Not a prototype question** | Route to `Experiment-Designer`: smoke test or concierge |
| Is anyone willing to pay | **Not a prototype question** | Route to `Experiment-Designer`, then `Pricing-Packaging` |

## Input Expectations
Required:
- The question the prototype must answer, in one falsifiable sentence
- What is already known, so the build does not re-answer it

Optional but strongly recommended:
- The Section 2 escalation reason from a `Working-Backwards` run
- The linked hypothesis from `H-Hypotheses/`
- `R-Relationships/Users/Personas.md` for who this is being built for
- Real data shape, even a handful of rows, when the question involves data
- Known constraints: platform, device, accessibility, offline, language and text direction

**Multi-product note:** If `product_mode: multi` in Settings.md, use `[product-name]/` as the path prefix for all file reads and writes.

## Output Structure

### 1. Prototype Brief

- **Question:** [One falsifiable sentence]
- **Linked hypothesis:** [HYP file, or "none - flag"]
- **Fidelity:** [Row from the table above, and why that row]
- **Timebox:** [Hours]
- **Build list:** [The smallest set of things that makes the question answerable]
- **Explicitly faked:** [Data, integrations, auth, states. All of it, listed.]
- **Out of scope:** [What this prototype deliberately does not do]
- **What "answered" looks like:** [What you have to observe to call the question closed, either way]

---

### 2. The Build

File: `P-Proof/Prototypes/[name]/index.html`
Notes file: `P-Proof/Prototypes/[name]/README.md`

The notes file records the brief, how to run it, what is fake, and the read below. The prototype without its notes is unreadable in three weeks.

---

### 3. The Read

**What happened when it was used**

| What we expected | What actually happened | Changed the plan? |
|---|---|---|
| [...] | [...] | Yes / No |

- **Where people got stuck:** [Specific step, specific moment]
- **What broke that we did not predict:** [...]
- **What the build itself taught:** [Complexity discovered, dependencies surfaced, an assumption that turned out to be load-bearing]
- **What did not change our mind:** [Explicit. Confirmation is a finding.]
- **What is still unknown:** [...]

---

### 4. Evidence Filed

| Claim or assumption | What the prototype showed | Status now |
|---|---|---|
| [...] | [...] | Evidenced / Weakened / Killed / Untouched |

Feasibility and usability claims only. If a demand claim appears in this table, remove it and route it to `Experiment-Designer`.

---

### 5. Decision

One of four:
- **Proceed** - the question is answered, the approach holds. Next: back to `Working-Backwards` to write the documents, or `PRD-Builder` if the docs already exist.
- **Change the approach** - it was answered, and the answer was no. Name what the prototype ruled out. That is the value.
- **Another round** - the build raised a sharper question. State the new question and the new timebox. Maximum one more round before something has to be decided.
- **Stop** - the prototype exposed that the underlying problem is not worth solving. Rare, and the highest value outcome on this list.

---

### 6. Structural Flags

- [Flag: no written question - built on vibes]
- [Flag: fidelity exceeds the question - polish will distort the feedback]
- [Flag: no hypothesis linked - this prototype is not connected to anything the system tracks]
- [Flag: demand question routed here by mistake]
- [Flag: timebox blown by more than double - the complexity finding is bigger than the usability finding]
- [Flag: prototype shown to customers without an interview guide]

(Omit if no flags.)

---

## Filing

Write to `P-Proof/Prototypes/[name]/`, and offer to append the read to the linked hypothesis file in `H-Hypotheses/`.
If the decision is "Proceed", offer to update the initiative Stage in `I-Initiatives/`.

## Chains
```
Working-Backwards (escalation) → Prototype-Builder → Working-Backwards (write the docs)
Prototype-Builder → Interview-Guide-Builder → Interview-Synthesizer     (when real users will see it)
Assumption-Extractor → Hypothesis-Builder → Prototype-Builder           (feasibility/usability assumptions)
Assumption-Extractor → Hypothesis-Builder → Experiment-Designer         (demand assumptions - not this skill)
Prototype-Builder → PRD-Builder
```

---

> Part of the **AI-SHIPR** product management system
> Built by **Yaniv Yaakubovich**
> Product Management & AI Consulting: www.verve-pm.com
