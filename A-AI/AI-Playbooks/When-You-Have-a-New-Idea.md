# Playbook: When You Have a New Idea

**Paste this into Claude Code when a new initiative idea arrives.**
Use it before committing to anything — before writing a PRD, before adding to the backlog, before telling anyone.

This playbook frames the idea, surfaces what you're assuming, and gets you to a testable hypothesis.

---

## Instructions to Claude

Read the following files before responding:
- `S-Strategy/Strategic-Bets.md`
- `S-Strategy/Vision.md`
- `S-Strategy/KPIs.md`
- `AI/AI-Agents/Problem-Framer.md`
- `AI/AI-Skills/Assumption-Extractor.md`
- `AI/AI-Skills/Hypothesis-Builder.md`

Then run the following sequence:

**Step 1 — Problem-Framer**
Run Problem-Framer on the idea below.
Force clarity on: who has the problem, what the problem costs them, and how this links to a Strategic Bet.
If the idea does not link to any bet, flag it.

**Step 2 — Assumption-Extractor**
Extract the hidden assumptions inside the framed problem.
Rate each assumption: High / Medium / Low risk.
Flag which ones would kill the initiative if wrong.

**Step 3 — Hypothesis-Builder**
Ask me: "Which of these high-risk assumptions do you want to convert into a hypothesis?"
Wait for my answer.
Convert the selected assumption(s) into properly structured HYP files.

**Step 4 — Write**
For each hypothesis I confirm:
Write the HYP file directly to `H-Hypotheses/HYP-[initiative-name]-[number].md`
Confirm the path after writing.

**Step 5 — Initiative File**
Ask: "Do you want me to create an initiative file for this idea?"
If yes: write a starter initiative file to `I-Initiatives/[name].md` using the README-Initiative-Template structure.
Set Stage: `Defined`

---

## My Idea

> [Describe your idea here. One paragraph is enough. Raw thinking is fine — that's what this playbook is for.]

---

## Context (optional — add anything relevant)

- The user this is for: [persona or segment]
- Where this came from: [customer conversation / data / stakeholder / intuition]
- Strategic Bet this might link to: [Bet # or "not sure yet"]
- Urgency: [Why now? Or is there no urgency?]

---

> **© Yaniv Yaakubovich**
> Product Management & AI Consulting: [www.verve-pm.com](www.verve-pm.com)
