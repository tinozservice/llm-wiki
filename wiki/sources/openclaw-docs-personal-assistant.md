---
title: "OpenClaw Docs — Personal Assistant Setup"
type: source
created: 2026-10-08
updated: 2026-10-08
sources: []
tags: [openclaw, docs, personal-assistant, whatsapp]
---

# OpenClaw Docs — Personal Assistant Setup

- **Sumber**: docs.openclaw.ai/start/openclaw
- **Penulis**: OpenClaw AI
- **URL**: <https://docs.openclaw.ai/start/openclaw>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-08
- **Berkas mentah**: `raw/2026/oktober/08/OpenClaw Docs. Personal assistant setup.md`

## TL;DR

Panduan "asisten pribadi": nomor WhatsApp khusus yang berperilaku seperti asisten always-on. Pola **dua ponsel** (nomor pribadi + nomor asisten yang di-QR ke OpenClaw) agar setiap pesan pribadi tidak menjadi input agen. Default aman: `channels.whatsapp.allowFrom` wajib, heartbeat 30 menit (bisa dimatikan `"0m"` saat evaluasi).

## Key points

- 5 menit: `openclaw channels login` (QR) → `openclaw gateway --port 18789` → config minimal JSON5 (allowFrom) → kirim pesan dari nomor yang di-allowlist.
- **Workspace agen** (`~/.openclaw/workspace`): berisi `AGENTS.md`, `SOUL.md` (persona), `IDENTITY.md`, `USER.md`; `MEMORY.md` opsional; sesi subagent hanya menyuntik `AGENTS.md`. Sarannya: jadikan git repo (privat) untuk backup.
- Config "asisten": persona, thinkingDefault, timeoutSeconds, heartbeat, group mention patterns (`@openclaw`), session scope per-sender + reset harian (`/new`, `/reset`), `/compact`.
- **Heartbeats**: default tiap 30 menit (60 menit bila auth Anthropic OAuth/Claude CLI); prompt heartbeat tetap; balas `NO_REPLY` → tidak dikirim; scratch kosong → dilewati; interval pendek = bakar token.
- Media masuk/keluar: template attachment (`{{AttachmentPath}}`, `{{Transcript}}`, dll. — nama lama deprecated), media outbound terstruktur; `tools.fs.workspaceOnly` membatasi path lokal; validasi tipe file ≠ pemindai rahasia.
- Operasional: `openclaw status [--all|--deep]`, `openclaw health --json`; log di `/tmp/openclaw/`.
- Jalur: WebChat, Gateway runbook, cron/wakeups, app macOS/iOS/Android, Windows Hub, security.

## Notable quotes

> "If you link your personal WhatsApp to OpenClaw, every message to you becomes 'agent input'. That's rarely what you want."

## What this changes

- Entitas [OpenClaw](../entities/openclaw.md) (setup asisten pribadi).
- Tidak ada kontradiksi.

## Related

- [OpenClaw](../entities/openclaw.md)
- [OpenClaw Docs — Team Setup](openclaw-docs-team-setup.md)
