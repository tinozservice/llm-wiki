---
title: "OpenClaw Docs — Landing"
type: source
created: 2026-10-08
updated: 2026-10-08
sources: []
tags: [openclaw, docs]
---

# OpenClaw Docs — Landing

- **Sumber**: docs.openclaw.ai (halaman depan dokumentasi)
- **Penulis**: OpenClaw AI
- **URL**: <https://docs.openclaw.ai/>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-08
- **Berkas mentah**: `raw/2026/oktober/08/OpenClaw Docs. Landing.md`

## TL;DR

Dokumentasi resmi: OpenClaw adalah **self-hosted gateway** yang menghubungkan aplikasi chat (Discord, Google Chat, iMessage, Matrix, Teams, Signal, Slack, Telegram, WhatsApp, Zalo, dll.) ke **AI coding agents**. Satu proses Gateway di mesin/server Anda menjadi jembatan antara aplikasi pesan dan asisten AI yang selalu tersedia. Rilis terkini di klip: **v2026.9.8**.

## Key points

- Untuk siapa: developer, power user, tim — asisten yang bisa dihubungi dari mana saja tanpa menyerahkan data ke layanan hosted; satu gateway bisa personal (satu laptop) atau deployment tim — bedanya hanya konfigurasi.
- Pembeda: **self-hosted**, **multi-channel** (satu Gateway melayani semua channel plugin), **agent-native** (tool use, sessions, memory, multi-agent routing), **open source MIT**.
- Arsitektur: chat apps + plugins → **Gateway** → agent OpenClaw / CLI / Web Control UI / app macOS / node iOS+Android. Gateway = single source of truth untuk sesi, routing, dan koneksi channel.
- Dashboard default `http://127.0.0.1:18789/`; config di `~/.openclaw/openclaw.json`; default aman tanpa config (DM berbagi sesi main; grup sesi sendiri); hardening mulai dari `channels.whatsapp.allowFrom` + mention rules.
- Kebutuhan: Node 26 (disarankan) / 24.16+ / 26.1+, API key provider, ~5 menit.
- Dikelola OpenClaw Foundation (501(c)(3)); tanpa tier berbayar; **tanpa telemetri default selain version check yang bisa dimatikan**; tidak ada lab yang memiliki.

## Notable quotes

> "Your AI assistant, on your own hardware, in every chat app you already use. One Gateway. Any model. Any device. No hosted service in the middle."

## What this changes

- Entitas [OpenClaw](../entities/openclaw.md).
- Tidak ada kontradiksi.

## Related

- [OpenClaw](../entities/openclaw.md)
- [OpenClaw Docs — Getting Started](openclaw-docs-getting-started.md) · [OpenClaw Docs — Why OpenClaw](openclaw-docs-why-openclaw.md)
