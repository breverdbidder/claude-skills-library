# AVIZ Skills Library

This is the official AVIZ Skills Library repository - a collection of Claude Code skills.

## Repository Structure

```
claude-skills-library/
├── skills/                  # All skills live here
│   └── {skill-name}/
│       ├── SKILL.md         # Required - main skill file
│       ├── scripts/         # Optional - executable code
│       ├── references/      # Optional - additional docs
│       └── assets/          # Optional - static files
├── docs/                    # GitHub Pages site
│   ├── index.html           # Main landing page
│   ├── skills/              # Individual skill documentation
│   │   └── {skill-name}.html
│   └── downloads/           # ZIP files for download
├── plugin/                  # Claude Code plugin package
└── .claude-plugin/          # Plugin marketplace config
```

## Conventions for Adding New Skills

### Required Files

Every skill MUST have:

1. **`skills/{skill-name}/SKILL.md`** - Main skill file with YAML frontmatter:
   ```yaml
   ---
   name: skill-name
   description: What the skill does and trigger keywords
   ---
   ```

2. **`docs/skills/{skill-name}.html`** - Documentation page on GitHub Pages with:
   - What the skill does
   - Prerequisites (API keys, npm packages)
   - Step-by-step setup instructions
   - Usage examples
   - Troubleshooting

### Optional Files

- **`scripts/`** - Executable code (TypeScript, Python, Bash)
- **`scripts/package.json`** - If using npm dependencies
- **`scripts/.env.example`** - If using API keys (template only!)
- **`references/`** - Additional documentation for context
- **`assets/`** - Static files (templates, images)

### Naming Conventions

- Skill folder: `kebab-case` (e.g., `html-to-pdf`)
- SKILL.md name field: same as folder name
- Documentation page: `{skill-name}.html`

### Skills with API Keys

1. Create `.env.example` with placeholders:
   ```
   API_KEY=your_api_key_here
   ```
2. Never commit actual `.env` files
3. Document how to obtain keys in the docs page

### Skills with npm Dependencies

1. Include `package.json` in `scripts/`
2. The installer auto-runs `npm install`
3. Document any special setup steps

## After Adding a New Skill

The `aviz-skills-installer` skill automatically fetches the skill list from the website. To make your skill discoverable:

1. Add the skill to `skills/`
2. Create the documentation page in `docs/skills/`
3. Update `docs/index.html` to list the new skill in the skills grid
4. Commit and push - the installer will find it automatically!

## Updating Downloads

When updating the installer skill, regenerate the ZIP files:

```bash
cd skills && zip -r ../docs/downloads/aviz-skills-installer.zip aviz-skills-installer
cd .. && zip -r docs/downloads/aviz-skills-installer-plugin.zip plugin
```

## Links

- Website: https://aviz.github.io/claude-skills-library/
- GitHub: https://github.com/aviz85/claude-skills-library
- Contributing: See CONTRIBUTING.md


<!-- KARPATHY_DISCIPLINE_BEGIN v1.0 -->
## Behavioral Discipline (Karpathy Guidelines)

> Adapted from [forrestchang/andrej-karpathy-skills](https://github.com/forrestchang/andrej-karpathy-skills) · MIT License · ~14k★ · Karpathy-starred.
> Adopted by Everest Capital 2026-04-12. This section is **complementary** to the existing HONESTY PROTOCOL, PAIRING RULE, COST DISCIPLINE, and CLI-ANYTHING mandates above — it does not replace them.

**Tradeoff posture:** These guidelines bias toward caution over speed. For trivial tasks (typo fix, one-line config), use judgment and skip the ceremony.

### K1. Think Before Coding *(reinforces HONESTY PROTOCOL)*

Don't assume. Don't hide confusion. Surface tradeoffs.

- State assumptions explicitly. If uncertain, label as `INFERRED` per HONESTY PROTOCOL.
- If multiple interpretations exist, present them — don't pick silently.
- If a simpler approach exists, say so. Push back when warranted.
- If something is unclear, stop. Name what's confusing. Ask.

**Everest delta:** when an assumption is surfaced, it must carry a `VERIFIED / UNTESTED / INFERRED` tag. Wrong `VERIFIED` = 3× penalty to honesty_violations table.

### K2. Simplicity First *(complements XGBoost efficiency cap)*

Minimum code that solves the problem. Nothing speculative.

- No features beyond what was asked.
- No abstractions for single-use code.
- No "flexibility" or "configurability" that wasn't requested.
- No error handling for impossible scenarios.
- If you write 200 lines and 50 would do, rewrite.

Ask: "Would a senior engineer call this overcomplicated?" If yes, simplify.

**Everest delta:** this is per-diff. XGBoost efficiency (90 min/chat, max 3 chats/task) is per-session. Both apply.

### K3. Surgical Changes *(NEW — closes AUTOLOOP evolver bloat gap)*

Touch only what you must. Clean up only your own mess.

When editing existing code:
- Don't "improve" adjacent code, comments, or formatting.
- Don't refactor things that aren't broken.
- Match existing style, even if you'd do it differently.
- If you notice unrelated dead code, **mention it — don't delete it.**

When your changes create orphans:
- Remove imports/variables/functions that YOUR changes made unused.
- Don't remove pre-existing dead code unless explicitly asked.

**The test:** every changed line must trace directly to the user's request.

**Everest delta — AUTOLOOP V2 evolver constraint:** prompt/rule updates produced by the evolver must be **minimal and surgical**. Diffs that exceed 20% line growth or touch sections unrelated to the failing case must be rejected by the evolver's self-check and re-attempted with a narrower edit. This closes the bloat failure mode flagged by Dylan Cleppe's extraction-funnel analysis (2026-04-12) and by Karpathy directly.

### K4. Goal-Driven Execution *(complements EG14 gate)*

Define success criteria. Loop until verified.

Transform tasks into verifiable goals:
- "Add validation" → "Write tests for invalid inputs, then make them pass"
- "Fix the bug" → "Write a test that reproduces it, then make it pass"
- "Refactor X" → "Ensure tests pass before and after"

For multi-step tasks, state a brief plan:
```
1. [Step] → verify: [check]
2. [Step] → verify: [check]
3. [Step] → verify: [check]
```

Strong success criteria let you loop independently. Weak criteria ("make it work") require constant clarification.

**Everest delta:** for SUMMIT dispatches touching production (zonewise-web, dify-zonewise, nexus), the EG14 14-point enterprise gate is the canonical success criteria. Goal-driven execution at the sub-task level must compose up to an EG14 verdict, not replace it.

### Working indicators

These guidelines are working if:
- Fewer unnecessary changes appear in diffs.
- Fewer rewrites happen due to overcomplication.
- Clarifying questions arrive *before* implementation, not after mistakes.
- AUTOLOOP evolver prompt diffs stay small and targeted.

### Attribution

Source: https://github.com/forrestchang/andrej-karpathy-skills (MIT)
Upstream quote from Karpathy: *"LLMs are exceptionally good at looping until they meet specific goals. Don't tell it what to do, give it success criteria and watch it go."*
<!-- KARPATHY_DISCIPLINE_END v1.0 -->
