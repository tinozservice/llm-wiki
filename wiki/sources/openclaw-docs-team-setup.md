---
title: "OpenClaw Docs — Team Setup"
type: source
created: 2026-10-08
updated: 2026-10-08
sources: []
tags: [openclaw, docs, team, multi-user]
---

# OpenClaw Docs — Team Setup

- **Sumber**: docs.openclaw.ai/start/teams
- **Penulis**: OpenClaw AI
- **URL**: <https://docs.openclaw.ai/start/teams>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-08
- **Berkas mentah**: `raw/2026/oktober/08/OpenClaw Docs. Team setup.md`

## TL;DR

Satu Gateway untuk satu tim: bot di workspace chat (Slack/Discord/Teams/…), sesi bersama yang bisa dibuka & dikemudikan siapa pun di Control UI, dan **named operator roles** yang membatasi tiap orang. "Tim bukan edisi terpisah — hanya konfigurasi."

## Key points

- **Satu trust boundary**: siapa pun yang bisa mem-message agen ber-tool berbagi otoritas tool agen; role/ownership/presence = pagar kolaborasi, bukan isolasi antar-adversari. Untuk pihak yang saling tak percaya → satu gateway per tenant.
- Akses: **Tailscale Serve** (identitas per orang) / **trusted proxy** (Cloudflare Access) / shared secret (semua pakai profil owner yang sama); bind loopback default, tidak pernah bind publik polos.
- Channel contoh: Slack bot (socket mode, allowlist per channel, `requireMention`); DM default pairing (`openclaw pairing approve slack <code>`); access group lintas channel.
- Control UI per-orang: profil durable (nama, avatar, preferensi); personal skills tanpa izin config bersama; session share read-only.
- **Shared sessions**: tiga lapis atribusi (creator immutable, owner assignable, riwayat prompter), presence (viewing/typing; draft tak pernah sampai model), **Git co-author credit** (`Co-authored-by` untuk penyetir sesi) + PR tertaut sesi.
- **Roles** (`gateway.roles`): definisi maintainer/guest — batas sesi orang lain, agen yang boleh, max scopes, wajib sandbox; guest coding dengan `workspaceAccess: "none"` + network opt-in (bridge) tanpa host execution.
- Kapan pisah: workspace/persona terpisah → multi-agent; pihak tak saling percaya → gateway terpisah (OS user/host terpisah).

## Notable quotes

> "It is the same product as the personal assistant setup - team operation is configuration, not a separate edition."

## What this changes

- Entitas [OpenClaw](../entities/openclaw.md) (multi-user).
- Tidak ada kontradiksi.

## Related

- [OpenClaw](../entities/openclaw.md)
- [OpenClaw Docs — Personal Assistant Setup](openclaw-docs-personal-assistant.md) · [OpenClaw Docs — Why OpenClaw](openclaw-docs-why-openclaw.md)
