---
title: Install OpenClaw
source: https://openclaw.ai/install
author:
  - "[[OpenClaw AI]]"
published:
created: 2026-10-08
description: "Install OpenClaw on macOS, Windows, or Linux: download the desktop app or run one command. Node.js and everything else is installed for you."
tags:
  - clippings
---
## Desktop app

Recommended

Installs the Gateway, chat, and setup for you. No terminal needed.

[Windows 10/11 · x64 or ARM64 · v2026.9.4](https://docs.openclaw.ai/platforms/windows)

## Terminal

One command. Installs Node.js if needed, then starts onboarding.

`powershell -c "irm https://openclaw.ai/install.ps1 | iex"`

Prefer WSL2? Use the macOS and Linux command inside your distro.

## Three steps to your first chat

## Other ways to install

### npm

Already manage Node.js yourself? Install the CLI globally, then run onboarding.

`npm i -g openclaw`

`openclaw onboard`

On npm 12 add --allow-scripts=openclaw so OpenClaw's install scripts can run. [Details ↗](https://docs.openclaw.ai/install#npm-pnpm-or-bun)

### pnpm

pnpm needs explicit approval for packages with build scripts.

`pnpm add -g --allow-build=openclaw openclaw@latest`

`openclaw onboard`

### CLI only, no onboarding

macOS, Linux, and WSL2. Keeps Node.js and OpenClaw under a local prefix such as ~/.openclaw; nothing else on the system changes.

`curl -fsSL https://openclaw.ai/install-cli.sh | bash`

### Beta channel

Try the next release early.

`powershell -c "& ([scriptblock]::Create((irm https://openclaw.ai/install.ps1))) -Tag beta"`

### From source

Builds a pnpm checkout of the GitHub repository you can read and hack on.

`powershell -c "& ([scriptblock]::Create((irm https://openclaw.ai/install.ps1))) -InstallMethod git"`

[Contributor setup ↗](https://docs.openclaw.ai/start/setup)

## Update, check, or remove

### Update to the latest release

`openclaw update`

[Updating ↗](https://docs.openclaw.ai/install/updating)

### Switch between the npm package and a git checkout

`openclaw update --channel dev`

[Channels ↗](https://docs.openclaw.ai/install/development-channels)

### Check the install and fix common problems

`openclaw doctor`

[Troubleshooting ↗](https://docs.openclaw.ai/install/update-troubleshooting)

### Remove OpenClaw

[Uninstall guide ↗](https://docs.openclaw.ai/install/uninstall)

Coming from another assistant? [See the migration guides ↗](https://docs.openclaw.ai/install/migrating)