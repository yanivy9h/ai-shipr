#!/bin/bash

# create-student-package.sh
# Builds the AI-SHIPR.zip for student distribution.
# Run from the ABC-TOM/ root folder.
#
# Usage: bash workshop-plan/create-student-package.sh
# Output: workshop-plan/AI-SHIPR.zip

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ABC_TOM_DIR="$(dirname "$SCRIPT_DIR")"
SOURCE_DIR="$ABC_TOM_DIR/AI-SHIPR"
TEMP_DIR="$SCRIPT_DIR/build-temp"
OUTPUT_NAME="AI-SHIPR"
OUTPUT_DIR="$TEMP_DIR/$OUTPUT_NAME"
ZIP_OUTPUT="$ABC_TOM_DIR/AI-SHIPR.zip"

echo "AI-SHIPR Student Package Builder"
echo "================================="
echo "Source:  $SOURCE_DIR"
echo "Output:  $ZIP_OUTPUT"
echo ""

# Verify source exists
if [ ! -d "$SOURCE_DIR" ]; then
  echo "ERROR: AI-SHIPR folder not found at $SOURCE_DIR"
  echo "Run this script from the ABC-TOM/ root or adjust the path."
  exit 1
fi

# Clean and create temp dir
rm -rf "$TEMP_DIR"
mkdir -p "$OUTPUT_DIR"

# Copy AI-SHIPR into temp dir
echo "Copying AI-SHIPR..."
cp -r "$SOURCE_DIR/." "$OUTPUT_DIR/"

# --- Remove internal/private files ---

echo "Removing internal files..."

# Remove Yaniv's personal Workshop/ folder (marketing pages)
rm -rf "$OUTPUT_DIR/Workshop"

# Remove internal roadmap
rm -f "$OUTPUT_DIR/ToDo.md"

# Remove Workshop subfolder inside Workshop if nested
rm -rf "$OUTPUT_DIR/Workshop"

# Reset PM-Voice.md to blank template (remove Yaniv's personal voice)
cat > "$OUTPUT_DIR/R-Relationships/Me/PM-Voice.md" << 'EOF'
# PM Voice

*This file is empty. Populate it with your writing samples so AI-SHIPR can mirror your natural communication style.*

## How to Populate This File

Paste 3-5 examples of your real writing:
- A Slack message to your engineering lead
- A stakeholder update you sent to leadership
- A decision log entry in your own words
- A sprint summary you wrote yourself

Then run the `/voice` command (Create-PM-Voice skill) and AI-SHIPR will generate a structured voice profile.
EOF

# Reset Learning.md to header-only
cat > "$OUTPUT_DIR/Learning.md" << 'EOF'
# Learning Log

What we have learned across sessions. Updated after every session where something new was validated.

---

## Format

Each entry: date, what was learned, source (initiative / experiment / observation), and implication.

---

## Log

*(No entries yet. Update this file at the end of each session.)*
EOF

# Reset PM-Profile.md to template if it contains personal data
# (leave it if it's already a template — check for personal name indicators)
if grep -q "Yaniv\|yaniv" "$OUTPUT_DIR/R-Relationships/Me/PM-Profile.md" 2>/dev/null; then
  cat > "$OUTPUT_DIR/R-Relationships/Me/PM-Profile.md" << 'EOF'
# PM Profile

## Who This Is

**Name:**
**Title:**
**Age (optional):**
**Tenure at company:**

---

## Role

*(What does this PM own? What squad? Who do they report to?)*

---

## Current Challenge

*(What is the hardest thing this PM is dealing with right now? What keeps them up at night?)*

---

## Operating Preference

*(How does this PM like to work? Fast and direct? Collaborative? Data-first? Gut-feel?)*

---

## Working Style

*(How do they run meetings? How do they communicate with engineers? What do they do well? What are their blind spots?)*

---

## Stakeholders They Work With Most

*(List 3-5 key stakeholders, their roles, and what the dynamic is like)*

---

*Populate this file before running any agent. Generic output is worse than no output.*
EOF
fi

# Clear out personal data from S-Strategy files
# (keep the templates but clear values if they contain Yaniv's projects)
# Only reset if files contain specific project names we know are Yaniv's
for f in "$OUTPUT_DIR/S-Strategy/Vision.md" "$OUTPUT_DIR/S-Strategy/KPIs.md" "$OUTPUT_DIR/S-Strategy/Strategic-Bets.md"; do
  if [ -f "$f" ]; then
    # Check if file has placeholder [brackets] — already a template, keep it
    if grep -q "verve-pm\|Verve-PM\|AI-SHIPR Workshop\|GreenVoice" "$f" 2>/dev/null; then
      # This is a personal/demo file — clear to template
      BASENAME=$(basename "$f" .md)
      cat > "$f" << EOF
# $BASENAME

*(Populate this file using the \`Populate-Strategy\` workflow or \`Setup_Worksheet.md\`)*

---
EOF
    fi
  fi
done

# Clear initiatives (remove any pre-filled initiatives, keep only template)
find "$OUTPUT_DIR/I-Initiatives/" -name "INI-*.md" -delete 2>/dev/null || true

# Clear hypotheses (remove any pre-filled hypotheses, keep only template)
find "$OUTPUT_DIR/H-Hypotheses/" -name "HYP-*.md" -delete 2>/dev/null || true

# Clear P-Proof experiments
find "$OUTPUT_DIR/P-Proof/" -name "EXP-*.md" -delete 2>/dev/null || true

# Clear stakeholders and meeting log personal data
if grep -q "Yaniv\|yaniv" "$OUTPUT_DIR/R-Relationships/Stakeholders/Stakeholders.md" 2>/dev/null; then
  cat > "$OUTPUT_DIR/R-Relationships/Stakeholders/Stakeholders.md" << 'EOF'
# Stakeholders

*(Map your key stakeholders here. One entry per person.)*

---

## Template

**Name:**
**Role / Title:**
**What they care about most:**
**How to communicate with them:**
**Trust level with product:** High / Medium / Low
**Key concern or objection:**
EOF
fi

# Clear Meeting-Log
if [ -f "$OUTPUT_DIR/R-Relationships/Stakeholders/Meeting-Log.md" ]; then
  cat > "$OUTPUT_DIR/R-Relationships/Stakeholders/Meeting-Log.md" << 'EOF'
# Meeting Log

*(Log key meetings here after they happen. One entry per meeting.)*

---

## Template

### [Date] — [Meeting name]

**Who was there:**
**What was decided:**
**What was not decided (open):**
**Next action:**
EOF
fi

# Clear Personas if personal
if grep -q "Yaniv\|yaniv" "$OUTPUT_DIR/R-Relationships/Users/Personas.md" 2>/dev/null; then
  cat > "$OUTPUT_DIR/R-Relationships/Users/Personas.md" << 'EOF'
# Personas

*(Build user personas using the \`Persona-Builder\` skill.)*

---

## Template

**Name:**
**Role:**
**Goal:**
**Pain:**
**Behavior:**
**Quote:**
EOF
fi

# Clear 00-Inbox
find "$OUTPUT_DIR/00-Inbox/" -type f -not -name ".gitkeep" -delete 2>/dev/null || true

# Clear I-Information/Integrations content
find "$OUTPUT_DIR/I-Information/Integrations/" -type f -not -name "*.md" -delete 2>/dev/null || true

# --- Build ZIP ---

echo ""
echo "Building ZIP..."

# Remove existing ZIP if present
rm -f "$ZIP_OUTPUT"

# Create ZIP from temp dir
cd "$TEMP_DIR"
zip -r "$ZIP_OUTPUT" "$OUTPUT_NAME" -x "*.DS_Store" -x "*/.DS_Store" -x "__MACOSX/*"

# Clean up temp dir
cd "$ABC_TOM_DIR"
rm -rf "$TEMP_DIR"

echo ""
echo "Done."
echo "Output: $ZIP_OUTPUT"
echo ""
echo "Verify before distributing:"
echo "  1. Unzip AI-SHIPR.zip in a fresh location"
echo "  2. Open in Obsidian as a vault"
echo "  3. Confirm PM-Voice.md is blank template"
echo "  4. Confirm Learning.md is header-only"
echo "  5. Confirm no INI- or HYP- files in Initiatives/Hypotheses"
echo "  6. Open with Claude Code and run /today — should flag missing data"
