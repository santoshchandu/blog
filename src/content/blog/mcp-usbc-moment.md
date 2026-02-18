---
title: "Model Context Protocol: The USB-C Moment for AI Tooling"
description: "Anthropic's MCP is quietly becoming the standard for how AI agents connect to the world. Here's why it matters."
pubDate: 2026-02-01
tags: ["AI", "MCP", "Agents", "Dev"]
---

In late 2024, Anthropic released the Model Context Protocol (MCP) — an open standard for connecting AI models to external tools and data sources. At the time it felt like an internal tooling decision made public.

Eight months later, it's looking more like infrastructure.

## The problem MCP solves

Before MCP, every AI integration was bespoke. You wanted Claude to read your Notion docs? Write a custom function. Connect to your database? Write an adapter. Call your internal API? Write a wrapper.

Every team solved the same problem differently, and nothing was reusable.

MCP defines a **client-server protocol** where:
- **MCP servers** expose tools, resources, and prompts to AI models
- **MCP clients** (AI applications) connect to these servers and call their capabilities
- The protocol is transport-agnostic (works over stdio, HTTP, WebSockets)

The result is that an MCP server written for Claude works with any MCP-compatible client. Write once, connect anywhere.

```json
// Example MCP tool definition
{
  "name": "search_codebase",
  "description": "Search through the repository for code patterns",
  "inputSchema": {
    "type": "object",
    "properties": {
      "query": {
        "type": "string",
        "description": "The search query"
      },
      "file_pattern": {
        "type": "string",
        "description": "Glob pattern to filter files (e.g., '**/*.ts')"
      }
    },
    "required": ["query"]
  }
}
```

## Who's building on it

The server ecosystem grew faster than expected:

- **Filesystem** — read/write local files with permission controls
- **GitHub** — search repos, read PRs, manage issues
- **Postgres / SQLite** — query databases conversationally
- **Slack, Linear, Notion** — company knowledge, tasks, docs
- **Browser automation** — Puppeteer, Playwright bridges

Most major dev tools either have official MCP servers or community ones that work well. If you use VS Code, Zed, or Cursor with AI features, there's a good chance MCP is under the hood.

## Why this is the USB-C moment

USB-C is a good analogy because it's *boring in exactly the right way*. You don't think about USB-C. You just plug things in and they work.

MCP is heading in that direction for AI tooling. The goal isn't for developers to think about the protocol — it's for them to never have to think about how their AI assistant connects to their tools again.

The interesting tension is **trust**. MCP servers run locally or remotely, and they have real permissions. A poorly configured MCP server is an attack surface. The community is still working through what a secure MCP deployment looks like at scale.

## Getting started

If you want to experiment:

```bash
# Install the MCP CLI
npm install -g @modelcontextprotocol/cli

# Run the filesystem server
npx @modelcontextprotocol/server-filesystem ~/projects

# Connect from your MCP client
mcp connect stdio "npx @modelcontextprotocol/server-filesystem ~/projects"
```

The official docs at [modelcontextprotocol.io](https://modelcontextprotocol.io) are good and kept up to date.

Watch this space. The protocol is still maturing but the momentum is real.
