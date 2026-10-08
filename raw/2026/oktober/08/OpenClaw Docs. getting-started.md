---
title: OpenClaw Docs
source: https://docs.openclaw.ai/start/getting-started
author:
  - "[[OpenClaw AI]]"
published:
created: 2026-10-08
description: OpenClaw is an open-source AI assistant that runs on your own hardware and meets you in every chat app you already use.
tags:
  - clippings
---
Install OpenClaw, run onboarding, and chat with your AI assistant in about 5 minutes. By the end you will have a running Gateway, configured auth, and a working chat session.

## What you need

- **Node.js 24.16+ or 26.1+** (Node 26 is the recommended runtime)
- **An existing Claude Code or Codex CLI login, or a provider API key** — onboarding can reuse it

> [!note] Note
> **Tip**
> 
> Check your Node version with `node --version`. **Windows users:** the native Windows Hub app is the easiest desktop path. The PowerShell installer and WSL2 Gateway paths are also supported. See [Windows](https://docs.openclaw.ai/platforms/windows). Need to install Node? See [Node setup](https://docs.openclaw.ai/install/node).

## Try it in one command

bash

```bash
npx openclaw@latest
```

On a fresh install, choose **Quick start** after a one-line pointer to the [security guide](https://docs.openclaw.ai/gateway/security). That is the only onboarding prompt when usable AI access is already available: OpenClaw finds an existing Claude Code or Codex CLI login or API key, verifies it with a real completion, saves the config, and opens the web dashboard.

The Gateway runs in this terminal until you press **Ctrl+C**; your config stays saved. If no detected route works, onboarding opens manual provider setup. Choose **Custom setup** to walk through all guided options instead.

To keep the Gateway running in the background later, install the CLI below and run `openclaw gateway install`. Run `openclaw` for the TUI or `openclaw dashboard` to reopen the web UI.

## Quick setup

- ### Install OpenClaw
	### macOS / Linux
	bash
	```bash
	curl -fsSL https://openclaw.ai/install.sh | bash
	```
	![Install Script Process](https://docs.openclaw.ai/assets/install-script.svg)
	### Windows (PowerShell)
	powershell
	```powershell
	iwr -useb https://openclaw.ai/install.ps1 | iex
	```
	> [!note] Note
	> **Note**
	> 
	> Other install methods (Docker, Nix, npm): [Install](https://docs.openclaw.ai/install).
- ### Complete onboarding
	The installer starts the guided onboarding wizard automatically. Choose **Quick start** to reuse detected AI access and open the dashboard, or **Custom setup** for the full guided flow. Provider sign-in and optional setup can take longer. Return later with `openclaw configure` for additional settings. `openclaw onboard --classic` opens the classic step-by-step wizard instead.
	See [Onboarding (CLI)](https://docs.openclaw.ai/start/wizard) for the full reference.
- ### Install the Gateway service
	Quick start keeps the Gateway in the foreground of this terminal. The next steps need it running in the background. Press **Ctrl+C** to stop the foreground Gateway, then install the service:
	bash
	```bash
	openclaw gateway install
	```
	This installs a LaunchAgent on macOS, a systemd user unit on Linux and WSL2, or a Scheduled Task on native Windows (with a per-user Startup-folder login item as the fallback if task creation is denied). Your config stays saved across the stop and the install.
- ### Verify the Gateway is running
	bash
	```bash
	openclaw gateway status
	```
	You should see the Gateway listening on port 18789.
- ### Open the dashboard
	bash
	```bash
	openclaw dashboard
	```
	This opens the Control UI in your browser. If it loads, everything is working.
- ### Send your first message
	Type a message in the Control UI chat and you should get an AI reply.
	Want to chat from your phone instead? The fastest channel to set up is [Telegram](https://docs.openclaw.ai/channels/telegram) (just a bot token). See [Channels](https://docs.openclaw.ai/channels) for all options.

Advanced: mount a custom Control UI build

If you maintain a localized or customized dashboard build, point `gateway.controlUi.root` to a directory that contains your built static assets and `index.html`.

bash

```bash
mkdir -p "$HOME/.openclaw/control-ui-custom"
# Copy your built static files into that directory.
```

Then set:

json

```json
{
  "gateway": {
    "controlUi": {
      "enabled": true,
      "root": "${HOME}/.openclaw/control-ui-custom"
    }
  }
}
```

Restart the gateway and reopen the dashboard:

bash

```bash
openclaw gateway restart
openclaw dashboard
```

## If setup does not work

One command turns the current state of your install into a diagnosis you can act on:

bash

```bash
openclaw triage
```

It runs read-only health checks, writes a sanitized prompt describing what it found, and then offers to hand that prompt to a coding agent it detects on your machine — Claude Code, Codex CLI, or the built-in OpenClaw agent — so the agent starts with the diagnosis already loaded. Pick "just print the commands" if you would rather run the handoff yourself.

Nothing leaves your machine until you choose an agent, and secrets, tokens, raw chat payloads, and raw logs are excluded from the prompt.

To read the findings yourself instead, run [`openclaw doctor`](https://docs.openclaw.ai/cli/doctor). For symptom-first routes, see [Troubleshooting](https://docs.openclaw.ai/help/troubleshooting).

## What to do next[**Connect a channel**

Discord, Feishu, iMessage, Matrix, Microsoft Teams, Signal, Slack, Telegram, WhatsApp, Zalo, and more.

](https://docs.openclaw.ai/channels)

[

**Pairing and safety**

Control who can message your agent.

](https://docs.openclaw.ai/channels/pairing)[

**Configure the Gateway**

Models, tools, sandbox, and advanced settings.

](https://docs.openclaw.ai/gateway/configuration)[

**Browse tools**

Browser, exec, web search, skills, and plugins.

](https://docs.openclaw.ai/tools)

Advanced: environment variables

If you run OpenClaw as a service account or want custom paths:

- `OPENCLAW_HOME` — home directory for internal path resolution
- `OPENCLAW_STATE_DIR` — override the state directory
- `OPENCLAW_CONFIG_PATH` — override the config file path

Full reference: [Environment variables](https://docs.openclaw.ai/help/environment).

## Related

- [Install overview](https://docs.openclaw.ai/install)
- [Channels overview](https://docs.openclaw.ai/channels)
- [Setup](https://docs.openclaw.ai/start/setup)
- [Personal assistant setup](https://docs.openclaw.ai/start/openclaw) - end-to-end guide to a dedicated number that behaves like an always-on assistant
- [Triage](https://docs.openclaw.ai/cli/triage)
- [Troubleshooting](https://docs.openclaw.ai/help/troubleshooting)