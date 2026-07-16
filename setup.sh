#!/bin/bash

# setup.sh — Installs AI-SHIPR capabilities into Claude Code.
#
# Scans three source folders: A-AI/AI-Skills/, A-AI/AI-Agents/, A-AI/AI-Workflows/.
# Any file with a 'name:' field in its YAML frontmatter is installed as
# .claude/skills/<name>/SKILL.md.
#
# Files marked 'user-invocable: false' load as skills the model can auto-invoke
# but do not appear in / autocomplete. Files without that field become slash
# commands the user can type directly.
#
# Run this once after unzipping, or to restore capabilities if they stop working.
# Safe to re-run: existing entries are overwritten with the latest version.
#
# Usage:
#   bash setup.sh

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SOURCES=(
  "$SCRIPT_DIR/A-AI/AI-Skills"
  "$SCRIPT_DIR/A-AI/AI-Agents"
  "$SCRIPT_DIR/A-AI/AI-Workflows"
)
SKILLS_TARGET="$SCRIPT_DIR/.claude/skills"

echo "AI-SHIPR Capability Setup"
echo "========================="

for src in "${SOURCES[@]}"; do
  if [ ! -d "$src" ]; then
    echo "Error: source folder not found: $src"
    echo "Make sure you are running this from the AI-SHIPR root folder."
    exit 1
  fi
done

mkdir -p "$SKILLS_TARGET"

visible=0
hidden=0
skipped=0
for src in "${SOURCES[@]}"; do
  for source_file in "$src"/*.md; do
    [ -f "$source_file" ] || continue

    # Extract 'name:' and check for 'user-invocable: false' inside the first
    # YAML frontmatter block (between the first pair of --- markers).
    skill_name=$(awk '
      BEGIN { in_front=0 }
      /^---/ { if (in_front==0) { in_front=1; next } else { exit } }
      in_front && /^name:/ {
        sub(/^name:[[:space:]]*/, "")
        sub(/[[:space:]]+$/, "")
        print
        exit
      }
    ' "$source_file")

    if [ -z "$skill_name" ]; then
      skipped=$((skipped + 1))
      continue
    fi

    user_invocable=$(awk '
      BEGIN { in_front=0; ui="true" }
      /^---/ { if (in_front==0) { in_front=1; next } else { exit } }
      in_front && /^user-invocable:[[:space:]]*false[[:space:]]*$/ { ui="false" }
      END { print ui }
    ' "$source_file")

    mkdir -p "$SKILLS_TARGET/$skill_name"
    cp "$source_file" "$SKILLS_TARGET/$skill_name/SKILL.md"
    if [ "$user_invocable" = "false" ]; then
      echo "  installed (hidden):  $skill_name"
      hidden=$((hidden + 1))
    else
      echo "  installed (slash):   /$skill_name"
      visible=$((visible + 1))
    fi
  done
done

total=$((visible + hidden))
echo ""
echo "Installed $total capabilities to .claude/skills/"
echo "  $visible visible as slash commands"
echo "  $hidden hidden (model auto-invoke only)"
if [ "$skipped" -gt 0 ]; then
  echo "  $skipped files skipped (no name: in frontmatter)"
fi

# Make hook scripts executable. Required for the SessionStart and
# UserPromptSubmit hooks declared in .claude/settings.json. Unzip on macOS
# and Linux strips the executable bit, so this is run on every setup.
if [ -d "$SCRIPT_DIR/.claude/hooks" ]; then
  chmod +x "$SCRIPT_DIR/.claude/hooks"/*.sh 2>/dev/null || true
  hook_count=$(find "$SCRIPT_DIR/.claude/hooks" -name "*.sh" -type f 2>/dev/null | wc -l | tr -d ' ')
  if [ "$hook_count" -gt 0 ]; then
    echo "  $hook_count hook scripts made executable"
  fi
fi

echo ""
echo "Restart Claude Code to activate."
echo "Then try: /today"
