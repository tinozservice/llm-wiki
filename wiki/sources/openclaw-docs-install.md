---
title: "OpenClaw Docs — Install (referensi)"
type: source
created: 2026-10-08
updated: 2026-10-08
sources: []
tags: [openclaw, docs, install]
---

# OpenClaw Docs — Install (referensi)

- **Sumber**: docs.openclaw.ai/install
- **Penulis**: OpenClaw AI
- **URL**: <https://docs.openclaw.ai/install>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-08
- **Berkas mentah**: `raw/2026/oktober/08/OpenClaw Docs. install.md`

## TL;DR

Referensi pemasangan lengkap: kebutuhan sistem (Node 24.16+/26.1+; macOS/Linux/Windows), **desktop app** (Windows Hub / macOS menu bar), **installer script**, npm/pnpm/bun, **local prefix** (`install-cli.sh` di bawah `~/.openclaw`), git checkout, container & package manager, hingga hosting (VPS/cloud/docker/Kubernetes/macOS VM/Upstash Box).

## Key points

- Instalasi tanpa onboarding: flag `--no-onboard` / `-NoOnboard`.
- npm: `npm install -g openclaw@latest --allow-scripts=openclaw` (npm 12 memblokir lifecycle script default); pnpm: `--allow-build=openclaw`; bun: `--trust` + `--daemon-runtime bun` (Bun 1.4+; Node tetap runtime utama).
- Dari source: `corepack enable; pnpm install && pnpm build && pnpm ui:build; pnpm add --global "openclaw@link:$PWD"`.
- Verifikasi: `openclaw --version`, `openclaw doctor`, `openclaw gateway status`; daemon: LaunchAgent (macOS), systemd user (Linux/WSL2), **Scheduled Task native Windows** dengan fallback Startup-folder.
- **Hosting**: provider picker di docs (DigitalOcean, Hetzner, **Hostinger**, Fly.io, GCP, Azure, Railway, Northflank, Oracle Cloud, Raspberry Pi, dll.), Render deklaratif, Cloudflare Containers (eksperimental), Docker VM, Kubernetes, macOS VM, Upstash Box.
- Backup/update/migrate/uninstall + troubleshooting umum (PATH, `node -v`, `npm prefix -g`).

## Notable quotes

> "Deploy OpenClaw on a cloud server or VPS."

## What this changes

- Melengkapi [OpenClaw](../entities/openclaw.md); koneksi ke [Hosting Web](../concepts/web-hosting.md) (Hostinger tercantum sebagai target deploy).
- Tidak ada kontradiksi.

## Related

- [OpenClaw](../entities/openclaw.md)
- [OpenClaw — Install (pemasaran)](openclaw-install.md) · [OpenClaw Docs — Getting Started](openclaw-docs-getting-started.md)
