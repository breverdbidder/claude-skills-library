#!/bin/bash
# Setup script for Hetzner everest-dispatch (87.99.129.125)
# Run once to bootstrap skills directory for Claude Code
# Usage: ssh root@87.99.129.125 'bash -s' < scripts/setup-hetzner-skills.sh

set -euo pipefail

echo "🔧 Setting up Claude Code skills directory on Hetzner..."

# Create skills directory
SKILLS_DIR="/root/.claude/skills"
mkdir -p "$SKILLS_DIR"

# Create CLAUDE.md reference if not exists
CLAUDE_MD="/root/.claude/CLAUDE.md"
if [ ! -f "$CLAUDE_MD" ]; then
  cat > "$CLAUDE_MD" << 'EOF'
# Claude Code — Hetzner everest-dispatch

## Skills
Custom skills are in ~/.claude/skills/
Key skill: `/animated-ui` — animated frontend builder for BidDeed.AI & ZoneWise.AI

## House Brand (ALWAYS enforce)
- Primary: #1E3A5F (Navy)
- Accent: #F59E0B (Orange)
- Background: #020617 (Slate-950)
- Font: Inter + display pairing

## Deployment
Skills auto-deploy from GitHub breverdbidder/claude-skills-library via GitHub Actions.
Health checks run Sundays 9AM EST.
EOF
  echo "✅ Created $CLAUDE_MD"
else
  echo "⏭️  $CLAUDE_MD already exists, skipping"
fi

# Verify Claude Code is available
if command -v claude &> /dev/null; then
  echo "✅ Claude Code CLI found: $(which claude)"
  claude --version 2>/dev/null || true
else
  echo "⚠️  Claude Code CLI not found — install with: npm install -g @anthropic-ai/claude-code"
fi

# List deployed skills
echo ""
echo "=== Deployed Skills ==="
find "$SKILLS_DIR" -maxdepth 2 \( -name "SKILL.md" -o -name "skill.md" \) -exec dirname {} \; 2>/dev/null | while read dir; do
  skill_name=$(basename "$dir")
  echo "  ✅ $skill_name"
done

echo ""
echo "🎯 Setup complete. Skills will auto-deploy from GitHub on push."
echo "   Repo: breverdbidder/claude-skills-library"
echo "   Action: deploy-skills.yml"
echo ""
echo "⚠️  Required GitHub secrets:"
echo "   HETZNER_SSH_KEY — private SSH key for root@87.99.129.125"
echo "   TELEGRAM_BOT_TOKEN — for health check notifications"
echo "   TELEGRAM_CHAT_ID — Telegram chat for notifications"
