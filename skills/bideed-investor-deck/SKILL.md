---
name: bideed-investor-deck
description: "Create investor pitch decks for BidDeed.AI and real estate AI platforms. Use for: investor presentation, pitch deck, fundraising deck, seed pitch, Series A deck, demo day presentation, valuation presentation. Triggers on investor, pitch, fundraise, valuation, deck."
version: "1.0.0"
author: breverdbidder
tags:
  - presentations
  - investor
  - pitch-deck
  - real-estate
  - ai-platform
---

# BidDeed.AI Investor Deck Generator

Transform BidDeed.AI metrics and vision into compelling investor pitch decks with exhaustive slide-by-slide specifications.

## Role and Objective

Act as a Pitch Deck Architect specializing in AI-powered real estate platforms. Create comprehensive presentation blueprints that communicate:
- The massive foreclosure auction market opportunity ($30B+ annually)
- BidDeed.AI's unique agentic AI approach vs. traditional SaaS
- Internal alpha value (100x ROI) as proof of concept
- Clear path to commercial scale

## Output Format

- Output only Markdown text
- Save as `.md` file representing the complete presentation blueprint
- Each slide is a clearly separated section
- Include exact text content (no placeholders)
- Specify typography, colors, layouts precisely

## BidDeed.AI Brand Guidelines

### Color Palette
| Color | Hex | Usage |
|-------|-----|-------|
| Primary Navy | #1E3A5F | Headers, key text |
| Accent Teal | #2DD4BF | CTAs, highlights, data viz |
| Background Light | #F8FAFC | Slide backgrounds |
| Success Green | #10B981 | Positive metrics, BID recommendations |
| Warning Orange | #F59E0B | REVIEW recommendations |
| Error Red | #EF4444 | SKIP recommendations, risks |

### Typography
- **Headlines:** Inter Bold, 48-64pt
- **Subheads:** Inter SemiBold, 28-36pt
- **Body:** Inter Regular, 18-24pt
- **Data/Metrics:** JetBrains Mono, 24-36pt

### Visual Style
- Clean, minimal, data-forward
- Dark navy headers on light backgrounds
- Teal accent lines and highlights
- Real property photos when available
- No clip art or generic stock photos

---

## Standard Investor Deck Structure (12-15 slides)

### Slide 1 – Title

**Purpose:** Establish brand and hook with bold claim.

**Content:**
- **Logo:** BidDeed.AI wordmark (top-left)
- **Headline:** "The AI That Finds Distressed Deals Before Anyone Else"
- **Subhead:** "Agentic AI for Foreclosure Auction Intelligence"
- **Tagline:** Everest Capital USA | Q[X] 2026

**Layout:**
- Logo: Top-left, 120px
- Headline: Center, vertical center minus 50px
- Subhead: Center, below headline, 24px spacing
- Tagline: Bottom-center, 48px from bottom

**Visual:**
- Background: Gradient from #F8FAFC (top) to white (bottom)
- Subtle topographic pattern overlay at 5% opacity
- No photos on title slide

---

### Slide 2 – The Problem

**Purpose:** Create urgency around market inefficiency.

**Content:**
- **Headline:** "Foreclosure Auctions Are Broken"
- **Pain Point 1:** "$30B+ in distressed assets sold annually with zero transparency"
- **Pain Point 2:** "Investors fly blind: no lien data, no title search, no ML predictions"
- **Pain Point 3:** "Current tools (PropertyOnion, Auction.com) = manual data entry, not intelligence"
- **Key Stat:** "73% of auction investors report losing money on 'surprise' liens"

**Layout:**
- Headline: Top-left, full width
- Pain points: Left column (60% width), stacked with 32px spacing
- Key stat: Right column (35% width), in teal callout box

**Visual:**
- Icon set: 🏚️ (distressed house), 📉 (declining chart), ⚠️ (warning)
- Each pain point has corresponding icon left-aligned
- Key stat box: Teal border (#2DD4BF), 2px, rounded corners

---

### Slide 3 – Market Opportunity

**Purpose:** Quantify TAM/SAM/SOM.

**Content:**
- **Headline:** "A $30B Market Ready for AI Disruption"
- **TAM:** "$30B – Annual US foreclosure auction volume"
- **SAM:** "$8.2B – Florida (largest foreclosure state, 67 counties)"
- **SOM:** "$420M – Brevard County (our launchpad, 1,400 auctions/year)"
- **Expansion Path:** "FL → TX → CA → National (2026-2028)"

**Layout:**
- Headline: Top-center
- TAM/SAM/SOM: Funnel visualization, center
- Expansion path: Bottom, horizontal timeline

**Visual:**
- Inverted funnel graphic showing market narrowing
- Each tier in progressively darker shade of navy
- Dollar amounts in JetBrains Mono, teal color
- US map with FL highlighted (optional)

---

### Slide 4 – The Solution

**Purpose:** Introduce BidDeed.AI's unique approach.

**Content:**
- **Headline:** "BidDeed.AI: Agentic AI, Not SaaS"
- **Key Differentiator:** "We don't sell software. We sell work."
- **Pipeline Overview:**
  - "12-Stage Autonomous Pipeline"
  - "Discovery → Scraping → Title Search → Lien Priority → Tax Certs → Demographics → ML Score → Max Bid → Decision Log → Report → Disposition → Archive"
- **Output:** "BID / REVIEW / SKIP recommendation with full audit trail"

**Layout:**
- Headline: Top-left
- Key differentiator: Center, large quote format
- Pipeline: Horizontal flow diagram, center
- Output: Bottom-right, in success-green box

**Visual:**
- Pipeline shown as connected nodes with arrows
- Each stage is a small rounded rectangle
- Active stage highlighted in teal
- Output box with checkmark icon

---

### Slide 5 – How It Works

**Purpose:** Demonstrate the agentic workflow.

**Content:**
- **Headline:** "From Auction Calendar to Investment Decision in 90 Seconds"
- **Step 1:** "Multi-source scraping (RealForeclose, BCPAO, AcclaimWeb, RealTDM)"
- **Step 2:** "Automated title search & lien priority analysis"
- **Step 3:** "XGBoost ML model predicts third-party purchase probability (64.4% accuracy)"
- **Step 4:** "Max bid formula: (ARV×70%) - Repairs - $10K - MIN($25K, 15%×ARV)"
- **Step 5:** "One-page DOCX report with BCPAO photos, decision rationale"

**Layout:**
- Headline: Top-center
- Steps: Vertical timeline, left side (40% width)
- Screenshot: Right side (55% width), mock of actual report

**Visual:**
- Timeline with numbered circles (1-5)
- Each step has subtle animation cue (for live presentation)
- Screenshot in device frame (laptop mockup)

---

### Slide 6 – Product Demo

**Purpose:** Show real output.

**Content:**
- **Headline:** "Real Analysis: December 3, 2025 Auction"
- **Summary Stats:**
  - "19 properties analyzed"
  - "10 BECA verified"
  - "4 BID / 3 REVIEW / 12 SKIP"
  - "Total judgment: $4.35M"
- **Sample Property:** Show one actual report card

**Layout:**
- Headline: Top-left
- Summary stats: Top-right, in grid (2x2)
- Sample report: Center, full width, actual screenshot

**Visual:**
- Property photo from BCPAO
- Color-coded recommendation badge (green BID)
- Key metrics visible: ARV, Max Bid, Judgment, ROI estimate

---

### Slide 7 – Competitive Landscape

**Purpose:** Position against alternatives.

**Content:**
- **Headline:** "We Built What PropertyOnion Can't"
- **Comparison Table:**

| Feature | PropertyOnion | Auction.com | BidDeed.AI |
|---------|--------------|-------------|------------|
| Multi-source scraping | ❌ | ❌ | ✅ |
| Automated title search | ❌ | ❌ | ✅ |
| Lien priority analysis | ❌ | ❌ | ✅ |
| ML purchase prediction | ❌ | ❌ | ✅ (64.4%) |
| Max bid calculation | ❌ | ❌ | ✅ |
| One-click reports | ❌ | ❌ | ✅ |
| Agentic (not SaaS) | ❌ | ❌ | ✅ |

**Layout:**
- Headline: Top-left
- Table: Center, full width
- Differentiator callout: Bottom-right

**Visual:**
- Table with alternating row colors
- Checkmarks in teal, X marks in muted gray
- BidDeed.AI column highlighted with light teal background

---

### Slide 8 – Business Model

**Purpose:** Explain how we make money.

**Content:**
- **Headline:** "Agentic AI Ecosystem = Premium Valuation"
- **Revenue Streams:**
  - "Internal Alpha: $300-400K/year value (1 extra deal/quarter + 1 avoided loss)"
  - "Commercial Beta: Per-auction pricing ($5-25/property analyzed)"
  - "Enterprise: County-level subscriptions ($2K-10K/month)"
- **Unit Economics:**
  - "Cost per analysis: $0.03 (Smart Router 90% FREE tier)"
  - "Price per analysis: $5-25"
  - "Gross margin: 99%+"

**Layout:**
- Headline: Top-left
- Revenue streams: Left column, stacked cards
- Unit economics: Right column, in dark navy box

**Visual:**
- Revenue cards with dollar icons
- Unit economics in contrasting dark box with white/teal text
- Arrow showing margin expansion

---

### Slide 9 – Traction & Validation

**Purpose:** Prove it works.

**Content:**
- **Headline:** "Internal Alpha: 100x ROI Proven"
- **Metric 1:** "$300-400K annual value generated"
- **Metric 2:** "$3.3K total costs (APIs, hosting)"
- **Metric 3:** "100x ROI on internal use alone"
- **Metric 4:** "1,393 historical auctions analyzed"
- **Metric 5:** "3 counties live, 67 FL counties by Q1 2026"

**Layout:**
- Headline: Top-center
- Metrics: 5-card grid (3 top, 2 bottom centered)
- Each card with large number and label

**Visual:**
- Cards with thick teal left border
- Numbers in JetBrains Mono, 48pt
- Labels in Inter Regular, 18pt
- Subtle shadow on cards

---

### Slide 10 – Technology Stack

**Purpose:** Establish technical credibility.

**Content:**
- **Headline:** "Built for Scale, Costs Nearly Nothing"
- **Stack:**
  - "GitHub Actions: Orchestration"
  - "Supabase: Database & Auth"
  - "Cloudflare Pages: Frontend"
  - "liteLLM + Smart Router: 90% FREE LLM calls"
  - "Render.com: Compute (50+ counties)"
- **Key Innovation:** "Claude as AI Architect: $0 engineering salary"

**Layout:**
- Headline: Top-left
- Stack: Icon grid (3x2)
- Key innovation: Bottom callout box

**Visual:**
- Tech logos for each service
- Connection lines showing data flow
- Callout box in teal with white text

---

### Slide 11 – Team

**Purpose:** Introduce leadership.

**Content:**
- **Headline:** "Solo Founder + Agentic AI Team"
- **Ariel Shapira:**
  - "Managing Member, Everest Capital USA"
  - "10+ years foreclosure investing"
  - "FL Real Estate Broker + General Contractor"
  - "Built BidDeed.AI with Claude as AI Architect"
- **AI Team:**
  - "Claude Opus 4.5: AI Architect (decisions)"
  - "Claude Code: Autonomous 7-hour dev sessions"
  - "Saves $2,500-4,500/month vs. offshore"

**Layout:**
- Headline: Top-center
- Ariel: Left (40%), with headshot placeholder
- AI Team: Right (55%), styled as org chart

**Visual:**
- Professional headshot placeholder
- AI team shown as connected nodes
- Claude logo used for AI roles

---

### Slide 12 – Go-to-Market

**Purpose:** Show path to revenue.

**Content:**
- **Headline:** "From 3 Counties to 67 in 90 Days"
- **Phase 1 (Current):** "Internal alpha, 3 FL counties, $0 revenue"
- **Phase 2 (Q1 2026):** "Closed beta, 67 FL counties, first 10 paying users"
- **Phase 3 (Q2 2026):** "Public launch, FL + TX, $10K MRR target"
- **Phase 4 (Q4 2026):** "National expansion, 5 states, $50K MRR"

**Layout:**
- Headline: Top-left
- Timeline: Horizontal, center
- Each phase as card below timeline

**Visual:**
- Timeline with quarter markers
- Phase cards with icons (🏠 → 🏘️ → 🏙️ → 🌎)
- Revenue targets in teal

---

### Slide 13 – The Ask

**Purpose:** State fundraising goal.

**Content:**
- **Headline:** "Raising $250K to Go from Alpha to Revenue"
- **Use of Funds:**
  - "40% – Engineering (Render scale-up, ML improvements)"
  - "30% – Data (title search APIs, tax cert access)"
  - "20% – GTM (content marketing, early customer acquisition)"
  - "10% – Legal/Ops (terms of service, compliance)"
- **Offer:** "SAFE, $2M cap, MFN"

**Layout:**
- Headline: Top-center
- Use of funds: Pie chart, left (40%)
- Breakdown list: Right (55%)
- Offer: Bottom-center, in prominent box

**Visual:**
- Pie chart in brand colors (navy, teal, variations)
- Offer box with navy background, white text
- Dollar amounts bold

---

### Slide 14 – Why Now

**Purpose:** Create urgency.

**Content:**
- **Headline:** "The Window Is Open"
- **Reason 1:** "Foreclosures rising post-forbearance (up 27% YoY)"
- **Reason 2:** "LLM costs dropped 90% in 18 months"
- **Reason 3:** "First-mover advantage in agentic AI for real estate"
- **Reason 4:** "No competition doing true lien analysis + ML"

**Layout:**
- Headline: Top-center
- Reasons: 2x2 grid, center
- Each reason as card with icon

**Visual:**
- Icons: 📈 (rising), 💰 (cost drop), 🏆 (first mover), 🔒 (moat)
- Cards with subtle gradient backgrounds
- Urgency reinforced with bold numbers

---

### Slide 15 – Contact / Close

**Purpose:** End with clear next step.

**Content:**
- **Headline:** "Let's Build the Future of Real Estate Intelligence"
- **Contact:**
  - "Ariel Shapira"
  - "ariel@bideed.ai"
  - "linkedin.com/in/arielshapira"
- **CTA:** "Schedule a demo: calendly.com/bideed-ai/demo"

**Layout:**
- Headline: Center, vertical center minus 50px
- Contact: Center, below headline
- CTA: Bottom-center, teal button style

**Visual:**
- BidDeed.AI logo watermark (large, 10% opacity, centered)
- Contact info in clean list format
- CTA styled as button (teal background, white text)

---

## Customization Variables

When generating a deck, confirm these values:

| Variable | Default | Description |
|----------|---------|-------------|
| `RAISE_AMOUNT` | $250K | Fundraising target |
| `VALUATION_CAP` | $2M | SAFE cap |
| `CURRENT_COUNTIES` | 3 | Live counties |
| `TARGET_COUNTIES` | 67 | Q1 2026 target |
| `ML_ACCURACY` | 64.4% | XGBoost accuracy |
| `INTERNAL_VALUE` | $300-400K/year | Alpha ROI |
| `MONTHLY_COST` | $3.3K | Operating costs |

---

## Best Practices for This Deck

1. **Lead with internal alpha value** – Investors love seeing you're your own first customer
2. **Emphasize "Agentic AI" positioning** – Not SaaS, which commands lower multiples
3. **Show real data** – Actual screenshots, actual numbers, actual properties
4. **Keep technical detail light** – Architecture goes in appendix
5. **End with urgency** – Rising foreclosures + falling AI costs = perfect timing

---

## Appendix Slides (Optional)

### A1 – Technical Architecture
Full pipeline diagram with data sources, processing steps, output formats.

### A2 – ML Model Details
XGBoost feature importance, training data, validation methodology.

### A3 – Financial Projections
3-year P&L with assumptions, sensitivity analysis.

### A4 – Competitive Deep Dive
Detailed comparison with PropertyOnion, Auction.com, ATTOM Data.

### A5 – Team Bios
Extended background on Ariel + advisory network.
