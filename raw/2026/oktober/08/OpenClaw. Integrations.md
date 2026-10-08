---
title: Integrations
source: https://openclaw.ai/integrations
author:
  - "[[OpenClaw AI]]"
published:
created: 2026-10-08
description: Connect OpenClaw to chat channels, model providers, tools, automation, companion apps, and community extensions.
tags:
  - clippings
---
chat channels

29

model & media providers

64

official plugins

142

## Chat channels

Run several channels at once and route each conversation through the Gateway. Every channel installs in one command or during onboarding.

[Channel directory ↗](https://docs.openclaw.ai/channels)

### [ClickClack](https://docs.openclaw.ai/channels/clickclack)

Self-hosted ClickClack workspaces through first-class bot tokens.

### [Discord](https://docs.openclaw.ai/channels/discord)

Servers, channels, DMs, commands, and app events.

### [Feishu / Lark](https://docs.openclaw.ai/channels/feishu)

Workplace chats and tools over WebSocket.

### [Google Chat](https://docs.openclaw.ai/channels/googlechat)

Spaces and direct messages through a Chat app.

### [iMessage](https://docs.openclaw.ai/channels/imessage)

Native macOS messaging through the imsg bridge.

### [IRC](https://docs.openclaw.ai/channels/irc)

Classic IRC channels and DMs with access controls.

### [LINE](https://docs.openclaw.ai/channels/line)

LINE Messaging API bot conversations.

### [Matrix](https://docs.openclaw.ai/channels/matrix)

Rooms and direct messages over Matrix.

### [Mattermost](https://docs.openclaw.ai/channels/mattermost)

Channels, groups, and DMs over Bot API and WebSocket.

### [Microsoft Teams](https://docs.openclaw.ai/channels/msteams)

Enterprise conversations through Bot Framework.

### [Nextcloud Talk](https://docs.openclaw.ai/channels/nextcloud-talk)

Self-hosted chat through Nextcloud Talk.

### [Nostr](https://docs.openclaw.ai/channels/nostr)

Decentralized encrypted direct messages.

### [QQ Bot](https://docs.openclaw.ai/channels/qqbot)

Private chats, group chats, and rich media.

### [Raft](https://docs.openclaw.ai/channels/raft)

Raft External Agents through the Raft CLI wake bridge.

### [Signal](https://docs.openclaw.ai/channels/signal)

Privacy-focused messaging through signal-cli.

### [Slack](https://docs.openclaw.ai/channels/slack)

Channels, DMs, commands, and app events.

### [SMS](https://docs.openclaw.ai/channels/sms)

Twilio-backed text messaging through the Gateway.

### [Synology Chat](https://docs.openclaw.ai/channels/synology-chat)

Synology NAS chat through incoming and outgoing webhooks.

### [Telegram](https://docs.openclaw.ai/channels/telegram)

Bot API conversations, groups, and rich media.

### [Tlon](https://docs.openclaw.ai/channels/tlon)

Urbit-based messaging for chat workflows.

### [Twitch](https://docs.openclaw.ai/channels/twitch)

Live chat and moderation workflows.

### [Voice Call](https://docs.openclaw.ai/plugins/voice-call)

Phone conversations through Twilio, Telnyx, or Plivo.

### [WebChat](https://docs.openclaw.ai/web/webchat)

Gateway-hosted browser chat over WebSocket.

### [WeChat / Weixin](https://docs.openclaw.ai/channels/wechat)

Tencent iLink messaging through QR login.

### [WhatsApp](https://docs.openclaw.ai/channels/whatsapp)

WhatsApp Web chats through QR pairing.

### [Yuanbao](https://docs.openclaw.ai/channels/yuanbao)

Tencent Yuanbao bot conversations.

### [Zalo](https://docs.openclaw.ai/channels/zalo)

Zalo Bot API chats and webhooks.

### [Zalo ClawBot](https://docs.openclaw.ai/channels/zaloclawbot)

Owner-bound personal Zalo assistant through QR login.

### [Zalo Personal](https://docs.openclaw.ai/channels/zalouser)

Personal-account messaging through native zca-js.

## Models and media providers

OpenClaw separates model choice, authentication, and execution runtime. Providers can also add search, speech, image, video, music, and media understanding.

[Provider directory ↗](https://docs.openclaw.ai/providers)

### [Anthropic](https://docs.openclaw.ai/providers/anthropic)

Claude API and Claude CLI with API-key and subscription-backed routes.

### [Google](https://docs.openclaw.ai/providers/google)

Gemini API and CLI OAuth across chat, search, media, and voice.

### [MiniMax](https://docs.openclaw.ai/providers/minimax)

Coding Plan OAuth and API-key routes across chat and generated media.

### [Moonshot / Kimi](https://docs.openclaw.ai/providers/moonshot)

Kimi general models and a separate coding-focused provider.

### [OpenAI](https://docs.openclaw.ai/providers/openai)

OpenAI API plus ChatGPT/Codex sign-in and native Codex execution.

### [Qwen](https://docs.openclaw.ai/providers/qwen)

Qwen Cloud, Coding Plan, and Portal token flows.

### [SpaceXAI](https://docs.openclaw.ai/providers/xai)

Grok OAuth and API routes with search, code, image, video, and speech.

### [Z.AI](https://docs.openclaw.ai/providers/zai)

GLM models through Coding Plan and general API routes.

## Built-in tools and automation

Tools are callable actions, skills teach repeatable workflows, and plugins add runtime capabilities such as providers, channels, hooks, and tools.

[Tools overview ↗](https://docs.openclaw.ai/tools)

### [Web and browser](https://docs.openclaw.ai/tools/web)

Search, fetch readable pages, inspect X, and operate browser sessions.

### [Files and code](https://docs.openclaw.ai/tools)

Read, write, patch, run commands, and use provider-backed code execution.

### [Messaging actions](https://docs.openclaw.ai/tools/agent-send)

Reply, react, route, and send through connected channels.

### [Agents and sessions](https://docs.openclaw.ai/tools/subagents)

Delegate, steer, coordinate ACP harnesses, and track goals.

### [Generated media](https://docs.openclaw.ai/tools/media-overview)

Create images, videos, music, and spoken replies with provider failover.

### [Tool Search](https://docs.openclaw.ai/tools/tool-search)

Discover and call large eligible tool catalogs without loading every schema.

### [Automation](https://docs.openclaw.ai/automation)

Schedule, monitor, trigger, and audit work in the background.

### [Plugins and skills](https://docs.openclaw.ai/tools/plugin)

Add channels, providers, tools, hooks, workflows, and reusable instructions.

### Automation is more than cron

Choose the right mechanism for schedules, monitoring, events, durable flows, and persistent instructions.

1. 01 [Scheduled Tasks ↗](https://docs.openclaw.ai/automation/cron-jobs)
2. 02 [Heartbeat ↗](https://docs.openclaw.ai/gateway/heartbeat)
3. 03 [Background Tasks ↗](https://docs.openclaw.ai/automation/tasks)
4. 04 [Task Flow ↗](https://docs.openclaw.ai/automation/taskflow)
5. 05 [Hooks ↗](https://docs.openclaw.ai/automation/hooks)
6. 06 [Standing Orders ↗](https://docs.openclaw.ai/automation/standing-orders)
7. 07 [Webhooks ↗](https://docs.openclaw.ai/automation/webhook)

## Gateway hosts and companion nodes

The Gateway runs on desktop and server operating systems. Companion nodes connect mobile and native device capabilities without hosting the Gateway themselves.

[Platform guide ↗](https://docs.openclaw.ai/platforms)

### Gateway hosts

Run the agent runtime, channels, automation, and services.

[**macOS** Run the Gateway locally or connect the menu-bar companion to a remote Gateway.](https://docs.openclaw.ai/platforms/macos) [**Windows** Use Windows Hub, native PowerShell, or a WSL2-hosted Gateway.](https://docs.openclaw.ai/platforms/windows) [**Linux** Fully supported Gateway host with systemd service management.](https://docs.openclaw.ai/platforms/linux) [**VPS and cloud** Deploy on Fly.io, Hetzner, GCP, Azure, exe.dev, EasyRunner, and more.](https://docs.openclaw.ai/platforms)

### Companion nodes

Expose camera, screen, voice, location, Canvas, and native actions.

[**macOS app** Menu bar, notifications, Canvas, camera, screen, and system tools.](https://docs.openclaw.ai/platforms/macos) [**Windows Hub** Setup, tray status, chat, node mode, camera, screen, and speech.](https://docs.openclaw.ai/platforms/windows) [**iOS node** Canvas, screen snapshot, camera, location, Talk mode, and Voice Wake.](https://docs.openclaw.ai/platforms/ios) [**Android node** Official companion node for chat, voice, Canvas, screen, and camera.](https://docs.openclaw.ai/platforms/android)

## Community skills and plugins

ClawHub is the public registry for reusable skills and installable plugins. Community extensions are labeled separately from capabilities included in OpenClaw.

[Browse ClawHub ↗](https://clawhub.ai/)