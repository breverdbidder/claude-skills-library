# /animated-ui — Claude Code Skill

## Installation (Claude Code)

```bash
# Create skill directory
mkdir -p ~/.claude/skills/animated-ui/references

# Copy skill files
cp SKILL.md ~/.claude/skills/animated-ui/SKILL.md
cp references/animation-patterns.css ~/.claude/skills/animated-ui/references/animation-patterns.css
```

Or tell Claude Code directly:

```
Save the contents of this folder as a slash command skill called /animated-ui
```

## Usage

In Claude Code:
```
/animated-ui
> Build the BidDeed.AI landing page with animated hero section
```

```
/animated-ui
> Redesign the ZoneWise.AI dashboard sidebar with animated nav transitions
```

## Required API Keys / Tools

| Tool | Purpose | Setup |
|------|---------|-------|
| 21st.dev | Animated component prompts | Browse site, copy prompts — no API key needed |
| Google Stitch | AI UI generation | Get key at stitch.withgoogle.com → Settings → Create Key |
| Nano Banana Pro | AI image generation | Use via OpenRouter API key |
| Framer Motion | React animations | `npm install framer-motion` (auto-installed) |

## Files

```
animated-ui/
├── SKILL.md                          # Main skill (slash command)
├── README.md                         # This file
└── references/
    └── animation-patterns.css        # Copy-paste animation patterns
```
