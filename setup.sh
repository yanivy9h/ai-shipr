#!/bin/bash

# setup.sh — Installs AI-SHIPR slash commands into Claude Code.
#
# Slash commands live in A-AI/AI-Skills/ alongside all other skills.
# Any skill file with a 'name:' field in its YAML frontmatter is
# automatically installed as a slash command.
#
# Run this once after unzipping, or to restore slash commands if they stop working.
# Safe to re-run: existing commands are overwritten with the latest version.
#
# Usage:
#   bash setup.sh

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SKILLS_SOURCE="$SCRIPT_DIR/A-AI/AI-Skills"
SKILLS_TARGET="$SCRIPT_DIR/.claude/skills"

echo "AI-SHIPR Slash Command Setup"
echo "============================="

if [ ! -d "$SKILLS_SOURCE" ]; then
  echo "Error: AI-Skills folder not found at $SKILLS_SOURCE"
  echo "Make sure you are running this from the AI-SHIPR root folder."
  exit 1
fi

mkdir -p "$SKILLS_TARGET"

count=0
for skill_file in "$SKILLS_SOURCE"/*.md; do
  [ -f "$skill_file" ] || continue

  # Extract 'name:' from YAML frontmatter (between first pair of --- markers)
  skill_name=$(awk '
    BEGIN { in_front=0 }
    /^---/ { if (in_front==0) { in_front=1; next } else { exit } }
    in_front && /^name:/ { gsub(/^name:[[:space:]]*/, ""); print; exit }
  ' "$skill_file")

  if [ -n "$skill_name" ]; then
    mkdir -p "$SKILLS_TARGET/$skill_name"
    cp "$skill_file" "$SKILLS_TARGET/$skill_name/SKILL.md"
    echo "  installed: /$skill_name"
    count=$((count + 1))
  fi
done

echo ""
echo "$count slash commands installed to .claude/skills/"
echo ""
echo "Restart Claude Code to activate."
echo "Then try: /today"
