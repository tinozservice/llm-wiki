---
title: "OpenClaw Docs — Onboarding (CLI)"
type: source
created: 2026-10-08
updated: 2026-10-08
sources: []
tags: [openclaw, docs, onboarding]
---

# OpenClaw Docs — Onboarding (CLI)

- **Sumber**: docs.openclaw.ai/start/wizard
- **Penulis**: OpenClaw AI
- **URL**: <https://docs.openclaw.ai/start/wizard>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-08
- **Berkas mentah**: `raw/2026/oktober/08/OpenClaw Docs. Onboarding (CLI).md`

## TL;DR

`openclaw onboard` = jalur setup terminal yang disarankan. **Quick start** mendeteksi akses AI yang tersedia, memverifikasi dengan completion nyata, lalu membuka dashboard dengan Gateway foreground; **Custom setup** mempertahankan alur berpanduan penuh. Onboarding bisa membuat **satu agen** (`main`) atau **tim kecil**: chief of staff (`coordinator`) + researcher + writer + reviewer, masing-masing workspace & kontrak peran.

## Key points

- Deteksi koneksi: model terkonfigurasi, env var API key, CLI AI lokal, model tool-capable dari Ollama/LM Studio (read-only, tanpa unduhan); provider yang didukung muncul di picker yang sama; gagal → kembali memilih, **tidak** otomatis pindah provider.
- Tim: `openclaw onboard --team` (atau `openclaw agents team create`); koordinator didelegasikan tugas & memverifikasi hasil spesialis; `--team` tidak bisa dikombinasi dengan remote/classic/import.
- Wizard klasik (`--classic`): mode QuickStart/Manual/**Import dari agen lain** (Claude, Codex, **Hermes**); langkah lengkap: workspace → model/auth → gateway → channels → web search → skills → daemon → health check.
- Defaults QuickStart: gateway loopback, port **18789**, auth token (auto-generated), tool profile "full", Tailscale off, DM Telegram/WhatsApp = allowlist; DM security default = **pairing** (kode, approve via `openclaw pairing approve`).
- Setelah inference lolos: setup channel/skill/search bisa dilanjutkan **secara percakapan** (`open channel wizard for <channel>`, `configure skills`, `configure web search`); `import memory` menyalin memori lokal yang terdeteksi.
- Re-run tidak menghapus apa pun tanpa `--reset` (scope: config / config+creds+sessions / full).
- Catatan keamanan model: untuk agen ber-tool, gunakan model generasi terbaru terkuat — tier lama lebih mudah prompt-injected.

## Notable quotes

> "Guided onboarding verifies your selected connection before starting the Gateway and AI chat."

## What this changes

- Entitas [OpenClaw](../entities/openclaw.md) (alur setup & preset tim).
- Migrasi dari **Hermes** tersedia sebagai jalur import — koneksi [Hermes Agent](../entities/hermes-agent.md).
- Tidak ada kontradiksi.

## Related

- [OpenClaw](../entities/openclaw.md)
- [OpenClaw Docs — CLI Setup Reference](openclaw-docs-cli-setup-reference.md) · [OpenClaw Docs — Team Setup](openclaw-docs-team-setup.md)
