# AGENTS.md

## Project
- Name: the42ai website
- Type: Static marketing site
- Stack: Hugo + Tailwind CSS standalone CLI (no Node.js toolchain required)
- Fonts: Self-hosted Inter + Space Grotesk

## Goals
- Keep site premium, serious, enterprise-grade.
- Preserve theme: AI precision + human wisdom.
- Avoid playful/childish visuals or copy.

## Source of Truth
- Hugo config: `hugo.toml`
- Templates: `layouts/`
- Reusable partials: `layouts/partials/`
- Data-driven content: `data/*.yaml`
- CSS source: `assets/css/main.css`
- Compiled CSS output: `static/css/style.css`
- Static assets: `static/`

## Commands
- Dev (Hugo + Tailwind watch):
  - `make dev`
- Compile CSS once:
  - `make css`
- Production build:
  - `make build`
- Clean generated artifacts:
  - `make clean`

## Editing Rules
1. Prefer minimal, targeted edits. Do not refactor unrelated sections.
2. Keep Hugo template style and existing class naming consistent.
3. When changing UI text/content repeated across pages, check both:
   - `layouts/partials/`
   - `data/*.yaml`
4. If adding new CSS components, place them in logical section blocks in `assets/css/main.css`.
5. Keep animations subtle and purposeful; ensure reduced-motion support remains intact.
6. Do not introduce Node/npm dependency unless explicitly requested.

## Validation Checklist
After edits:
1. Rebuild CSS + site:
   - `./tailwindcss -i ./assets/css/main.css -o ./static/css/style.css --minify`
   - `hugo --minify`
2. Confirm no Hugo template errors.
3. Spot-check primary routes:
   - `/`
   - `/solutions/`
   - `/experience/`
   - `/insights/`
   - `/about/`
   - `/contact/`
4. Verify desktop + mobile layout behavior for modified sections.

## UX/Design Guardrails
- Typography:
  - Body/UI: Inter
  - Display headings: Space Grotesk
- Keep section hierarchy consistent (eyebrow label + strong heading where used).
- Maintain visual rhythm with gradients, subtle depth, and restrained motion.
- Keep logos and trust elements clean, legible, and non-distorted.

## Content Guardrails
- Prefer concrete enterprise language over hype.
- Keep copy outcome-oriented: accuracy, speed, governance, production readiness.
- Use "Work" as visible label for `/experience/` links.

## Known Conventions
- Solutions and homepage service previews are data-driven from `data/services.yaml`.
- Key metrics are data-driven from `data/stats.yaml`.
- Contact form endpoint is defined in `layouts/contact/single.html` and may need real Formspree value before launch.

## Agent Behavior
- Before broad changes, inspect related partials to avoid duplicate patterns.
- If a change affects shared components (nav/footer/cta), verify impact across all pages.
- When adding/removing animated terms/chips, adjust timing/delays to prevent overlap.
- Prefer browser verification for visual tasks after build success.
