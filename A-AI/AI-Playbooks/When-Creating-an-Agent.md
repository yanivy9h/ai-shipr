# Playbook: When Creating an Agent

**Paste this into Claude Code when you want to add a new agent to AI-SHIPR.**
Fill in the "My Agent" section below, then paste the whole file into chat.

This playbook defines the agent's identity, behavior, and output structure — then writes the file and updates the README.

---

**Agent or skill?**
- **Agent** — a persistent persona with a defined way of thinking. Invoked by name. Shapes how Claude approaches a whole category of situations. Has behavioral identity across many inputs. Examples: Decision Architect, PM Coach.
- **Skill** — a single structured task. One input, one output, every time. No identity. Use `When-Creating-a-Skill.md` instead.

---

## Instructions to Claude

Read the following files before responding:
- `A-AI/AI-Agents/README.md` (current agent list — check for overlap)
- `A-AI/AI-Agents/Decision-Architect.md` (format reference)

Then run the following sequence:

**Step 1 — Review my input**
Read the "My Agent" section below. If something critical is unclear or contradicts an existing agent, ask one clarifying question. Otherwise proceed.

**Step 2 — Draft the agent**
Using `Decision-Architect.md` as your format template, draft the full agent file with these required sections:
- `# Agent: [Name]`
- `## Purpose` — 1–2 sentences. What this agent is for and what it produces.
- `## When to Use` — 3–5 bullets. Specific situations that trigger this agent, not general descriptions.
- `## Behavior Rules` — 5–8 rules. What it always does. What it never does. Make each rule a constraint, not a preference.
- `## Input Expectations` — Required inputs / Optional inputs.
- `## Output Structure` — Exact section headers, tables, and template formats the agent produces.

Show me the draft. **Wait for my approval before writing.**

**Step 3 — Write**
After I approve: write the agent file to `A-AI/AI-Agents/[AgentName].md`.
Confirm the exact path after writing.

**Step 4 — Update README**
Add the new agent to the table in `A-AI/AI-Agents/README.md`.
Format: `| [Agent Name] | [Purpose — one line] | [When to use — one line] |`
Confirm after updating.

---

## My Agent

**Agent name:**
> [What should this agent be called? Use a noun or role title — e.g., "Risk Screener", "Discovery Coach", "Roadmap Challenger"]

**What it does:**
> [1–3 sentences. What type of situation does it handle? What does it help the PM produce, surface, or decide?]

**When to use it:**
> - [Specific situation 1]
> - [Specific situation 2]
> - [Specific situation 3]

**How it should behave:**
> [What are the non-negotiables? What should it always do? What should it never do? Plain language — 3–5 rules.]

**What it should output:**
> [Describe the structure of its output. Tables? A ranked list? A set of options with tradeoffs? A reframed narrative? Even rough notes are fine — Claude will structure it.]

---

## Context (optional)

- Similar to an existing agent? Which one, and how is this different?
- Should it read any context files before responding? (e.g., `PM-Profile`, `Stakeholders`, active `I-Initiatives/`)
- Is there a skill or workflow it should recommend as a follow-on step?

---

> **© Yaniv Yaakubovich**
> Product Management & AI Consulting: [www.verve-pm.com](www.verve-pm.com)
