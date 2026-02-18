<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:atom="http://www.w3.org/2005/Atom"
  xmlns:dc="http://purl.org/dc/elements/1.1/"
  xmlns:itunes="http://www.itunes.com/dtds/podcast-1.0.dtd">
  <xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes"/>
  <xsl:template match="/">
    <html xmlns="http://www.w3.org/1999/xhtml" lang="en">
      <head>
        <title><xsl:value-of select="/rss/channel/title"/> — RSS Feed</title>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
        <style>
          @import url('https://fonts.googleapis.com/css2?family=Playfair+Display:wght@700;900&amp;family=Source+Serif+4:ital,opsz,wght@0,8..60,300;0,8..60,400;1,8..60,300&amp;family=JetBrains+Mono:wght@400&amp;display=swap');

          *, *::before, *::after { box-sizing: border-box; margin: 0; padding: 0; }

          :root {
            --ink: #0f0e0d;
            --ink-muted: #5a5652;
            --ink-faint: #a09b97;
            --paper: #faf9f7;
            --paper-warm: #f2ede6;
            --accent: #c1440e;
            --border: #e0dad4;
            --font-display: 'Playfair Display', Georgia, serif;
            --font-body: 'Source Serif 4', Georgia, serif;
            --font-mono: 'JetBrains Mono', monospace;
          }

          html { font-size: 18px; }

          body {
            background: var(--paper);
            color: var(--ink);
            font-family: var(--font-body);
            font-weight: 300;
            line-height: 1.7;
            -webkit-font-smoothing: antialiased;
          }

          .page-header {
            background: var(--paper-warm);
            border-bottom: 2px solid var(--ink);
            padding: 2rem 0 1.5rem;
          }

          .container {
            max-width: 760px;
            margin: 0 auto;
            padding: 0 1.5rem;
          }

          .rss-badge {
            display: inline-flex;
            align-items: center;
            gap: 0.4rem;
            font-family: var(--font-mono);
            font-size: 0.68rem;
            letter-spacing: 0.1em;
            text-transform: uppercase;
            color: var(--accent);
            border: 1px solid var(--accent);
            padding: 0.15rem 0.5rem;
            border-radius: 2px;
            margin-bottom: 1rem;
          }

          .site-title {
            font-family: var(--font-display);
            font-weight: 900;
            font-size: clamp(1.8rem, 5vw, 2.8rem);
            letter-spacing: -0.02em;
            margin-bottom: 0.5rem;
          }

          .site-title a {
            color: var(--ink);
            text-decoration: none;
          }

          .site-desc {
            color: var(--ink-muted);
            font-style: italic;
            font-size: 0.95rem;
            max-width: 55ch;
            margin-bottom: 1.25rem;
          }

          .how-to {
            background: white;
            border: 1px solid var(--border);
            border-left: 3px solid var(--accent);
            border-radius: 0 4px 4px 0;
            padding: 1rem 1.25rem;
            font-size: 0.82rem;
            color: var(--ink-muted);
            line-height: 1.6;
          }

          .how-to strong {
            color: var(--ink);
            font-weight: 600;
          }

          .how-to code {
            font-family: var(--font-mono);
            font-size: 0.8em;
            background: var(--paper-warm);
            padding: 0.1em 0.35em;
            border-radius: 3px;
            color: var(--accent);
          }

          .posts-list {
            padding: 2rem 0 4rem;
          }

          .post-item {
            padding: 1.75rem 0;
            border-bottom: 1px solid var(--border);
          }

          .post-date {
            font-family: var(--font-mono);
            font-size: 0.72rem;
            color: var(--ink-faint);
            letter-spacing: 0.04em;
            margin-bottom: 0.5rem;
            display: block;
          }

          .post-title {
            font-family: var(--font-display);
            font-weight: 700;
            font-size: 1.3rem;
            line-height: 1.2;
            margin-bottom: 0.6rem;
            letter-spacing: -0.01em;
          }

          .post-title a {
            color: var(--ink);
            text-decoration: none;
          }

          .post-title a:hover {
            color: var(--accent);
          }

          .post-desc {
            color: var(--ink-muted);
            font-size: 0.92rem;
            font-style: italic;
            line-height: 1.6;
          }

          ::selection { background: #f7c9a8; color: var(--ink); }
        </style>
      </head>
      <body>
        <header class="page-header">
          <div class="container">
            <div class="rss-badge">
              &#9632; RSS Feed
            </div>
            <h1 class="site-title">
              <a>
                <xsl:attribute name="href">
                  <xsl:value-of select="/rss/channel/link"/>
                </xsl:attribute>
                <xsl:value-of select="/rss/channel/title"/>
              </a>
            </h1>
            <p class="site-desc">
              <xsl:value-of select="/rss/channel/description"/>
            </p>
            <div class="how-to">
              <strong>How to subscribe:</strong> Copy the URL from your browser's address bar and paste it into your RSS reader app — <a href="https://netnewswire.com" style="color: var(--accent);">NetNewsWire</a>, <a href="https://feedly.com" style="color: var(--accent);">Feedly</a>, <a href="https://reeder.app" style="color: var(--accent);">Reeder</a>, or any other feed reader. Direct link: <code><xsl:value-of select="/rss/channel/link"/>feed.xml</code>
            </div>
          </div>
        </header>

        <main>
          <div class="container">
            <div class="posts-list">
              <xsl:for-each select="/rss/channel/item">
                <article class="post-item">
                  <span class="post-date">
                    <xsl:value-of select="pubDate"/>
                  </span>
                  <h2 class="post-title">
                    <a>
                      <xsl:attribute name="href">
                        <xsl:value-of select="link"/>
                      </xsl:attribute>
                      <xsl:value-of select="title"/>
                    </a>
                  </h2>
                  <p class="post-desc">
                    <xsl:value-of select="description"/>
                  </p>
                </article>
              </xsl:for-each>
            </div>
          </div>
        </main>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
