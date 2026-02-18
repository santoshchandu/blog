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
