---
title: "OpenClaw Docs — Getting Started"
type: source
created: 2026-10-08
updated: 2026-10-08
sources: []
tags: [openclaw, docs, onboarding]
---

# OpenClaw Docs — Getting Started

- **Sumber**: docs.openclaw.ai/start/getting-started
- **Penulis**: OpenClaw AI
- **URL**: <https://docs.openclaw.ai/start/getting-started>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-08
- **Berkas mentah**: `raw/2026/oktober/08/OpenClaw Docs. getting-started.md`

## TL;DR

Dari nol ke chat dengan asisten AI dalam **~5 menit**: pasang OpenClaw, jalankan onboarding, dapatkan Gateway + auth + sesi chat. Kebutuhan: **Node.js 24.16+/26.1+** (26 disarankan) dan **login Claude Code/Codex CLI atau API key provider** — onboarding bisa memakai ulang yang sudah ada.

## Key points

- Satu perintah coba: `npx openclaw@latest` → pilih **Quick start** → deteksi & verifikasi akses AI dengan completion nyata → simpan config → buka dashboard. Gateway jalan di terminal sampai Ctrl+C.
- Alur cepat: install script (`curl … install.sh | bash` / PowerShell) → onboarding otomatis → `openclaw gateway install` (LaunchAgent/systemd/Scheduled Task) → `openclaw gateway status` (port **18789**) → `openclaw dashboard` → pesan pertama. Channel tercepat untuk HP: **Telegram** (cukup bot token).
- Advanced: Control UI kustom via `gateway.controlUi.root`.
- Jika gagal: `openclaw triage` (health check read-only → prompt tersanitasi → serahkan ke Claude Code/Codex/built-in agent; tidak ada yang keluar dari mesin sebelum Anda memilih agen; secret/token/payload eksklusif) atau `openclaw doctor`.
- Env vars: `OPENCLAW_HOME`, `OPENCLAW_STATE_DIR`, `OPENCLAW_CONFIG_PATH`.

## Notable quotes

> "It runs read-only health checks, writes a sanitized prompt describing what it found, and then offers to hand that prompt to a coding agent it detects on your machine."

## What this changes

- Entitas [OpenClaw](../entities/openclaw.md) (jalur adopsi).
- Tidak ada kontradiksi.

## Related

- [OpenClaw](../entities/openclaw.md)
- [OpenClaw Docs — Install](openclaw-docs-install.md) · [OpenClaw Docs — Onboarding (CLI)](openclaw-docs-onboarding-cli.md)
