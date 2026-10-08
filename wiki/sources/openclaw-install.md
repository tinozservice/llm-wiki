---
title: "OpenClaw — Install (halaman pemasaran)"
type: source
created: 2026-10-08
updated: 2026-10-08
sources: []
tags: [openclaw, install]
---

# OpenClaw — Install (halaman pemasaran)

- **Sumber**: openclaw.ai/install
- **Penulis**: OpenClaw AI
- **URL**: <https://openclaw.ai/install>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-08
- **Berkas mentah**: `raw/2026/oktober/08/OpenClaw. Install OpenClaw.md`

## TL;DR

Cara pasang OpenClaw: **desktop app** (Windows 10/11 x64/ARM64 v2026.9.4) — tanpa terminal; atau **satu perintah** (`irm https://openclaw.ai/install.ps1 | iex` di Windows; `install.sh` di macOS/Linux) yang otomatis memasang Node.js dan memulai onboarding.

## Key points

- Jalur lain: **npm** (`npm i -g openclaw` + `openclaw onboard`; npm 12 butuh `--allow-scripts=openclaw`), **pnpm** (`--allow-build=openclaw`), **CLI-only tanpa onboarding** (`install-cli.sh`, prefix `~/.openclaw`), **beta channel** (`-Tag beta`), **dari source** (checkout git).
- Update: `openclaw update`; pindah npm↔git via `openclaw update --channel dev`.
- Diagnosa: `openclaw doctor`. Uninstall & migrasi dari asisten lain tersedia (panduan terpisah).

## Notable quotes

> "One command. Installs Node.js if needed, then starts onboarding."

## What this changes

- Entitas [OpenClaw](../entities/openclaw.md) (jalur instalasi resmi).
- Tidak ada kontradiksi.

## Related

- [OpenClaw](../entities/openclaw.md)
- [OpenClaw Docs — Install](openclaw-docs-install.md) · [OpenClaw Docs — Getting Started](openclaw-docs-getting-started.md)
