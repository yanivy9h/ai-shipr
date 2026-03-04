# Excalidraw Integration

> **Type:** Generative (Claude creates diagrams on demand)
> **Status:** Optional — activate when visual output is needed during sessions
> **GitHub:** https://github.com/excalidraw/excalidraw-mcp
> **Connector page:** https://claude.com/connectors/excalidraw-app-demo

---

## What It Is

Excalidraw MCP lets Claude generate interactive, hand-drawn style diagrams directly inside the conversation — no copy-paste, no export, no manual drawing.

Unlike Miro (which is a *data pipe* — you export content into AI-SHIPR), Excalidraw is *generative* — Claude creates the diagram from a prompt or from system context. The output is a live, editable Excalidraw canvas.

---

## What to Generate

Use Excalidraw when you want to visualise something from the system:

| Use Case | Prompt Trigger |
|---|---|
| Problem space / opportunity map | "Draw the problem space from Problem-Framer output" |
| Experiment flow | "Visualise the hypothesis and success criteria" |
| Roadmap / timeline | "Draw the current roadmap from Strategy.md" |
| Sprint board | "Create a visual board from this sprint's initiatives" |
| Org / dependency map | "Map the stakeholders and their relationships" |
| Retro layout | "Draw a retrospective board: went well / didn't / actions" |
| Architecture diagram | "Draw the system architecture for [initiative]" |
| Decision tree | "Create a decision tree for [choice]" |
| User journey | "Visualise the user journey from the discovery notes" |

---

## File Format

When saving a diagram reference into the system, use this format:

```
---
source: excalidraw
type: [architecture / roadmap / flowchart / journey / retro / sprint-board / org-map]
initiative: [related initiative name, if any]
date: YYYY-MM-DD
processed: false
---

# Excalidraw — [Type] — YYYY-MM-DD

## Context
[What question or need prompted this diagram]

## Diagram prompt used
[The exact prompt given to Claude to generate it]

## Key outputs
- [Main insight or decision visible in the diagram]
- [Dependency or relationship surfaced]
- [Open question raised by the visual]
```

**File naming:**
```
excalidraw-YYYY-MM-DD-[descriptor].md
```

Examples:
- `excalidraw-2026-03-04-problem-space.md`
- `excalidraw-2026-03-04-sprint-board.md`
- `excalidraw-2026-03-04-stakeholder-map.md`

---

## Setup

### Option 1 — Remote (Recommended, no install)

Add as a custom MCP connector in Claude settings:

```
URL: https://mcp.excalidraw.com
```

No API key, no configuration. Works immediately in Claude.ai and Claude Code.

### Option 2 — Local via Claude Desktop (.mcpb)

1. Download `excalidraw-mcp-app.mcpb` from the [Releases page](https://github.com/excalidraw/excalidraw-mcp/releases)
2. Double-click the file — installs automatically into Claude Desktop
3. Restart Claude Desktop

### Option 3 — Build from Source

```bash
git clone https://github.com/excalidraw/excalidraw-mcp.git
cd excalidraw-mcp-app
pnpm install && pnpm run build
```

Add to `~/Library/Application Support/Claude/claude_desktop_config.json`:

```json
{
  "mcpServers": {
    "excalidraw": {
      "command": "node",
      "args": ["/path/to/excalidraw-mcp-app/dist/index.js", "--stdio"]
    }
  }
}
```

Restart Claude Desktop.

**No API keys or environment variables required for any option.**

---

## Agent Integration Map

| AI-SHIPR Agent / Skill | Excalidraw use |
|---|---|
| `Problem-Framer` | Opportunity map, problem space, root cause tree |
| `Hypothesis-Builder` | Experiment logic flow, success criteria visualisation |
| `Roadmap-Planner` | Visual roadmap / strategic bets timeline |
| `Retro-Facilitator` | Retro board layout (went well / didn't / actions) |
| `Stakeholder-Translator` | Org chart, stakeholder influence map |
| `Cross-Team-Mapper` | Dependency and handoff diagram |
| `PRD-Builder` | User flow / feature architecture |
| `/today` | Sprint board snapshot |

---

## Notes

- Excalidraw diagrams have a hand-drawn aesthetic — good for workshops and presentations
- Diagrams are editable after generation (not static images)
- This integration is *generative*, not a data pipe — no scheduled exports or automation needed
- Unlike Miro, there's no "processed" workflow — diagrams are created on demand during sessions
