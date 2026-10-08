---
title: Platform Agen Self-Hosted
type: concept
created: 2026-10-08
updated: 2026-10-08
sources: [openclaw-landing, openclaw-docs-why-openclaw, openclaw-docs-trust-boundary, openclaw-docs-vs-hermes, hermes-agent-landing, openrouter-hermes-integration, exabytes-nvme-vps-hermes]
tags: [agent, self-hosted, openclaw, hermes, gateway]
---

# Platform Agen Self-Hosted

**Platform agen self-hosted** adalah kelas produk yang menjalankan **agen AI persisten di infrastruktur milik pengguna sendiri**, menghubungkannya ke banyak aplikasi chat, dan menyimpan memori/state di mesin sendiri — bukan layanan cloud pihak ketiga. Dua wakil di wiki: **[OpenClaw](../entities/openclaw.md)** dan **[Hermes Agent](../entities/hermes-agent.md)**.

## Pola umum

- **Gateway sebagai control plane**: satu proses (OpenClaw) atau CLI+gateway (Hermes) memegang koneksi channel, sesi, routing, dan kredensial; agen berjalan di belakangnya.
- **Multi-channel**: 29 channel (OpenClaw) / 21+ platform (Hermes) — WhatsApp, Telegram, Discord, Slack, Signal, iMessage, Email, CLI, dsb. Satu agen, satu memori, banyak permukaan.
- **Memori persisten + skill**: belajar dari percakapan, menyimpan preferensi/proyek, dapat menulis skill sendiri; skill bisa dibagikan via registry (ClawHub di OpenClaw).
- **Eksekusi nyata**: shell, file, browser, form, API — dengan pilihan **sandbox** (Docker/SSH/OpenShell/Singularity/Modal) dan policy/approval di kode.
- **Otomasi**: cron/heartbeat/hooks/webhook; subagent paralel; cloud worker sekali pakai.
- **Model bebas**: provider mana pun (termasuk [OpenCode Zen/Go](../entities/opencode.md), OpenRouter, model lokal Ollama/RTX); model percakapan dapat dipisah dari **[model keputusan](../concepts/decision-models.md)** (OpenClaw) dan model auxiliary (Hermes).
- **Distribusi**: MIT open source; bundel VPS siap pakai oleh hoster ([Exabytes](../entities/exabytes.md), [Hostinger](../entities/hostinger.md)); install desktop/CLI/container.

## Dua filosofi (per Okt 2026)

| Aspek | [OpenClaw](../entities/openclaw.md) | [Hermes Agent](../entities/hermes-agent.md) |
| --- | --- | --- |
| Tata kelola | Yayasan 501(c)(3) donasi; tanpa tier berbayar | Nous Research (venture; laporan $75M/$1,5B); tier Nous Portal $20–200/bln |
| Arsitektur | Gateway tepercaya + eksekusi terisolasi (cloud worker, node ber-hash); **sandboxing off by default** | Parent-owned dispatch; lima backend sandbox; eksekusi remote opsional |
| Policy | Policy as code, deny struktural, approval terikat binding | "Smart review" + deny hardline; beberapa jalur headless bisa auto-approve |
| Ekosistem | 65 proyek, 142 plugin, ClawHub, OCE, Microsoft Autopilot | Plugin Python + desktop SDK, MCP catalog |
| Bukti adopsi | Microsoft Autopilot, OpenAI internal, Red Hat, 346k+ bintang | 21+ platform, desktop app, bundel VPS |

> [!note] Sumber perbandingan
> Tabel di atas menggabungkan sumber **kedua vendor**; dokumen [OpenClaw vs Hermes](../sources/openclaw-docs-vs-hermes.md) adalah sudut pandang OpenClaw dan harus dibaca sebagai posisi kompetitif.

## Keterkaitan wiki

- **Decision models**: OpenClaw mengintegrasikan Jev/TypeSafe sebagai konfigurasi opt-in — jembatan antara domain ini dan [Model Keputusan](decision-models.md).
- **Hosting**: platform ini sering dijalankan di VPS — target deploy OpenClaw mencakup Hostinger; Exabytes menjual paket dengan Hermes/OpenClaw pre-installed ([Hosting Web](web-hosting.md)).

## Pertanyaan terbuka

- Adopsi nyata vs klaim (angka bintang/pengguna dari komunitas/vendor).
- Perbandingan keamanan netral antar-platform (kedua pihak saling mengaudit).
- Model ekonomi jangka panjang (donasi vs venture) terhadap keberlanjutan.

## Related

- [OpenClaw](../entities/openclaw.md) · [Hermes Agent](../entities/hermes-agent.md)
- [Model Keputusan](decision-models.md) · [Hosting Web](web-hosting.md)
- [Layanan Akses Model](model-access-services.md) — pola akses model yang dipakai platform ini.
- [Overview](../overview.md)
