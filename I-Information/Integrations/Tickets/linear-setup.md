# Connecting Linear to AI-SHIPR

Linear connects to AI-SHIPR through the **Linear MCP server** — a bridge that lets Claude Code read (and write) your Linear workspace directly. Once connected, agents like `/today` and `/sprint` see your actual issues without you having to describe them.

---

## How it works

The Linear MCP server sits between Linear and Claude Code. It pulls your workspace state on demand and makes it available as context. AI-SHIPR agents read that context the same way they read any file — no special handling needed.

```
Linear → Linear MCP Server → Claude Code → AI-SHIPR agents
```

---

## Setup — 3 steps

### Step 1: Get your Linear workspace ready

You need:
- A **Linear workspace** account (any plan — Free, Standard, Plus, or Enterprise)
- Ability to grant OAuth access to your own user (no admin install required for personal use; for org-wide install, an admin enables the MCP integration once)

No app installation on Linear's side is needed. The MCP server is cloud-hosted by Linear at `mcp.linear.app`.

---

### Step 2: Add the MCP server to Claude Code

Open your Claude Code MCP settings file. On Mac it is at:

```
~/.claude/claude_desktop_config.json
```

Add this block:

```json
{
  "mcpServers": {
    "linear": {
      "command": "npx",
      "args": [
        "mcp-remote",
        "https://mcp.linear.app/sse"
      ]
    }
  }
}
```

**Requirement:** Node.js v18 or later must be installed. Check with `node --version` in your terminal.

If you already have an `atlassian` (Jira) block in this file, add `linear` as a sibling key inside `mcpServers` — both can coexist.

---

### Step 3: Authenticate

The first time Claude Code connects, it will open a browser window asking you to log in to Linear and approve the integration. This is a standard OAuth flow — no API keys to copy, no manual token setup.

You can revoke access at any time from Linear settings → Workspace → Integrations.

---

## Activate in AI-SHIPR

Once connected, open `Settings.md` in your AI-SHIPR folder and set:

```
tickets: active
```

And in the `Work Hierarchy` block of the same file:

```
ticket_tool: linear
epic_term: project
story_term: issue
```

That tells the agents to look for ticket data when running `/today`, `/sprint`, and related workflows, and to say "project" and "issue" the way your team does.

If you previously had `ticket_tool: jira`, change it to `linear`. AI-SHIPR uses one ticket tool at a time per vault.

---

## How Linear maps to AI-SHIPR

| Linear | AI-SHIPR | Where it lives |
|--------|----------|----------------|
| (no such object) | Goal (Strategic Bet, or Objective when `goal_source: okrs`) | AI-SHIPR |
| Initiative | Initiative | AI-SHIPR, one file each |
| (no such object) | Hypothesis, 1 to 3 per initiative | AI-SHIPR |
| Project | Linked from the initiative, names the hypothesis it tests | Linear |
| Issue, sub-issue | The source ticket on a proof record | Linear |

Linear has no epics. Projects take that place. Projects and issues are linked, never copied.

---

## What agents can now do

| Workflow | What changes with Linear connected |
|----------|------------------------------------|
| `/today` | Morning brief includes what is in progress, blocked, or due in your current cycle |
| `/sprint` | Sprint Planner reads your current cycle as the starting point |
| `Epic-Import` | Reads your active projects, groups them under initiatives, and drafts the bet behind each group for you to confirm |
| `Build_Review` | Sees what shipped vs what was committed to the cycle |
| `Sprint_Summarizer` | Compares current cycle snapshot to the previous one automatically |
| `/today` (write mode) | If approved per Governance.md Tier 2, the agent can also write to Linear — e.g. add the bet and its success metric to a project description, log a Fire incident |

---

## Saving snapshots (optional but recommended)

For agents to compare across time, drop a daily snapshot into:

```
I-Information/Integrations/Tickets/
```

File name format: `tickets-YYYY-MM-DD-cycle-name.md`

You can do this manually by copying key issues, or automate it with an n8n/Zapier flow that pulls from Linear and writes the file. See `Tickets/README.md` for the exact file format.

---

## Troubleshooting

**`npx mcp-remote` not found** — Install Node.js v18+ from nodejs.org

**OAuth window does not open** — Try restarting Claude Code after saving the config file

**"Workspace not found" after auth** — Confirm the Linear account you authenticated with belongs to the workspace you want to query

**No Linear data visible** — Confirm `tickets: active` AND `ticket_tool: linear` are set in `Settings.md`

**MCP is not set up at all / never used before** — If you have never used MCP with Claude Code, the config file may not exist yet. Create it manually:
1. Open Terminal and run: `mkdir -p ~/.claude && touch ~/.claude/claude_desktop_config.json`
2. Open the file and add the full JSON block from Step 2 above
3. Restart Claude Code — it will pick up the new config on launch

You can verify MCP is active by typing `/mcp` in Claude Code. If the Linear server appears in the list, the connection is ready.

---

## Linear-specific notes

- **Cycles, not sprints** — Linear calls them cycles. AI-SHIPR workflows treat them as sprints in language but read them from the cycle endpoint.
- **Projects and initiatives** — A Linear initiative maps to an AI-SHIPR initiative. A Linear project is what other tools call an epic: link it from the initiative's Linked Epics table. A Linear initiative never maps to the Goal.
- **Initiatives through the connection** — The Linear connection lists each project with the initiatives it belongs to, and can filter projects by initiative. `Epic-Import` uses that as its starting grouping. Projects that belong to no initiative get a proposed grouping for you to confirm.
- **Health** — Linear project health (On track, At risk, Off track) maps to initiative Status (`Active`, `At Risk`).
- **Customer requests** — Requests attached to an issue or project are proof. File them in a signal log with the issue as the source ticket.
- **Triage state** — If your workspace uses Linear's Triage, agents will surface untriaged items in `/today` so you don't lose them.

---

*Source: https://linear.app/docs/mcp · https://mcp.linear.app/sse*
