---
title: "Hermes — Cloud (Always-On Agent Hosting)"
type: source
created: 2026-10-08
updated: 2026-10-08
sources: []
tags: [hermes, nous-research, cloud, hosting]
---

# Hermes — Cloud (Always-On Agent Hosting)

- **Sumber**: portal.nousresearch.com/cloud
- **Penulis**: hermes-agent
- **URL**: <https://portal.nousresearch.com/cloud>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-08
- **Berkas mentah**: `raw/2026/oktober/08/Hermes Agent. Hermes Cloud — Always-On AI Agent Hosting.md`

## TL;DR

**Hermes Cloud**: deploy agen Hermes always-on di cloud — "pick a name, region and model… online in seconds. No servers, no DevOps, no YAML." Agen hidup 24/7, **scale to zero saat idle** ("you only pay while it works"), memori mengikuti agen (bukan perangkat), sandbox terisolasi per agen.

## Key points

- Enam fitur: (1) one-click deploy; (2) always-on + scale-to-zero; (3) penjadwalan bahasa alami (laporan/backup/briefing via gateway); (4) semua channel (Telegram, Discord, Slack, Email, CLI — satu memori); (5) memori persisten milik agen; (6) sandbox terisolasi (container hardened; subagent paralel tanpa membakar konteks).
- Model bisnis: bagian dari **Nous Portal** — tier Free/Plus/Super/Ultra (lihat [langganan](hermes-agent-nous-portal-subscription.md)).

## Notable quotes

> "Your agent lives in the cloud 24/7 and scales to zero when idle. You only pay while it works."

## What this changes

- Entitas [Hermes Agent](../entities/hermes-agent.md) — opsi hosting terkelola (di samping self-host & VPS Exabytes/Hostinger).
- Melengkapi konsep [Platform Agen Self-Hosted](../concepts/self-hosted-agent-platforms.md).
- Tidak ada kontradiksi.

## Related

- [Hermes Agent](../entities/hermes-agent.md)
- [Hermes — Business](hermes-agent-business.md) · [Nous Portal — Subscription](hermes-agent-nous-portal-subscription.md)
