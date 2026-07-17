#!/usr/bin/env bash
set -euo pipefail

REPO_DIR="/home/satoshi/ai-workflows"
LOG_FILE="$HOME/.ai-workflows-autopush.log"

cd "$REPO_DIR"

{
  echo "=== $(date '+%Y-%m-%d %H:%M:%S') ==="

  git add -A

  if git diff --cached --quiet; then
    echo "No changes to commit."
  else
    git commit -m "Auto-commit: $(date '+%Y-%m-%d %H:%M:%S')"
    git push origin main
    echo "Committed and pushed."
  fi
} >> "$LOG_FILE" 2>&1
