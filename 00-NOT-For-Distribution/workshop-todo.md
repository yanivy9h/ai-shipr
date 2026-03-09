# AI-SHIPR ToDo

---

## Done

- [x] Create the packaged initial workshop — done 2026-03-02, see `workshop-plan/`
- [x] Create a demo company — CourtIQ, done 2026-03-02, see `workshop-plan/demo-company/`
- [x] Add AI-SHIPR on the demo company — done 2026-03-02
- [x] Consider Luma for registration — decided: Google Form + Green Invoice for Israel first cohorts, Luma for English international scale. See `workshop-plan/registration-guide.md`

---

## Today — Launch Blockers

- [x] Update the website files (date, price, registration link must be live) — DONE
- ~~Create Cal.com entries for the workshop (students need a date to register for)~~ — NOT NEEDED
- [x] Test the full AI-SHIPR workflow end to end (product must work before students touch it)
- [x] Create welcome email to participants
- [x] Add the AI-SHIPR student zip to the website. Behind password?
- [x] Review the various file and improve their quality manually or with Claude
- [x] Review ALL the folders
- [x] Review the /today command
- [x] Add to /today an option GitHub upload at the beginning of the flow. this allows for uploading most recent work
- [x] Add newsletter scan to /today flow
- [x] update the information about the ai-shipr
- [x] Rebuild the students package
- [x] re-package the files 
- [x] Check the flow from unzip to running script
- [x] Save the files in GitHUb
---

## Thursday morning — Before First Session

- [x] Add templates to I-Information folder (students need these on day one) — DONE
- [ ] Create explainer about slash commands, skills, and agents (student onboarding)
- [x] Create a student setup page on verve-pm.com with instructions to install Claude Code, Obsidian, and open the zip file — DONE
- [x] Create GreenVoice landing page — DONE
- [x] Update the settings file
- [x] send the email to all participants with details and instructions
- [x] Add an example of the demo company
- [x] Rehearse the presentation

---

## Registration Setup (Next Cohort)

- [ ] Create Google Form — English version
- [x] Create Google Form — Hebrew version (separate form, separate URL)
- [x] Create GrowPay payment link (₪700)
- [x] Update WordPress CMS fields: `workshop.registration_link_en`, `workshop.registration_link_he`, `workshop.date_en`, `workshop.date_he`, `workshop.price_en`, `workshop.price_he`

---

## After First Cohort

- [x] Add list of newsletters and sources to I-Information folder — DONE 2026-03-04, see `I-Information/Resources/pm-resources.md`
- [ ] Connect Claude to Notion to-do list — POSTPONED
- [ ] Choose an email solution — POSTPONED
- [ ] Market to everyone on Luma — POSTPONED
- [ ] Create a list of customers/leads based on Luma — POSTPONED
- [x] Send receipts to all participants
- [x] Gather feedback - whatsapp or jump on calls.
- [x] Ask for posts

---

## Workshop Improvements — Post Workshop #1 (2026-03-05)

*Based on participant feedback. See `M-memory/feedback.md` and `M-memory/learning-log.md` for full context.*

### Delivery Format
- [ ] **Split workshop into 2 parts**
  - Part 1: Baby steps — everyone opens Obsidian, creates a file/folder via Claude Code, succeeds together (builds "תחושת מסוגלות" before complexity)
  - Part 2: Full PM system demo
- [ ] Create a "baby steps" exercise sequence for Part 1
- [ ] Update facilitator guide to reflect 2-part format (`workshop-plan/AI-SHIPR workshop-facilitator.html`)
- [ ] Create a wow effect in the demo
- [ ] use whispr in the demo

### Demo Company
- [x] **Replace CourtIQ with a product participants already know** — Duolingo chosen, deck updated, `duolingo-example-worksheet.md` created
- [x] Rebuild demo files using the chosen familiar product — Duolingo-demo/ folder complete, all CourtIQ references removed
- [ ] Check and update the status

### Product / System
- [x] **Figma connector** — pull team design assets from Figma into the PM system — `figma-sync.js` + `/figma` skill + `Integrations/Figma/` folder. Needs FIGMA_TOKEN to activate.
- [x] **Team management support** — add framework for managing a team with AI-SHIPR (not just solo PM use)
- [ ] **Skills for presentations** — Claude skills to help PMs build and prepare presentations
- [ ] **Skills usage guide** — clear guide explaining how to use each skill (for participants post-workshop)
- [ ] **Explain the file management paradigm** — why files are the right interface for Claude Code (dedicated framing in Part 1)
- [x] Add scheduler of tasks i.e. read email, read tickets
- [ ] Add a product strategy agent and its skills
- [ ] Add a designer and its skills 

---
תודה רבה שהשתתפת בסדנה! 
מעניין אותי לשמוע מה לקחת ממנה, זה גם עוזר לי לשפר את הסדנאות הבאות.
אשמח לשאול 4 שאלות קצרות:
1. מה הדבר הראשון ליישום עם קלוד כבר בימים הקרובים בעקבות הסדנה?
2. מה היה הרגע שבו “נפל לך האסימון” במהלך הסדנה?
3. אם חבר.ה ישאלו אותך אם להגיע לסדנה הזאת, מה תהיה התשובה שלך?
4. ואם בא לך, אשמח גם ל-2–3 משפטים על הסדנה:  
מה לקחת ממנה, ומה ישתנה בעבודה עם Claude Code או בעבודת פרודקט שלך בעקבותיה.

## Headless Claude / Automation

- [ ] Explore headless Claude (`claude -p`) for automated workflows — no human in the loop
- [ ] Prototype automated `/today` run triggered by cron job each morning
- [ ] Explore pre-commit hooks — Claude reviews changes before git commit
- [ ] Explore chained agent workflows — scripts that fire multiple Claude tasks in sequence using `--resume [session_id]`
- [ ] Evaluate CI/CD integration (GitHub Actions / GitLab) for AI-SHIPR workflows
- [ ] Research: how to make 2 agents talk to each other in Claude Code (multi-agent orchestration)
- [ ] **Write participant instructions: how to add a scheduled task** — cover: what scheduled tasks are, how to create one via the scheduled-tasks panel, the Linear tickets example as a template, and how to extend it for email or other sources

---

## Backlog

- [ ] Build a better marketing plan
- [ ] Add a list of suggested skills 
- [x] connect linear
- [ ] rename the linear project
- [x] Linear - add duolingo project
- [x] Linear - add tickets to duolingo — DUO-1 through DUO-15 created (5 per initiative)
- [ ] create an image that explains the flow
- [ ] Create explainers on using GitHUb — POSTPONED
- [x] Create scripts to create agent, skill, and workflow
- [ ] Write about Who Moved My Cheese — POSTPONED
- [x] Inspiration list of product people
- [x] Coaching agent that teaches you soft skills, alternatives, and coming up with solutions

---

## Design Principle

AI-SHIPR maps to the full Agile product loop — not a linear funnel ending at PRD.

```
Plan → Design → Develop → Test → Review → Deploy → Plan again
```

Every tool belongs to a phase. Every phase feeds the next. Learning.md is the loop mechanism.

---

## Agile Phase Coverage Map

| Phase | Tools |
|-------|-------|
| **Plan** | `OKR_Partner`, `Roadmap_Planner`, `Sprint_Planner`, `Priority_Stack`, `Business_Case_Builder` |
| **Design** | `Problem_Framer`, `Assumption_Extractor`, `Hypothesis_Builder`, `Research_Synthesizer`, `PRD_Builder` |
| **Develop** | `Build_Companion`, `Decision_Architect`, `Tradeoff_Mapper`, `Edge_Case_Finder`, `Cross_Team_Mapper` |
| **Test** | `Experiment_Auditor`, `Launch_Coordinator`, `Experiment_Review` |
| **Review** | `Performance_Tracker`, `Build_Review`, `Retro_Facilitator`, `Structural_Integrity_Auditor` |
| **Deploy / Monitor** | `Executive_Update`, `Status_Reporter`, `Metric_Investigator` |
| **Loop Re-entry** | `Iteration_Planner`, `Weekly_Review`, `Feedback_Synthesizer`, `Learning.md` |
| **Always on** | `Stakeholder_Translator`, `Narrative_Refiner`, `Persona_Builder`, `Fire_Responder`, `/today`, `Initiative_Review` |
| **Pitch** | `Business_Case_Builder`, `Pitch_Deck_Builder`, `1on1_Prep` |

---

## Basic Package — Shipped ✅

### Agents
- `Problem_Framer`
- `Decision_Architect`
- `Stakeholder_Translator`
- `Structural_Integrity_Auditor`

### Skills
- `Assumption_Extractor`
- `Hypothesis_Builder`
- `Tradeoff_Mapper`
- `Narrative_Refiner`
- `Edge_Case_Finder`
- `Priority_Stack`
- `Persona_Builder`
- `OKR_Partner`
- `Research_Synthesizer`
- `PRD_Builder`
- `Fire_Responder`
- `Build_Companion`

### Workflows
- `/today`
- `Roadmap_Planner`
- `Initiative_Review`
- `Experiment_Review`
- `Weekly_Review`
- `Populate_Strategy`
- `Sprint_Planner`

### Foundation
- `CLAUDE.md`
- `Setup_Worksheet`
- `Half_Sprint_Guide`

---

## Full Loop Expansion — Shipped ✅

*Built alongside the basic package to close the full Agile loop.*

### Skills
- `Business_Case_Builder` — Structure the pitch: business problem, proposed solution, quantified impact, cost, and funding ask
- `Performance_Tracker` — Post-launch hypothesis validation. Takes actual metric data and produces: hypothesis status, gap vs predicted, signals for next iteration
- `Build_Review` — Sprint review preparation. Summarizes what shipped vs committed, early outcome signals, and key decisions made during development
- `Retro_Facilitator` — Sprint retrospective structure. Patterns from what went well, root cause on what did not, process improvements for Learning.md
- `Pitch_Deck_Builder` — Converts Business_Case_Builder output into a structured leadership presentation narrative
- `Cross_Team_Mapper` — Maps dependencies, handoffs, and collaboration needs across teams for a given initiative
- `1on1_Prep` — Structures 1:1 agendas from active initiatives, pending decisions, and blockers

### Workflows
- `Launch_Coordinator` — Pre-launch checklist: go/no-go criteria, content review, experiment requirements, stakeholder sign-off, rollback conditions
- `Iteration_Planner` — Post-launch loop re-entry. Reads proof, learning log, and unshipped backlog. Produces next cycle plan.

---

## Add-on Release 1 — Deferred

*Discovery and operational depth layer. Deferred — loop coverage was prioritised first.*

### Skills (deferred)
- `Competitive_Mapper` — Map the competitive landscape to inform Strategic Bets and positioning
- `Stakeholder_Profiler` — Build a deep stakeholder map before running Stakeholder_Translator
- `Experiment_Auditor` — Diagnose flawed experiment designs before they run
- `Meeting_Synthesizer` — Convert raw meeting notes into structured Meeting_Log entries
- `Pricing_Framer` — Frame pricing as a strategic input linked to bets and personas
- `Trend_Mapper` — Identify market and behavioral trends that should influence Strategic Bets
- `Feedback_Synthesizer` — Convert ongoing product feedback into hypothesis and persona updates. Loop re-entry tool.
- `Interview_Guide_Builder` — Generate targeted interview guides from a hypothesis or initiative
- `Insight_Extractor` — Pull structured findings from raw interview notes into Research_Synthesizer format
- `Metric_Investigator` — Deep-dive skill for when a metric moves unexpectedly. Produces structured investigation framework and experiment candidates.

### Workflows (deferred)
- `Executive_Update` — Generate a structured exec or shareholder update from current system state
- `Status_Reporter` — Operational progress report across all initiatives for leadership and cross-team visibility

---

## Structural Note: Initiative Lifecycle

The Initiative template includes a `Stage` field reflecting position in the Agile loop:

```
Stage: Defined | In Sprint | In Development | Testing | Launched | Monitoring | Iterating
```

This allows `/today` and `Initiative_Review` to surface not just what is active, but where in the loop each initiative sits — which determines what the PM needs to do next.

---

## Tool Dependency Map

Key chains that must run in order:

```
Business_Case_Builder → Pitch_Deck_Builder
Launch_Coordinator   → Build_Review → Performance_Tracker → Iteration_Planner
Hypothesis_Builder   → Experiment_Review → Performance_Tracker
Retro_Facilitator    → Iteration_Planner
Sprint_Planner       → Build_Companion → Build_Review
```

---

> Part of the **AI-SHIPR** product management system
> Built by **Yaniv Yaakubovich**
> Product Management & AI Consulting: www.verve-pm.com
