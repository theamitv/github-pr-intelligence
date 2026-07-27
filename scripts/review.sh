#!/usr/bin/env bash
# GitHub PR Intelligence - PR Review Script
# Usage: ./review.sh <pr-number> [options]

set -euo pipefail

PR_NUMBER="${1:-}"
if [ -z "$PR_NUMBER" ]; then
  echo "Usage: $0 <pr-number>"
  echo "Example: $0 124"
  exit 1
fi

echo "🔍 Fetching PR #$PR_NUMBER details..."
gh pr view "$PR_NUMBER" --json title,body,author,headRefName,baseRefName,additions,deletions,files,changedFiles,reviews,comments,commits,createdAt,mergedAt,closedAt,state,mergeable,rebaseable

echo ""
echo "📂 Fetching PR diff..."
gh pr diff "$PR_NUMBER"

echo ""
echo "✅ Review data collected. Run the skill in Claude Code to analyze."
