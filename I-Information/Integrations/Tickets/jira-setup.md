# Connecting Jira to AI-SHIPR

Jira connects to AI-SHIPR through the **Atlassian MCP server** — a bridge that lets Claude Code read your Jira board directly. Once connected, agents like `/today` and `/sprint` see your actual tickets without you having to describe them.

---

## How it works

The Atlassian MCP server sits between Jira and Claude Code. It pulls your board state on demand and makes it available as context. AI-SHIPR agents read that context the same way they read any file — no special handling needed.

```
Jira → Atlassian MCP Server → Claude Code → AI-SHIPR agents
```

---

## Setup — 3 steps

### Step 1: Get your Atlassian site ready

You need:
- An **Atlassian Cloud** account (Jira Cloud, not Server or Data Center)
- Admin access, or ask your admin to enable MCP

No app installation on Jira's side is needed. The MCP server is cloud-hosted by Atlassian.

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
    "atlassian": {
      "command": "npx",
      "args": [
        "mcp-remote",
        "https://mcp.atlassian.com/v1/mcp"
      ]
    }
  }
}
```

**Requirement:** Node.js v18 or later must be installed. Check with `node --version` in your terminal.

---

### Step 3: Authenticate

The first time Claude Code connects, it will open a browser window asking you to log in to Atlassian. This is a standard OAuth flow — no passwords stored, no manual token setup required.

If your admin has enabled API token authentication instead, you can use that as an alternative.

---

## Activate in AI-SHIPR

Once connected, open `Settings.md` in your AI-SHIPR folder and set:

```
tickets: active
source: jira
```

That tells the agents to look for ticket data when running `/today`, `/sprint`, and related workflows.

---

## What agents can now do

| Workflow | What changes with Jira connected |
|----------|----------------------------------|
| `/today` | Morning brief includes what is in progress, blocked, or due today |
| `/sprint` | Sprint Planner reads your current board state as the starting point |
| `Build_Review` | Sees what actually shipped vs what was committed |
| `Sprint_Summarizer` | Compares current snapshot to last week automatically |

---

## Saving snapshots (optional but recommended)

For agents to compare across time, drop a daily snapshot into:

```
I-Information/Integrations/Tickets/
```

File name format: `tickets-YYYY-MM-DD-sprint-name.md`

You can do this manually by copying key tickets, or automate it with an n8n/Zapier flow that pulls from Jira and writes the file. See `Tickets/README.md` for the exact file format.

---

## Troubleshooting

**`npx mcp-remote` not found** — Install Node.js v18+ from nodejs.org

**OAuth window does not open** — Try restarting Claude Code after saving the config file

**No Jira data visible** — Confirm `tickets: active` is set in `Settings.md` and that your Atlassian account has access to the relevant Jira project

**MCP is not set up at all / never used before** — If you have never used MCP with Claude Code, the config file may not exist yet. Create it manually:
1. Open Terminal and run: `mkdir -p ~/.claude && touch ~/.claude/claude_desktop_config.json`
2. Open the file and add the full JSON block from Step 2 above
3. Restart Claude Code — it will pick up the new config on launch
You can verify MCP is active by typing `/mcp` in Claude Code. If the Atlassian server appears in the list, the connection is ready.

---

*Source: https://support.atlassian.com/atlassian-rovo-mcp-server/docs/getting-started-with-the-atlassian-remote-mcp-server/*
