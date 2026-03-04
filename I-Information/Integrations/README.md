# Integrations

External tools pipe data into this folder as `.md` files.
Agents read from here. They do not connect to external tools directly.

The architecture is intentional: integrations are **pipes, not agents**.
An automation (n8n, Zapier, a script, or an MCP server) pulls data from the source tool
and drops it here in a readable format. AI-SHIPR agents then read it as they would any file.

This keeps integrations stable and replaceable — swap the pipe without touching the agents.

---

## Active Integrations

| Folder       | Source              | Status   | How it pipes in                                      |
|--------------|---------------------|----------|------------------------------------------------------|
| Slack/       | Slack channels      | Active   | MCP server or n8n → drops .md thread files           |
| Email/       | Email client        | Active   | Manual export or n8n → drops .md summaries           |
| Miro/        | Miro boards         | Optional | Manual export or Miro API + n8n → drops .md summaries |
| Excalidraw/  | Excalidraw MCP      | Optional | Claude generates diagrams on demand via MCP — generative, not a pipe |
| Teams/       | MS Teams            | Inactive | MCP (not yet available) or n8n                       |
| Tickets/     | Linear/Jira/ClickUp | Inactive | MCP server → drops sprint/board snapshot             |

Update `Settings.md` to activate or deactivate each integration.

---

## File naming convention

Each integration folder contains dated `.md` files:
```
slack-2026-02-26-product-channel.md
email-2026-02-25-stakeholder-digest.md
tickets-2026-02-26-sprint-board.md
```

Agents read the most recent file in each active folder unless asked for a specific date.

---

## How to set up each integration

See the README.md inside each subfolder.
