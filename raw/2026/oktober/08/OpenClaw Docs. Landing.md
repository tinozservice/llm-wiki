---
title: OpenClaw Docs
source: https://docs.openclaw.ai/
author:
  - "[[OpenClaw AI]]"
published:
created: 2026-10-08
description: OpenClaw is an open-source AI assistant that runs on your own hardware and meets you in every chat app you already use.
tags:
  - clippings
---
## OpenClaw

The AI that really does things.Any OS. Any Platform. The lobster way. 🦞

[New releasev2026.9.8Update recovery, Windows startup and reply fixes.Read release notes](https://docs.openclaw.ai/releases/2026.9.8)[**Get Started**

Install OpenClaw and bring up the Gateway in minutes.

](https://docs.openclaw.ai/start/getting-started)

[

**Run Onboarding**

Guided setup with `openclaw onboard` and pairing flows.

](https://docs.openclaw.ai/start/wizard)[

**Connect a Channel**

Link Discord, Signal, Telegram, WhatsApp, and more to chat from anywhere.

](https://docs.openclaw.ai/channels)[

**Open the Control UI**

Launch the browser dashboard for chat, config, and sessions.

](https://docs.openclaw.ai/web/control-ui)

## Quick start

- ### Install OpenClaw
	### macOS / Linux / WSL2
	bash
	```bash
	curl -fsSL https://openclaw.ai/install.sh | bash
	```
	### Windows (PowerShell)
	powershell
	```powershell
	iwr -useb https://openclaw.ai/install.ps1 | iex
	```
	The installer detects your OS, installs Node if needed, installs OpenClaw, and then starts onboarding. Other install methods (npm, pnpm, bun, Docker, Nix, from source) are on the [Install](https://docs.openclaw.ai/install) page.
- ### Complete onboarding
	Onboarding offers **Quick start** and **Custom setup**. Quick start reuses detected AI access, verifies it with a real completion, and opens the web dashboard with a Gateway in the foreground. Custom setup walks the full guided flow. `openclaw onboard --classic` opens the classic step-by-step wizard instead.
- ### Install the Gateway service
	Quick start leaves the Gateway in the foreground. Press **Ctrl+C**, then install the background service:
	bash
	```bash
	openclaw gateway install
	```
- ### Chat
	Open the Control UI in your browser and send a message:
	bash
	```bash
	openclaw dashboard
	```
	Or connect a channel ([Telegram](https://docs.openclaw.ai/channels/telegram) is fastest) and chat from your phone.

Need the full install and dev setup? See [Getting Started](https://docs.openclaw.ai/start/getting-started).

## Key capabilities[**Multi-channel gateway**

Discord, iMessage, Signal, Slack, Telegram, WhatsApp, WebChat, and more with a single Gateway process.

](https://docs.openclaw.ai/channels)

[

**Plugin channels**

Channel plugins add Matrix, Nostr, Twitch, Zalo, and more; official plugins install on demand.

](https://docs.openclaw.ai/tools/plugin)[

**Multi-agent routing**

Isolated sessions per agent, workspace, or sender.

](https://docs.openclaw.ai/concepts/multi-agent)[

**Media support**

Send and receive images, audio, and documents.

](https://docs.openclaw.ai/nodes/images)[

**Web Control UI**

Browser dashboard for chat, config, sessions, and nodes.

](https://docs.openclaw.ai/web/control-ui)[

**Mobile nodes**

Pair iOS and Android nodes for camera, screen, and voice-enabled workflows.

](https://docs.openclaw.ai/nodes)[

**Skills**

Teach the agent repeatable procedures it loads on demand.

](https://docs.openclaw.ai/tools/skills)[

**Automation**

Run work on a schedule with cron jobs, hooks, and webhooks.

](https://docs.openclaw.ai/automation)[

**Build plugins**

Write your own channel, provider, and tool plugins against the plugin SDK.

](https://docs.openclaw.ai/plugins/building-plugins)

## What is OpenClaw?

OpenClaw is a **self-hosted gateway** that connects your favorite chat apps — Discord, Google Chat, iMessage, Matrix, Microsoft Teams, Signal, Slack, Telegram, WhatsApp, Zalo, and more via channel plugins — to AI coding agents. You run a single Gateway process on your own machine (or a server), and it becomes the bridge between your messaging apps and an always-available AI assistant.

**Who is it for?** Developers, power users, and teams who want an AI assistant they can message from anywhere — without giving up control of their data or relying on a hosted service. The same gateway runs as a personal assistant on one laptop or as a shared [team deployment](https://docs.openclaw.ai/start/teams); configuration is the only difference.

**What makes it different?**

- **Self-hosted**: runs on your hardware, your rules
- **Multi-channel**: one Gateway serves every configured channel plugin simultaneously
- **Agent-native**: built for coding agents with tool use, sessions, memory, and multi-agent routing
- **Open source**: MIT licensed, community-driven

The full architecture case — a trusted gateway, untrusted execution, deterministic policy, and how one product spans personal and team use — is in [Why OpenClaw](https://docs.openclaw.ai/start/why-openclaw).

**What do you need?** Node 26 (recommended), or another supported release: Node 24.16+ or Node 26.1+. You also need an API key from your chosen provider and 5 minutes. For best quality and security, use the strongest latest-generation model available.

## How it works

```
flowchart LR
  A["Chat apps + plugins"] --> B["Gateway"]
  B --> C["OpenClaw agent"]
  B --> D["CLI"]
  B --> E["Web Control UI"]
  B --> F["macOS app"]
  B --> G["iOS and Android nodes"]
```

The Gateway is the single source of truth for sessions, routing, and channel connections.

## OpenClaw 🦞

> *"EXFOLIATE! EXFOLIATE!"* — A space lobster, probably

**Your AI assistant, on your own hardware, in every chat app you already use.**

One Gateway. Any model. Any device. No hosted service in the middle.

Developed in the open by the [OpenClaw Foundation](https://openclaw.org/), an independent 501(c)(3). No paid tier, no telemetry by default beyond a [version check](https://docs.openclaw.ai/gateway/telemetry) you can turn off, no lab owns it.

## Dashboard

Open the browser Control UI after the Gateway starts.

- Local default: [http://127.0.0.1:18789/](http://127.0.0.1:18789/)
- Remote access: [Web surfaces](https://docs.openclaw.ai/web) and [Tailscale](https://docs.openclaw.ai/gateway/tailscale)

![OpenClaw](https://docs.openclaw.ai/whatsapp-openclaw.jpg)

## Configuration (optional)

Config lives at `~/.openclaw/openclaw.json`.

- If you **do nothing**, OpenClaw uses the bundled OpenClaw agent runtime; DMs share the agent's main session, and each group chat gets its own session.
- If you want to lock it down, start with `channels.whatsapp.allowFrom` and (for groups) mention rules.

Example:

json5

```
{
  channels: {
    whatsapp: {
      allowFrom: ["+15555550123"],
      groups: { "*": { requireMention: true } },
    },
  },
  messages: { groupChat: { mentionPatterns: ["@openclaw"] } },
}
```

## Browse docs

Mobile browsers may show the section menu without the full desktop tab bar. Use these hub links to reach the same top-level docs areas from the page body.[**Get started**

Overview, first steps, and setup guides.

](https://docs.openclaw.ai/start/getting-started)

[

**Install**

Install paths, updates, containers, hosting, and advanced setup.

](https://docs.openclaw.ai/install)[

**Channels**

Messaging channels, pairing, routing, access groups, and channel QA.

](https://docs.openclaw.ai/channels)[

**Agents**

Architecture, sessions, context, memory, and multi-agent routing.

](https://docs.openclaw.ai/concepts/architecture)[

**Capabilities**

Tools, skills, cron, webhooks, and automation capabilities.

](https://docs.openclaw.ai/tools)[

**ClawHub**

Plugin marketplace, publishing, curation, and trust guidance.

](https://docs.openclaw.ai/clawhub)[

**Models**

Providers, model configuration, failover, and local model services.

](https://docs.openclaw.ai/providers)[

**Platforms**

macOS, Windows, iOS, Android, nodes, and web surfaces.

](https://docs.openclaw.ai/platforms)[

**Gateway & Ops**

Gateway configuration, security, diagnostics, and operations.

](https://docs.openclaw.ai/gateway)[

**Reference**

CLI reference, schemas, RPC, and templates.

](https://docs.openclaw.ai/cli)[

**Releases**

Release notes for each version, with highlights and source links.

](https://docs.openclaw.ai/releases)[

**Help**

Troubleshooting, FAQs, testing, diagnostics, and environment checks.

](https://docs.openclaw.ai/help)

## Start here[**Docs hubs**

All docs and guides, organized by use case.

](https://docs.openclaw.ai/start/hubs)

[

**Configuration**

Core Gateway settings, tokens, and provider config.

](https://docs.openclaw.ai/gateway/configuration)[

**Remote access**

SSH and tailnet access patterns.

](https://docs.openclaw.ai/gateway/remote)[

**Channels**

Channel-specific setup for Discord, Feishu, Microsoft Teams, Telegram, WhatsApp, and more.

](https://docs.openclaw.ai/channels)[

**Nodes**

iOS and Android nodes with pairing, camera, screen, and device actions.

](https://docs.openclaw.ai/nodes)[

**Help**

Common fixes and troubleshooting entry point.

](https://docs.openclaw.ai/help)

## Learn more[**Full feature list**

Complete channel, routing, and media capabilities.

](https://docs.openclaw.ai/concepts/features)

[

**Multi-agent routing**

Workspace isolation and per-agent sessions.

](https://docs.openclaw.ai/concepts/multi-agent)[

**Security**

Tokens, allowlists, and safety controls.

](https://docs.openclaw.ai/gateway/security)[

**Troubleshooting**

Gateway diagnostics and common errors.

](https://docs.openclaw.ai/gateway/troubleshooting)[

**About and credits**

Project origins, contributors, and license.

](https://docs.openclaw.ai/reference/credits)