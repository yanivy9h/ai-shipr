#!/bin/bash
# AI-SHIPR UserPromptSubmit hook — memory-cue detection.
#
# Detects phrases that signal a persistent instruction ("remember",
# "from now on", "next time", etc., in English and Hebrew). When matched,
# injects context so Claude proposes a Learning Candidate before continuing
# the main task.

set -e

input=$(cat)

prompt=$(printf '%s' "$input" | python3 -c "
import json, sys
try:
    print(json.load(sys.stdin).get('prompt', ''))
except Exception:
    pass
" 2>/dev/null)

if [ -z "$prompt" ]; then
  exit 0
fi

EN_PATTERN='\b(remember|from now on|next time|don'\''?t forget|stop doing|going forward|always do|never do)\b'
HE_PATTERN='תזכור|מעכשיו|מהיום והלאה|בפעם הבאה|אל תשכח|תפסיק לעשות'

if printf '%s' "$prompt" | grep -qiE "$EN_PATTERN" \
   || printf '%s' "$prompt" | grep -qE "$HE_PATTERN"; then
  cat <<'EOF'
{
  "hookSpecificOutput": {
    "hookEventName": "UserPromptSubmit",
    "additionalContext": "AI-SHIPR memory cue detected. Before continuing the main task, propose what should be captured as a Learning Candidate in Learning.md (or as a feedback entry if the cue is a correction). Confirm with the user (yes / no / edit). Only proceed with the original task after explicit confirmation."
  }
}
EOF
fi
