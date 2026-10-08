---
title: Claude Code by Anthropic | AI Coding Agent, Terminal, IDE
source: https://claude.com/product/claude-code
author:
  - "[[Anthropic AI]]"
published:
created: 2026-10-08
description: Anthropic's agentic coding tool for developers. Claude Code understands your codebase, edits files, runs commands, and helps you ship faster.
tags:
  - clippings
---
Add a dark mode toggle to the settings page. Should remember the choice and follow the system default until they pick one.

There's already a `ThemeProvider` wrapping the app but it's hard-wired to light. I'll lift the mode into context, persist it to `localStorage`, and add a Light / Dark segmented control under **Settings → Appearance**.

src/theme/ThemeProvider.tsx

10 `export function ThemeProvider({children}: {children: ReactNode}) {`

11+ `  const prefersDark = useMediaQuery('(prefers-color-scheme: dark)')`

12 `  const stored = localStorage.getItem('theme')`

13+ `  const [mode, setMode] = useState(stored ?? (prefersDark ? 'dark' : 'light'))`

14 

15+ `  useEffect(() => {`

16+ `    localStorage.setItem('theme', mode)`

17+ `  }, [mode])`

18 

19 `  return (`

20 `    <ThemeContext.Provider value={{mode, setMode}}>`

21 `      {children}`

Done — the **Appearance** section now has the toggle. Preview's on the right; flip it and the whole app should follow. Reduce-motion and density rows are stubbed so the page doesn't look bare.

#112acme-dashboardclaude/settings-dark-mode-Xk4fq CI

Auto

OpusExtra high

## Get started with Claude Code

### Pro

Claude Code is included in your Pro plan. Perfect for short coding sprints in small codebases.

### Max 5x

Claude Code is included in your Max plan. Great value for everyday use in larger codebases.

### Max 20x

Even more Claude Code included in your Max plan. Great value for power users with the most access to Claude models.

## What Claude Code can take on

Claude Code builds the plan, asks clarifying questions, and handles work that runs for hours or days.

```
I'm new to this codebase. Can you explain it to me?

⏺︎ I'll analyze the Excalidraw codebase structure and provide a high-level overview.

⏺︎ Analyze(what: "Excalidraw codebase structure and provide a high-level overview of what it is, its main components, and how they're organized. Focus on understanding the project's purpose, architecture, and key features.")

Excalidraw is an open-source virtual whiteboard application with a hand-drawn style. It's designed for creating diagrams, wireframes, and collaborative drawings.

## Purpose
- Web-based drawing tool with infinite canvas
- Hand-drawn aesthetic with support for shapes, arrows, text
- End-to-end encrypted collaboration
- Works offline as a PWA (Progressive Web App)

## Architecture
The project is organized as a monorepo with these main components:

1. Core Package (packages/excalidraw)
- React component library for embedding Excalidraw in any application
- Handles drawing, rendering, and core functionality
- Uses roughjs for the hand-drawn style
- Includes export capabilities (PNG, SVG)

2. Web Application (excalidraw-app/)
- Full-featured web app at excalidraw.com
- Built on top of the core package
- Adds collaboration features, local storage, sharing

3. Support Packages
- common - Shared utilities and constants
- element - Element manipulation and type definitions
- math - Mathematical functions for drawing
- utils - General utility functions

4. Examples
- Integration examples (Next.js, browser script)
- Shows how to embed Excalidraw in different environments

5. Documentation (dev-docs/)
- API documentation
- Integration guides
- Component documentation

## Key Features
- Real-time collaboration with end-to-end encryption
- Export to various formats (PNG, SVG, JSON)
- Customizable drawing tools (rectangle, circle, arrows, freehand)
- Dark mode support
- Localization
- Library of shapes and components
- Arrow bindings and labels
- Image support

## Technology Stack
- React for UI
- TypeScript for type safety
- Firebase for collaboration backend
- Jotai for state management
- Vite for development and building
- IndexedDB/LocalStorage for offline storage

The architecture allows for both using Excalidraw as a component in other applications and as a standalone web application with additional features.
```

- ### Code onboarding
	Claude Code maps and explains entire codebases in a few seconds. It uses agentic search to understand project structure and dependencies without you having to manually select context files.
- ### Turn issues into PRs
	Stop bouncing between tools. Claude Code works with GitHub, GitLab, and your command line tools to read issues, write code, run tests, and open pull requests.
- ### Run multi-hour refactors and migrations
	Claude Code follows imports across the repo, runs your tests, and keeps going when something breaks.

## Kick off coding tasks in Slack

## What developers are saying

- > “Claude Code has dramatically accelerated our team's coding efficiency. I can now write EDA code in a notebook—pulling data, training a model, and evaluating it with basic metrics—and then ask Claude to convert that into a Metaflow pipeline. This process saves 1-2 days of routine (and often boring!) work per model.”
	Anton Biryukov, Staff Software Engineer
	[Read story](https://claude.com/customers/ramp)
- > “With Claude, we're not just automating customer service—we're elevating it to truly human quality. This lets support teams think more strategically about customer experience and what makes interactions genuinely valuable.”
	Fergal Reid, VP of AI
	[Read story](https://claude.com/customers/intercom)
- > “Claude Code is moving our team up a level: we decide what needs to happen, and smooth the process so it can build and verify end-to-end. A big part of my job now is to keep as many instances of Claude Code busy as possible.”
	Simon Last, Co-founder
	[Read story](https://claude.com/customers/notion)

## FAQ

### How do I get started with Claude?

You can access Claude Code with a Claude Pro or Max plan, a Team or Enterprise plan, or a Claude Console account. [Download Claude Code](https://code.claude.com/docs/en/overview) and sign in with your respective Claude or Console credentials.

### What kind of tasks can Claude Code handle?

Claude Code can handle routine work like bug fixes and testing, and larger jobs like refactors and new features that are long-running and asynchronous.

You set the direction as the architect and orchestrator, and Claude Code does the work. Describe what you want and it plans, writes code, runs tests, and opens pull requests. It can work on several tasks at once, and surface decisions you need to make for it to keep going.

### How does Claude Code work with my existing tools?

Claude Code runs in your terminal and works alongside your preferred IDE and development tools without requiring you to change your workflow. Claude Code can also use command line tools (like Git) and MCP servers (like GitHub) to extend its own capabilities using your tools.

### Is Claude Code secure?

Yes. Claude Code runs locally in your terminal and talks directly to model APIs without requiring a backend server or remote code index. It also asks for permission before making changes to your files or running commands.

### What are the system requirements to run Claude Code?

Claude Code works on macOS, Linux, and Windows. [See full system requirements](https://code.claude.com/docs/en/setup#system-requirements).

### How much does Claude Code cost?

When used with a Claude Console account, Claude Code consumes API tokens at [standard API pricing](https://claude.com/pricing#api).

### Does Claude Code work with the Claude desktop app?

Yes. Max, Pro, Team, and Enterprise users can access Claude Code on the [Claude desktop app](https://claude.com/download).

### What is fast mode on Claude Code?

Fast mode is a high-speed configuration for Opus 5.5, making the model 2.5x faster at a higher cost per token. Fast mode is available:

- In research preview on Claude Code, and is priced at $8/$40 per million tokens.
- On consumption-based plans.
- Via usage credits for users on subscription plans.