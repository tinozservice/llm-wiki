---
title: Platform Agen Self-Hosted
type: concept
created: 2026-10-08
updated: 2026-10-08
sources: [openclaw-landing, openclaw-docs-why-openclaw, openclaw-docs-trust-boundary, openclaw-docs-vs-hermes, hermes-agent-landing, hermes-agent-readme, hermes-agent-nous-research, hermes-agent-nous-portal-subscription, hermes-agent-cloud, hermes-agent-business, openrouter-hermes-integration, exabytes-nvme-vps-hermes, deepseek-harness-readme, deepseek-harness-architecture, deepseek-harness-landing]
tags: [agent, self-hosted, openclaw, hermes, gateway]
---

# Platform Agen Self-Hosted

**Platform agen self-hosted** adalah kelas produk yang menjalankan **agen AI persisten di infrastruktur milik pengguna sendiri**, menghubungkannya ke banyak aplikasi chat, dan menyimpan memori/state di mesin sendiri — bukan layanan cloud pihak ketiga. Tiga wakil di wiki: **[OpenClaw](../entities/openclaw.md)**, **[Hermes Agent](../entities/hermes-agent.md)**, dan **[DeepSeek Harness](../entities/deepseek-harness.md)**.

## Pola umum

- **Gateway sebagai control plane**: satu proses (OpenClaw) atau CLI+gateway (Hermes) memegang koneksi channel, sesi, routing, dan kredensial; agen berjalan di belakangnya.
- **Multi-channel**: 29 channel (OpenClaw) / 21+ platform (Hermes) — WhatsApp, Telegram, Discord, Slack, Signal, iMessage, Email, CLI, dsb. Satu agen, satu memori, banyak permukaan.
- **Memori persisten + skill**: belajar dari percakapan, menyimpan preferensi/proyek, dapat menulis skill sendiri; skill bisa dibagikan via registry (ClawHub di OpenClaw).
- **Eksekusi nyata**: shell, file, browser, form, API — dengan pilihan **sandbox** (Docker/SSH/OpenShell/Singularity/Modal) dan policy/approval di kode.
- **Otomasi**: cron/heartbeat/hooks/webhook; subagent paralel; cloud worker sekali pakai.
- **Model bebas**: provider mana pun (termasuk [OpenCode Zen/Go](../entities/opencode.md), OpenRouter, model lokal Ollama/RTX); model percakapan dapat dipisah dari **[model keputusan](../concepts/decision-models.md)** (OpenClaw) dan model auxiliary (Hermes).
- **Distribusi**: MIT open source; bundel VPS siap pakai oleh hoster ([Exabytes](../entities/exabytes.md), [Hostinger](../entities/hostinger.md)); install desktop/CLI/container; opsi **hosting terkelola** (Hermes Cloud; OpenClaw OCE/cloud workers).

## Dua filosofi (per Okt 2026)

| Aspek | [OpenClaw](../entities/openclaw.md) | [Hermes Agent](../entities/hermes-agent.md) |
| --- | --- | --- |
| Tata kelola | Yayasan 501(c)(3) donasi; tanpa tier berbayar | Nous Research (venture; **Series B Okt 2026** — investor NVIDIA/M12/Samsung Next dll.; laporan Juli: $75M pada $1,5B); Nous Portal $0–200/bln + Business/Enterprise + Hermes Cloud |
| Arsitektur | Gateway tepercaya + eksekusi terisolasi (cloud worker, node ber-hash); **sandboxing off by default** | Parent-owned dispatch; **tujuh backend** eksekusi (local, Docker, SSH, Singularity, Modal, Daytona, Vercel Sandbox); eksekusi remote opsional |
| Policy | Policy as code, deny struktural, approval terikat binding | "Smart review" + deny hardline; beberapa jalur headless bisa auto-approve |
| Ekosistem | 65 proyek, 142 plugin, ClawHub, OCE, Microsoft Autopilot | Plugin Python + desktop SDK, [MCP catalog](mcp.md) |
| Bukti adopsi | Microsoft Autopilot, OpenAI internal, Red Hat, 346k+ bintang | 21+ platform; 326 use case; kemitraan **Sign in with ChatGPT**; klaim "most widely used open source agent harness" |

> [!note] Sumber perbandingan
> Tabel di atas menggabungkan sumber **kedua vendor**; dokumen [OpenClaw vs Hermes](../sources/openclaw-docs-vs-hermes.md) adalah sudut pandang OpenClaw dan harus dibaca sebagai posisi kompetitif.

## DeepSeek Harness (wakil ketiga, 8 Okt)

**[DeepSeek Harness (DSH)](../entities/deepseek-harness.md)** — agent harness **MIT** dari DeepSeek AI (**developer preview**), arsitektur **"everything is a plugin"** di atas framework **Cordis**: model adapter, tool registry, session log, dan agent loop semuanya plugin yang dapat ditukar; runtime disusun dari *profile* + *bundle* + patch ([arsitektur](../sources/deepseek-harness-architecture.md)). Jalankan `npx @deepseek-ai/dsh web` (Web UI 3080) atau lewat **Python SDK** tanpa Node sistem. Punya klien **MCP**, plugin Automation/reminder, GitHub webhook review, dan desktop app. Kebijakan data: layanan model **official** memakai session log untuk training; layanan model **custom** tidak disimpan server-side ([privacy](../sources/deepseek-harness-privacy.md)).

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
