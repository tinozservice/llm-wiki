---
title: Hermes Agent
type: entity
created: 2026-10-08
updated: 2026-10-08
sources: [exabytes-nvme-vps-hermes, hostinger-vps, hermes-agent-landing, openrouter-hermes-integration, openclaw-docs-vs-hermes]
tags: [hermes, nous-research, ai-agent, self-hosted, mit]
---

# Hermes Agent

**Hermes Agent** adalah **AI agent open-source (lisensi MIT) dari Nous Research** — "terminal-native autonomous coding and task agent" dengan **memori persisten**, **skill yang dibuat sendiri**, dan gateway pesan untuk **21+ platform** (Telegram, Discord, Slack, WhatsApp, Signal, SMS, Matrix, Email, CLI, dll.): "one agent, one memory, every surface" ([landing](../sources/hermes-agent-landing.md), [OpenRouter](../sources/openrouter-hermes-integration.md)).

## Kemampuan (resmi)

- **Connect** (semua surface), **Remember** (memori + auto-skill), **Schedule** (otomatisasi bahasa alami), **Delegate** (subagent terisolasi + skrip Python RPC "zero-context-cost"), **Search** (web search, browser automation, vision, image generation, TTS, multi-model reasoning), **Experiment** (sandbox lima backend: **local, Docker, SSH, Singularity, Modal** dengan container hardening).
- Backend eksekusi tambahan via OpenRouter: Daytona, Vercel Sandbox; backend code execution bisa remote (terminal/file/Python) ([trust boundary](../sources/openclaw-docs-trust-boundary.md)).
- Kebutuhan model: **minimum 64K konteks**; dukung routing provider (harga/throughput/latensi, `:nitro`/`:floor`), fallback mid-session, auxiliary models (kompresi/vision/judul), **Pareto Code Router** (`min_coding_score`) ([OpenRouter](../sources/openrouter-hermes-integration.md)).
- Desktop app macOS/Windows; terminal di Linux; gratis MIT. Model provider: **Nous Portal** (200+ model, tool use) atau API key sendiri.

## Bisnis & tata kelola

- **Nous Portal (langganan opsional)**: Free $0 · Plus **$20** · Super **$100** · Ultra **$200** per bulan (10% bonus; kredit bulanan + akses 200+ model) ([landing](../sources/hermes-agent-landing.md)).
- Konteks industri (dari dokumen pembanding OpenClaw, **sudut pandang vendor**): Nous Research venture-backed — laporan TechCrunch Juli 2026: **$75M pada valuasi $1,5B** (portofolio Paradigm); tier Portal $20–200/bln sebagai model bisnis; Nous Portal mengumpulkan prompt/upload/output kecuali Privacy Mode; agen self-hosted sendiri tidak mengirim telemetri ([vs Hermes](../sources/openclaw-docs-vs-hermes.md)).
- Catatan keamanan pihak ketiga (dikutip OpenClaw): audit statis v0.8.0 (4 critical/9 high, klasifikasi pelapor), CVE via CNA pihak ketiga (CVE-2026-14625, catatan non-response vendor); nol repository advisory publik pada tanggal review.

## Deployment di wiki

- **[Exabytes](exabytes.md)** menjual VPS NVMe dengan Hermes terinstal (M1–M6, Rp194.000–2.980.000/bulan triennial; AlmaLinux, KVM, root; <10 menit setup) — "tanpa biaya per-tugas & tanpa batas eksekusi" ([sumber](../sources/exabytes-nvme-vps-hermes.md)).
- **[Hostinger](hostinger.md)** mencantumkan Hermes di katalog app AI agent VPS ([sumber](../sources/hostinger-vps.md)).
- **[OpenClaw](openclaw.md)** menyediakan jalur migrasi "Import from Hermes" saat onboarding ([sumber](../sources/openclaw-docs-onboarding-cli.md)).

## Open questions

- Harga kredit Nous Portal per model tidak dirinci di klip.
- Fitur konkret & konektor Hermes (docs lengkap) belum di-ingest — hanya landing & cookbook.
- Klaim keamanan kedua pihak (OpenClaw vs Hermes) saling bersaing; butuh sumber netral untuk penilaian.
- Hubungan Hermes dengan standar MCP/A2A/agent-runtime lain tidak dirinci.

## Related

- Sumber: [Landing](../sources/hermes-agent-landing.md) · [OpenRouter Integration](../sources/openrouter-hermes-integration.md) · [OpenClaw vs Hermes](../sources/openclaw-docs-vs-hermes.md)
- [OpenClaw](openclaw.md) — platform agen self-hosted pembanding.
- [Platform Agen Self-Hosted](../concepts/self-hosted-agent-platforms.md)
- [Exabytes](exabytes.md) · [Hostinger](hostinger.md)
- [Overview](../overview.md)
