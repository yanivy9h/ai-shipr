#!/bin/bash
# AI-SHIPR SessionStart hook — Learning.md staleness check.
#
# Fires once at session start. If Learning.md hasn't been updated in more
# than 7 days, injects context so Claude flags this and asks about
# backfill before the first substantive response.

set -e

LEARNING="$CLAUDE_PROJECT_DIR/Learning.md"

if [ ! -f "$LEARNING" ]; then
  exit 0
fi

if [ -z "$(find "$LEARNING" -mtime +7 -print 2>/dev/null)" ]; then
  exit 0
fi

cat <<'EOF'
{
  "hookSpecificOutput": {
    "hookEventName": "SessionStart",
    "additionalContext": "AI-SHIPR memory check: Learning.md has not been updated in more than 7 days. Before answering the user's first substantive request, briefly note this and ask if anything from recent sessions should be backfilled. After their answer (or skip), proceed normally. Do not surface this on subsequent prompts in this session."
  }
}
EOF
