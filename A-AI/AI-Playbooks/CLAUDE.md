# AI-Playbooks — Index

17 situation guides. Unlike workflows (Claude-driven), playbooks are PM-driven: the user pastes one in and it names the tools to run in order. When the user describes one of these situations without naming a tool, point them at the matching playbook — or follow its sequence directly.

## Situation → playbook

| Situation | Playbook |
|---|---|
| New initiative idea arrived | `When-You-Have-a-New-Idea.md` |
| Building a brand-new product (discovery stage) | `When-Building-a-New-Product.md` |
| Sprint is starting | `When-Starting-a-Sprint.md` |
| 3–5 days before a launch | `When-Launching.md` |
| Post-launch data is in | `When-Data-Comes-In.md` |
| Need investment, headcount, or prioritization | `When-You-Need-to-Pitch.md` |
| About to write a PRD, board update, strategy doc, or pitch | `When-Writing-a-Major-Doc.md` |
| Production issue / exec escalation / metric drop | `When-Theres-a-Fire.md` |
| 1:1 coming up | `When-Preparing-for-a-1on1.md` |
| Presenting to the board | `When-Presenting-to-the-Board.md` |
| End of week or sprint | `When-Closing-the-Week.md` |
| After any meeting | `When-After-a-Meeting.md` |
| Planning headcount (lead) | `When-Planning-Headcount.md` |
| Preparing a team review (lead) | `When-Preparing-for-Team-Review.md` |
| A PM is struggling (lead) | `When-a-PM-is-Struggling.md` |
| Adding a new agent to AI-SHIPR | `When-Creating-an-Agent.md` |
| Adding a new skill to AI-SHIPR | `When-Creating-a-Skill.md` |

## What starts each playbook

Every playbook is named after a moment. A moment comes from one of three places, and that decides whether Claude can start the playbook without you typing anything.

| Playbook | Started by | Can run without a prompt? |
|---|---|---|
| `When-Closing-the-Week.md` | **Schedule:** every Friday | Partly. Claude drafts the review and the Learning.md candidates; you approve them in your next session |
| `When-Starting-a-Sprint.md` | **Schedule:** sprint start date | Partly. Claude drafts goal and scope from the initiative files; you commit them |
| `When-After-a-Meeting.md` | **Event:** a new transcript or notes file lands (e.g. from a meeting recorder) | Partly. Claude drafts the synthesis; propagation into initiative and stakeholder files waits for you |
| `When-Data-Comes-In.md` | **Event:** a new results file in `P-Proof/`, or a date set at launch | Partly. Claude drafts the read; the hypothesis verdict is yours |
| `When-Preparing-for-a-1on1.md` | **Schedule:** the morning of a 1:1 on your calendar | Yes. The output is an agenda for you to read |
| `When-Launching.md` | **Schedule:** 3–5 days before a launch date in an initiative file | Partly. Claude runs the checklist; sign-off is yours |
| All others | **You:** you name the situation | No. They need your input first |

**Rules for anything that runs without a prompt:**
- It writes a draft file and stops. Edits to strategy, initiatives, hypotheses, `Learning.md` and `Decision-Log.md` wait for your approval (Tier 2 in `Governance.md`).
- It never sends, posts or shares anything. Drafts contain protected content (`A-AI/AI-Agents/_Security-Boundaries.md`).
- The draft opens with one line saying whether it needs you. If you start ignoring these drafts, run fewer of them: your attention is the scarce resource, not Claude's.

How to schedule: Claude Code scheduled tasks or `/loop`, a cloud routine, or a cron job calling the Claude CLI. `Connections.md` covers wiring the event sources (meeting recorder, analytics).
