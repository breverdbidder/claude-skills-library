---
name: animated-ui
description: Build animated, production-grade frontends for BidDeed.AI and ZoneWise.AI that avoid AI slop. Use this slash command skill whenever building or redesigning UI pages, landing pages, dashboards, or components for BidDeed.AI or ZoneWise.AI. Triggers on /animated-ui. Also use when the user mentions "make it look good", "animation", "redesign UI", "landing page", "hero section", "dashboard design", or wants to escape generic AI aesthetics on any house brand property.
user_invocable: true
---

# Animated UI Builder — BidDeed.AI & ZoneWise.AI

Build distinctive, animated frontends that enforce house brand identity while looking nothing like AI slop. This is a **slash command skill** (`/animated-ui`) — invoke it explicitly before any UI build session.

## House Brand (MANDATORY — never deviate)

```
PRIMARY:    #1E3A5F (Navy)
ACCENT/CTA: #F59E0B (Orange)
FONT:       Inter (body), plus one distinctive display font per project
BACKGROUND: #020617 (Slate-950)
SOURCE:     zonewise-web globals.css + BRAND_COLORS.md
```

**CSS Variables (inject into every project):**
```css
:root {
  --brand-navy: #1E3A5F;
  --brand-orange: #F59E0B;
  --brand-bg: #020617;
  --brand-surface: #0F172A;
  --brand-text: #F8FAFC;
  --brand-muted: #94A3B8;
  --brand-success: #22C55E;
  --brand-danger: #EF4444;
  --brand-border: rgba(30, 58, 95, 0.4);
}
```

## Pipeline (execute in order)

### Phase 1: Design System Generation

Before writing ANY code, establish the design system:

1. **Determine target** — Which property? BidDeed.AI (auction intelligence, data-heavy dashboards) or ZoneWise.AI (zoning maps, spatial data, municipal tools)?
2. **Pick aesthetic direction** based on target:
   - **BidDeed.AI**: Dark luxury fintech. Think Bloomberg terminal meets premium SaaS. Data density with elegant hierarchy. Animated data transitions.
   - **ZoneWise.AI**: Dark cartographic intelligence. Map-forward, spatial-aware layouts. Animated map overlays, parcel highlights, zone transitions.
3. **Select display font** — NEVER use Inter alone. Pair Inter body with one of: `Space Grotesk`, `Sora`, `Outfit`, `Clash Display`, `Cabinet Grotesk`, `Satoshi`, `General Sans`. Load from Google Fonts or Fontsource.
4. **Define spacing scale**: 4px base. Use `space-{1-16}` tokens.
5. **Define animation tokens** (see Phase 3).

### Phase 2: Component Sourcing from 21st.dev

Before building custom components, check [21st.dev](https://21st.dev) for pre-built animated components:

**Priority components to source:**
- Hero sections (animated backgrounds, particle effects, globe, mesh gradients)
- CTA buttons (hover tracking, magnetic effects, glow)
- Card hover states (tilt, reveal, shimmer)
- Navigation patterns (blur, morph, slide)
- Background effects (shooting stars, grid, dots, waves, aurora)
- Loading/skeleton states (shimmer, pulse, wave)

**How to use 21st.dev components:**
1. Browse 21st.dev → find component matching the section you're building
2. Copy the component prompt (NOT the code directly)
3. Adapt the prompt to house brand colors before generating
4. Generate with brand constraints: "Use navy #1E3A5F as primary, orange #F59E0B as accent, on slate-950 #020617 background"

**Component adaptation rules:**
- Replace ALL colors with house brand CSS variables
- Replace font families with project display + Inter pairing
- Ensure animations respect `prefers-reduced-motion`
- Add `will-change` hints for GPU-accelerated properties only
- Keep bundle impact minimal — CSS-only animations preferred over JS

### Phase 3: Animation System

**Animation tokens (define once, use everywhere):**
```css
:root {
  /* Durations */
  --duration-fast: 150ms;
  --duration-normal: 300ms;
  --duration-slow: 500ms;
  --duration-dramatic: 800ms;

  /* Easings */
  --ease-out-expo: cubic-bezier(0.16, 1, 0.3, 1);
  --ease-out-back: cubic-bezier(0.34, 1.56, 0.64, 1);
  --ease-spring: cubic-bezier(0.22, 1.36, 0.36, 1);
  --ease-smooth: cubic-bezier(0.45, 0, 0.55, 1);

  /* Stagger base */
  --stagger-base: 60ms;
}
```

**Mandatory animations (every page MUST have):**
1. **Page load** — Staggered fade-up reveals (`animation-delay` cascade). Hero content first, then sections.
2. **Scroll triggers** — Elements animate in on scroll via `IntersectionObserver`. No libraries needed.
3. **Hover states** — Every interactive element must have a hover animation. Buttons: scale + glow. Cards: lift + shadow. Links: underline slide or color shift.
4. **Data transitions** — Numbers count up. Charts animate in. Tables fade-stagger rows.
5. **Micro-interactions** — Toggle switches, checkbox ticks, dropdown reveals, toast notifications.

**Animation implementation priority:**
1. CSS-only (keyframes, transitions) — PREFERRED for 80% of cases
2. IntersectionObserver + CSS classes — for scroll-triggered reveals
3. Framer Motion (React) — for complex orchestrated sequences
4. GSAP — only for timeline-heavy hero animations (rarely needed)

**NEVER:**
- Animate layout properties (width, height, top, left) — use transform instead
- Use `transition: all` — always specify exact properties
- Create animations longer than 1.2s (feels sluggish)
- Animate more than 3 properties simultaneously on one element
- Skip `prefers-reduced-motion` media query

### Phase 4: Image & Asset Strategy

**For product/hero images:**
- Use Nano Banana Pro (via OpenRouter API) for realistic generated images
- Prompt format: "Professional product photo, [description], studio lighting, dark background matching #020617, orange accent lighting #F59E0B"
- Alternative: Google Stitch API for AI-generated UI mockups within the design

**For icons:**
- Lucide React (already in stack) — outline style
- Phosphor Icons — for filled/duotone variants
- NEVER use emoji as icons in production UI

**For backgrounds:**
- CSS mesh gradients using brand colors
- SVG noise textures (inline, not external files)
- Animated grid/dot patterns via CSS

### Phase 5: Build Execution

**Stack (matches existing repos):**
- Next.js 14+ with App Router + TypeScript
- Tailwind CSS (extend config with brand tokens)
- Framer Motion for React animations
- Recharts for data visualization (BidDeed dashboards)
- Mapbox GL JS for maps (ZoneWise — token: pk.eyJ1IjoiZXZlcmVzdDE4...)
- shadcn/ui as component base (retheme to house brand)

**Tailwind config extension:**
```js
// tailwind.config.ts — extend, don't replace
theme: {
  extend: {
    colors: {
      brand: {
        navy: '#1E3A5F',
        orange: '#F59E0B',
        bg: '#020617',
        surface: '#0F172A',
      }
    },
    fontFamily: {
      display: ['var(--font-display)', 'sans-serif'],
      body: ['Inter', 'sans-serif'],
    },
    animation: {
      'fade-up': 'fadeUp 0.5s var(--ease-out-expo) forwards',
      'slide-in': 'slideIn 0.4s var(--ease-out-expo) forwards',
      'glow-pulse': 'glowPulse 2s var(--ease-smooth) infinite',
      'count-up': 'countUp 1s var(--ease-out-expo) forwards',
    }
  }
}
```

**Build checklist (verify before shipping):**
- [ ] All colors use CSS variables / Tailwind brand tokens (no hardcoded hex)
- [ ] Display font loaded and applied to headings/hero
- [ ] Page load animation with staggered reveals
- [ ] Scroll-triggered section reveals
- [ ] Every button/card/link has hover animation
- [ ] `prefers-reduced-motion` respected
- [ ] Lighthouse Performance > 90
- [ ] Mobile responsive with touch-friendly interactions
- [ ] Dark mode ONLY (no light mode toggle — brand is dark-first)
- [ ] No AI slop indicators: no purple gradients, no generic testimonial carousels, no stock photo grids

## Anti-Slop Checklist

Before finalizing ANY UI, verify NONE of these are present:
- ❌ Blue-purple gradient backgrounds
- ❌ Inter/Poppins as the ONLY font
- ❌ Three-column icon card feature sections
- ❌ Generic testimonial carousel
- ❌ "Get Started" / "Learn More" as only CTAs
- ❌ Perfectly symmetrical layouts with no visual tension
- ❌ White/light backgrounds (house brand is dark-first)
- ❌ Stock photo hero with overlay text
- ❌ Cookie-cutter pricing table
- ❌ Unbranded default shadcn/ui components

## Quick Reference: Page Templates

### BidDeed.AI Landing Page
```
Hero: Animated globe/mesh + headline + orange CTA
  ↓ scroll-triggered
Problem: Split layout, animated counter stats
  ↓ scroll-triggered  
Features: Bento grid with hover-reveal cards (not 3-col icons)
  ↓ scroll-triggered
Social proof: Logo marquee + single featured quote (not carousel)
  ↓ scroll-triggered
CTA: Full-width animated gradient section
Footer: Minimal, navy surface
```

### ZoneWise.AI Dashboard
```
Sidebar: Collapsible, navy surface, icon + text nav
Header: Breadcrumb + search + user avatar
Map panel: Mapbox GL full-height, animated parcel highlights
Data panel: Sliding drawer, animated table rows, filter chips
Detail view: Slide-in from right, staggered content reveal
```

### BidDeed.AI Auction Report
```
Header: Case number + status badge (animated pulse for active)
Summary cards: Animated count-up for judgment, ARV, max bid
Property details: Tabbed with animated tab indicator
Lien timeline: Horizontal scroll, animated entry reveals
Recommendation: Large BID/REVIEW/SKIP badge with glow effect
```

## Session Management

When Claude Code context hits ~70%:
1. Save current component state to a checkpoint file
2. List remaining TODO items
3. Instruct: "Start new chat, run /animated-ui, load checkpoint from [path]"

This prevents hallucination from context exhaustion — especially critical for animation code which is detail-sensitive.
