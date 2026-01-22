# BidDeed.AI Investor Deck Skill

A Claude Code skill for generating comprehensive investor pitch decks for BidDeed.AI and similar real estate AI platforms.

## Features

- **15-slide standard structure** covering Problem → Solution → Traction → Ask
- **Brand guidelines** with exact colors, typography, layouts
- **Customization variables** for different fundraising scenarios
- **Appendix templates** for technical deep-dives

## Usage

When using Claude Code, trigger this skill with keywords like:
- "Create investor deck"
- "Generate pitch presentation"
- "Make fundraising deck"
- "Investor pitch for BidDeed"

## Output

The skill generates a detailed Markdown blueprint specifying:
- Exact text content (no placeholders)
- Typography specifications
- Layout positions
- Visual element descriptions
- Color codes

This blueprint can then be fed to presentation tools (PowerPoint, Google Slides, Figma) or other Claude skills (like html-to-pptx).

## Customization

| Variable | Default | Description |
|----------|---------|-------------|
| `RAISE_AMOUNT` | $250K | Fundraising target |
| `VALUATION_CAP` | $2M | SAFE cap |
| `CURRENT_COUNTIES` | 3 | Live counties |
| `TARGET_COUNTIES` | 67 | Q1 2026 target |
| `ML_ACCURACY` | 64.4% | XGBoost accuracy |

## Author

breverdbidder / Everest Capital USA

## License

MIT
