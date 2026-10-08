---
title: Hermes Agent
type: entity
created: 2026-10-08
updated: 2026-10-08
sources: [exabytes-nvme-vps-hermes, hostinger-vps]
tags: [hermes, nous-research, ai-agent, self-hosted]
---

# Hermes Agent

**Hermes Agent** adalah **AI agent open-source (lisensi MIT) dari Nous Research** dengan **memori persisten** dan kemampuan **membuat skill-nya sendiri**. Satu agent dapat diakses dari berbagai channel — Telegram, Slack, Discord, WhatsApp, Signal, Email, atau CLI — dengan **satu memori bersama di semua platform** ([Exabytes](../sources/exabytes-nvme-vps-hermes.md)).

## Yang diketahui dari wiki

- **Exabytes** menjual VPS NVMe dengan Hermes terinstal sebagai layanan ("agent pribadi yang selalu aktif"): paket M1–M6 Rp194.000–Rp2.980.000/bln (triennial), AlmaLinux + KVM + full root, setup <10 menit, backup off-server mingguan ([VPS Hermes](../sources/exabytes-nvme-vps-hermes.md)).
- Model AI: Hermes **tidak menyertakan model**; pengguna memakai kredit **Nous Portal (300+ model)** atau API key sendiri ([Exabytes](../sources/exabytes-nvme-vps-hermes.md)).
- Rekomendasi resource: 4 GB = 1 agent + otomatisasi ringan; 8–16 GB untuk subagent paralel / sandbox Docker / otomatisasi browser ([Exabytes](../sources/exabytes-nvme-vps-hermes.md)).
- Use case: always-on business briefing, developer automation, research & web monitoring, layanan pelanggan multi-channel ([Exabytes](../sources/exabytes-nvme-vps-hermes.md)).
- **Hostinger** mencantumkan Hermes dalam katalog app AI agent yang bisa di-deploy di VPS ([Hostinger VPS](../sources/hostinger-vps.md)).
- Argumen vs asisten SaaS: tanpa kuota per pengguna/tugas, biaya tetap, memori & data milik sendiri di Indonesia ([Exabytes](../sources/exabytes-nvme-vps-hermes.md)).

## Open questions

- Harga/limit Nous Portal tidak tercakup di klip.
- Kemampuan konkret Hermes (tool use, konektor) belum terdokumentasi di wiki — butuh sumber resmi Nous Research.
- Relasi Hermes dengan standar MCP/agent lain tidak dijelaskan.

## Related

- [Exabytes](exabytes.md)
- [OpenClaw](openclaw.md) — agent self-hosted lain yang dibundel VPS.
- [Hosting Web](../concepts/web-hosting.md)
