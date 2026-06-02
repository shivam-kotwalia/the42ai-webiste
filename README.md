# the42ai Website

A fast, static website for **the42ai**, an AI consulting firm built around the idea that the best business outcomes come from combining AI precision with human wisdom.

The site is built with **Hugo** and the **Tailwind CSS standalone CLI**, so it does not require Node.js, npm, or `node_modules`.

## Tech Stack

- **Hugo**: Static site generator
- **Tailwind CSS Standalone CLI**: CSS generation without Node.js
- **Vanilla JavaScript**: Mobile navigation and scroll reveal animations
- **Self-hosted fonts**: Inter and Space Grotesk

## Local Development

Start the Hugo dev server and Tailwind watcher:

```sh
make dev
```

The site will be available at:

```sh
http://localhost:1313/
```

Compile CSS only:

```sh
make css
```

Build the production site:

```sh
make build
```

Clean generated files:

```sh
make clean
```

## Project Structure

```txt
.
├── assets/css/main.css        # Tailwind source and custom CSS
├── content/                   # Hugo content pages
├── data/                      # YAML data for services, stats, team
├── layouts/                   # Hugo templates and partials
├── static/                    # Fonts, images, compiled CSS
├── hugo.toml                  # Hugo configuration
├── Makefile                   # Development and build commands
└── tailwindcss                # Tailwind standalone binary
```

## Main Pages

- `/` — Home
- `/solutions/` — AI consulting services and methodology
- `/experience/` — Work, case studies, and impact examples
- `/insights/` — Thought leadership and articles
- `/about/` — Philosophy, values, and team
- `/contact/` — Contact form

## Content Updates

Most reusable content is stored in YAML files under `data/`:

- `data/services.yaml` controls service cards and solution details
- `data/stats.yaml` controls homepage metrics
- `data/team.yaml` controls the team section

Page-level content lives in `content/`, while custom page layouts live in `layouts/`.

## Deployment

This site can be deployed to any static host that supports Hugo, including:

- Vercel
- Netlify
- Cloudflare Pages
- GitHub Pages

Recommended production build command:

```sh
make build
```

The generated site is output to `public/`.

## Notes

The contact form currently uses a placeholder Formspree endpoint in `layouts/contact/single.html`. Replace it with the real form endpoint before launch.
