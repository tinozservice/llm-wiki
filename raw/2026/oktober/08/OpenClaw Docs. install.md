---
title: OpenClaw Docs
source: https://docs.openclaw.ai/install
author:
  - "[[OpenClaw AI]]"
published:
created: 2026-10-08
description: OpenClaw is an open-source AI assistant that runs on your own hardware and meets you in every chat app you already use.
tags:
  - clippings
---
## System requirements

- **Node 24.16+ or 26.1+** - Node 26 is recommended; the installer provisions Node 26 on macOS and Node 24 LTS on Linux when Node is missing (see [Node.js compatibility](https://docs.openclaw.ai/install/node-compatibility)).
- **macOS, Linux, or Windows** - Windows users can start with the native Windows Hub app, the PowerShell CLI installer, or a WSL2 Gateway. See [Windows](https://docs.openclaw.ai/platforms/windows).
- `pnpm` is only needed if you build from source.

## Download the desktop app

Prefer a normal app download over the CLI? OpenClaw ships desktop companions:

- **Windows**: the [Windows Hub](https://docs.openclaw.ai/platforms/windows#recommended-windows-hub) companion app — a signed installer you download and run like any Windows app, with setup, tray status, chat, and node mode:
	- [OpenClawCompanion-Setup-x64.exe](https://github.com/openclaw/openclaw-windows-node/releases/latest/download/OpenClawCompanion-Setup-x64.exe)
		- [OpenClawCompanion-Setup-arm64.exe](https://github.com/openclaw/openclaw-windows-node/releases/latest/download/OpenClawCompanion-Setup-arm64.exe)
		- All Hub releases: [Windows Hub releases page](https://github.com/openclaw/openclaw-windows-node/releases/latest)
- **macOS**: the [macOS menu bar app](https://docs.openclaw.ai/platforms/macos) — download the `OpenClaw-<version>.dmg` (preferred) or `.zip` asset from [OpenClaw GitHub releases](https://github.com/openclaw/openclaw/releases), then install and launch **OpenClaw.app**. See the [macOS app page](https://docs.openclaw.ai/platforms/macos) for details, including what to do when the newest release ships no macOS asset.

Both desktop apps can provision a local Gateway during first-run setup, or connect to an existing remote Gateway.

## Recommended: installer script

The fastest way to install. It detects your OS, installs Node if needed, installs OpenClaw, and launches onboarding.

> [!note] Note
> **Note**
> 
> Windows desktop users can also install the native [Windows Hub](https://docs.openclaw.ai/platforms/windows#recommended-windows-hub) companion app, which includes setup, tray status, chat, node mode, and local MCP mode.

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

To install without running onboarding:

### macOS / Linux / WSL2

bash

```bash
curl -fsSL https://openclaw.ai/install.sh | bash -s -- --no-onboard
```

### Windows (PowerShell)

powershell

```powershell
& ([scriptblock]::Create((iwr -useb https://openclaw.ai/install.ps1))) -NoOnboard
```

For all flags and CI/automation options, see [Installer internals](https://docs.openclaw.ai/install/installer).

## Alternative install methods

### Local prefix installer (install-cli.sh)

Use this when you want OpenClaw and Node kept under a local prefix such as `~/.openclaw`, without depending on a system-wide Node install:

bash

```bash
curl -fsSL https://openclaw.ai/install-cli.sh | bash
```

It supports npm installs by default, plus git-checkout installs under the same prefix flow. Full reference: [Installer internals](https://docs.openclaw.ai/install/installer#install-clish).

Already installed? Switch between package and git installs with `openclaw update --channel dev` and `openclaw update --channel stable`. See [Updating](https://docs.openclaw.ai/install/updating#switch-between-npm-and-git-installs).

### npm, pnpm, or bun

If you already manage Node yourself:

### npm

On npm 12 or npm 11.16+:

bash

```bash
npm install -g openclaw@latest --allow-scripts=openclaw
openclaw onboard --install-daemon
```

On npm 11.15 and earlier, use the same command without `--allow-scripts=openclaw`.

> [!note] Note
> **Note**
> 
> npm 12 blocks unapproved package lifecycle scripts by default. The `--allow-scripts=openclaw` option explicitly allows OpenClaw's `preinstall` and `postinstall` steps; without it, npm reports them as `blocked because they are not covered by allowScripts`.
> 
> npm 11.16 accepts the option but otherwise only warns that the scripts are `not yet covered by allowScripts` and still runs them. npm 11.15 and earlier have neither the policy nor the option, so their command must be unflagged. The `npm approve-scripts openclaw` command suggested by npm 11.16 does not work for a global install — it fails with `ENOMATCH  No installed packages match: openclaw`.

> [!note] Note
> **Note**
> 
> The hosted installer clears npm freshness filters such as `min-release-age` for the OpenClaw package install. If you install manually with npm, your own npm policy still applies.

### pnpm

bash

```bash
pnpm add -g --allow-build=openclaw openclaw@latest
openclaw onboard --install-daemon
```

> [!note] Note
> **Note**
> 
> pnpm requires explicit approval for packages with build scripts. `approve-builds -g` is not supported for global installs, so pass `--allow-build=openclaw` on the `pnpm add -g` command instead.

### bun

bash

```bash
bun add -g --trust openclaw@latest
bun run --bun openclaw onboard --install-daemon --daemon-runtime bun
```

> [!note] Note
> **Note**
> 
> `--trust` allows OpenClaw's package lifecycle scripts for this install. Bun 1.4 or newer can also run OpenClaw's CLI, local agent, and Gateway. Node remains the primary runtime, so the plain `openclaw` executable keeps its Node shebang. `bun run --bun` forces the Bun runtime, while `--daemon-runtime bun` installs the managed Gateway under Bun.

### From source

For contributors or anyone who wants to run from a local checkout:

bash

```bash
git clone https://github.com/openclaw/openclaw.git
cd openclaw
corepack enable
pnpm install && pnpm build && pnpm ui:build
pnpm add --global "openclaw@link:$PWD"
openclaw onboard --install-daemon
```

`pnpm add --global "openclaw@link:$PWD"` links the CLI to this checkout without changing its package files. If pnpm reports that its global bin directory is not on `PATH`, run `pnpm setup`, reopen your shell, and retry.

Corepack selects the exact pnpm version from `package.json` (currently pnpm 12). If Corepack is unavailable, read that version from the checkout and install it explicitly:

bash

```bash
pnpm_spec=$(node -p "require('./package.json').packageManager.split('+')[0]")
npm install -g "$pnpm_spec" --allow-scripts="$pnpm_spec"
```

The `+` suffix records Corepack's integrity hash and is not part of the npm package specifier. Keep npm install scripts and optional dependencies enabled so pnpm can provision its native executable.

Or skip the global install and use `pnpm openclaw ...` from inside the repo. See [Setup](https://docs.openclaw.ai/start/setup) for full development workflows.

### Install from the GitHub main checkout

bash

```bash
curl -fsSL --proto '=https' --tlsv1.2 https://openclaw.ai/install.sh | bash -s -- --install-method git --version main
```

### Containers and package managers

## Verify the install

bash

```bash
openclaw --version      # confirm the CLI is available
openclaw doctor         # check for config issues
openclaw gateway status # verify the Gateway is running
```

If you want managed startup after install:

- macOS: LaunchAgent via `openclaw onboard --install-daemon` or `openclaw gateway install`
- Linux/WSL2: systemd user service via the same commands
- Native Windows: Scheduled Task first, with a per-user Startup-folder login item fallback if task creation is denied

## Next: run onboarding and connect a channel[**Getting started**

Run onboarding, install the Gateway service, and open the dashboard.

](https://docs.openclaw.ai/start/getting-started)

[

**Connect a channel**

Message your agent from Telegram, Discord, Slack, WhatsApp, and more.

](https://docs.openclaw.ai/channels)

## Hosting and deployment

Deploy OpenClaw on a cloud server or VPS. See [Linux server](https://docs.openclaw.ai/vps) for the full provider picker (DigitalOcean, Hetzner, Hostinger, Fly.io, GCP, Azure, Railway, Northflank, Oracle Cloud, Raspberry Pi, and more), deploy declaratively on [Render](https://docs.openclaw.ai/install/render), or try the experimental [Cloudflare Containers](https://docs.openclaw.ai/install/cloudflare) template.[**Cloudflare**

Experimental Worker + Container deployment.

](https://docs.openclaw.ai/install/cloudflare)

[

**Docker VM**

Shared Docker steps.

](https://docs.openclaw.ai/install/docker-vm-runtime)[

**Kubernetes**

K8s deployment.

](https://docs.openclaw.ai/install/kubernetes)[

**macOS VM**

Isolated local or hosted macOS deployment.

](https://docs.openclaw.ai/install/macos-vm)[

**Upstash Box**

Managed Linux host with SSH-tunneled access.

](https://docs.openclaw.ai/install/upstash)[

**VPS**

Pick a provider.

](https://docs.openclaw.ai/vps)

## Back up, update, migrate, or uninstall

## Troubleshooting: openclaw not found

Almost always a PATH issue: npm's global bin directory isn't on your shell's `PATH`. See [Node.js troubleshooting](https://docs.openclaw.ai/install/node#troubleshooting) for the full fix, including the Windows path.

bash

```bash
node -v           # Node installed?
npm prefix -g     # Where are global packages?
echo "$PATH"      # Is the global bin dir in PATH?
```