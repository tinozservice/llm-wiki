---
title: "OpenClaw — README (GitHub)"
type: source
created: 2026-10-08
updated: 2026-10-08
sources: []
tags: [openclaw, readme, github]
---

# OpenClaw — README (GitHub)

- **Sumber**: github.com/openclaw/openclaw (README)
- **Penulis**: OpenClaw AI
- **URL**: <https://github.com/openclaw/openclaw/blob/main/README.md>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-08
- **Berkas mentah**: `raw/2026/oktober/08/openclawREADME.md at main.md`

## TL;DR

README resmi repo OpenClaw: asisten open-source di komputer sendiri, hadir di 20+ channel + aplikasi native (macOS, iOS, Android, Windows, Linux); satu Gateway untuk personal/team. "Yours, with no catch" — state/memory/credential di hardware sendiri; **default hanya version check harian, statistik fitur anonim bersifat opt-in**; `update.checkOnStart: false` mematikan keduanya. Lisensi MIT © OpenClaw Foundation.

## Key points

- Prasyarat repo: pnpm workspace (`npm install` di root tidak didukung); build: `pnpm install && pnpm build && pnpm ui:build`.
- Keamanan: perlakukan pesan masuk sebagai untrusted; DM pairing default; tools jalan di host kecuali sandbox dikonfigurasi.
- **Donor & sponsor**: donor — Amazon, Lobster Computer Company, Offline Holdings, OpenAI, Red Hat, University of Michigan; **infrastruktur** — Blacksmith, Convex, GitHub, NVIDIA, Vercel.
- Lore: dibangun untuk **Molty** (space lobster AI assistant) oleh **Peter Steinberger** + komunitas; ucapan terima kasih khusus untuk **Mario Zechner** (pi) & Adam Doppelt (domain lobster.bot); AI-assisted PRs welcome.
- Panduan dokumentasi per-goal (models/auth, channels, tools/skills/plugins, platforms/nodes, CLI, gateway ops).

## Notable quotes

> "By default OpenClaw itself phones home for nothing but a daily version check, anonymous feature statistics are opt-in."

## What this changes

- Melengkapi [entitas OpenClaw](../entities/openclaw.md) (nuansa telemetri, donor, lore).
- Tidak ada kontradiksi.

## Related

- [OpenClaw](../entities/openclaw.md)
- [OpenClaw — Landing](openclaw-landing.md) · [OpenClaw Docs — Why OpenClaw](openclaw-docs-why-openclaw.md)
