---
title: "OpenClaw Blog — Microsoft Autopilot dibangun di atas OpenClaw"
type: source
created: 2026-10-08
updated: 2026-10-08
sources: []
tags: [openclaw, blog, microsoft, autopilot]
---

# OpenClaw Blog — Microsoft Autopilot dibangun di atas OpenClaw

- **Sumber**: openclaw.ai/blog/microsoft-autopilot-openclaw
- **Penulis**: Graham McBain / OpenClaw AI
- **URL**: <https://openclaw.ai/blog/microsoft-autopilot-openclaw>
- **Tanggal publikasi**: 2026-09-25; klip dibuat 2026-10-08
- **Berkas mentah**: `raw/2026/oktober/08/OpenClaw Blog. Microsoft Autopilot is built on OpenClaw. The contributions go both ways.md`

## TL;DR

**Microsoft Autopilot** (nama baru **Microsoft Scout**) — agen personal persisten & proaktif dari Microsoft — **dibangun di atas OpenClaw**, dikerjakan bersama Peter Steinberger & OpenClaw Foundation untuk menjadi "enterprise grade runtime". Kontribusi mengalir **dua arah**: Microsoft berkontribusi upstream (policy conformance, Windows native, reliability).

## Key points

- Kutipan Omar Shahine (pemimpin tim Autopilot): "We are building Autopilot on @openclaw… make it a fantastic enterprise grade runtime."; Autopilot masuk private preview akhir September.
- Kontribusi upstream menyorot:
  - **Policy plugin** (Gio Della-Libera): operator mendeskripsikan persyaratan → bandingkan dengan konfigurasi aktual → rekam hasil; diperluas ke model providers, networks/MCP servers, secrets/auth, message-routing checks.
  - **Windows native**: Windows Hub (setup terpandu, WinUI chat, inline command approvals, model selection, media display), **MXC sandbox backend** (Microsoft Execution Containers) untuk lingkungan Windows yang didukung.
  - **Reliability**: prioritas request pengguna di atas kerja background, fix scheduler hang, database recovery, duplicate streamed reply, guard tool-loop setelah compaction, memory retention.
  - **Safety kecil penting**: redaksi secret di prompt approval, dukungan Azure OpenAI, fix reaksi Teams, iMessage approvals, native polls.
- Beberapa kontributor yang disebut: Omar Shahine, Gio, Scott Hanselman, Barbara Kudiess, Paul Campbell, Galin Iliev, Eduardo Piva, Pengfei Ni, Kunal Karmakar, Régis Brid, Caleb Eden.

## Notable quotes

> "Autopilot is the new name for Microsoft Scout… Its foundation is OpenClaw."

## What this changes

- Entitas [OpenClaw](../entities/openclaw.md) — bukti adopsi enterprise/upstream.
- Tidak ada kontradiksi.

## Related

- [OpenClaw](../entities/openclaw.md)
- [OpenClaw Blog — Enterprise](openclaw-blog-enterprise.md) · [OpenClaw Landing](openclaw-landing.md)
