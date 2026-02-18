# santoshchandu.com

A clean, editorial-style blog built with **Astro** for publishing about AI and developer world developments.

## Features

- ✅ Clean editorial/magazine aesthetic (Playfair Display + Source Serif 4)
- ✅ RSS feed at `/feed.xml` — beautiful in browser with custom XSL stylesheet
- ✅ No analytics, no cookies, no trackers, no ads
- ✅ Markdown-based posts with frontmatter
- ✅ Tag system
- ✅ Reading time estimation
- ✅ Archive page (posts grouped by year)
- ✅ Auto-generated sitemap
- ✅ RSS autodiscovery in `<head>`
- ✅ Fully static output — deploy anywhere

---

## Getting started

### Install dependencies

```bash
cd my-blog
npm install
```

### Run dev server

```bash
npm run dev
# Open http://localhost:4321
```

### Build for production

```bash
npm run build
# Output goes to ./dist/
```

### Preview production build

```bash
npm run preview
```

---

## Writing a post

Create a new `.md` file in `src/content/blog/`:

```
src/content/blog/my-new-post.md
```

Use this frontmatter template:

```yaml
---
title: "Your Post Title"
description: "A short, punchy description for the post card and RSS feed."
pubDate: 2026-02-18
tags: ["AI", "Dev"]         # optional, for categorization
draft: false                # set true to hide from listing
---

Your content here in **Markdown**.
```

The filename becomes the URL slug:
`my-new-post.md` → `https://blog.santoshchandu.com/blog/my-new-post`

---

## Updating site info

Edit `astro.config.mjs` to update your site URL:
```js
export default defineConfig({
  site: 'https://blog.santoshchandu.com',  // ← change this
  ...
});
```

Update the RSS feed metadata in `src/pages/feed.xml.js`:
- `title` — blog name
- `description` — blog description
- `managingEditor` — your email

Update the About page in `src/pages/about.astro`.

---

## RSS Feed

Your RSS feed lives at: `https://blog.santoshchandu.com/feed.xml`

When visited in a browser, it renders as a styled page (via the XSL stylesheet in `public/rss-styles.xsl`).

The feed is auto-discovered by any browser or RSS reader that looks for `<link rel="alternate" type="application/rss+xml">`.

---

## Deployment

### Cloudflare Pages (recommended — free, fast, no tracking)

1. Push to GitHub
2. Connect repo in Cloudflare Pages dashboard
3. Build command: `npm run build`
4. Output directory: `dist`
5. Add custom domain: `blog.santoshchandu.com`

### Netlify

Same settings, just in Netlify's dashboard.

### Self-hosted (VPS)

```bash
npm run build
# Upload ./dist/ to your server
# Serve with nginx or caddy
```

---

## Project structure

```
src/
├── content/
│   ├── blog/           ← your .md posts go here
│   └── config.ts       ← content collection schema
├── layouts/
│   ├── BaseLayout.astro   ← header, footer, meta tags
│   └── PostLayout.astro   ← individual post layout
├── pages/
│   ├── index.astro     ← homepage
│   ├── archive.astro   ← all posts by year
│   ├── about.astro     ← about page
│   └── feed.xml.js     ← RSS feed generator
├── styles/
│   └── global.css      ← all global styles + CSS variables
└── utils/
    └── date.ts         ← date formatting + reading time
public/
├── rss-styles.xsl      ← makes RSS beautiful in browser
├── favicon.svg
└── robots.txt
```
