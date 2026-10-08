---
title: OpenClaw
type: entity
created: 2026-10-08
updated: 2026-10-08
sources: [openclaw-landing, openclaw-install, openclaw-integrations, openclaw-ecosystem, openclaw-docs-landing, openclaw-docs-why-openclaw, openclaw-docs-getting-started, openclaw-docs-install, openclaw-docs-configuration, openclaw-docs-onboarding-cli, openclaw-docs-cli-automation, openclaw-docs-cli-setup-reference, openclaw-docs-personal-assistant, openclaw-docs-team-setup, openclaw-docs-trust-boundary, openclaw-docs-policy-as-code, openclaw-docs-vs-hermes, openclaw-blog-2-0, openclaw-blog-security-audit, openclaw-blog-enterprise, openclaw-blog-decision-models, openclaw-blog-microsoft-autopilot, openclaw-blog-onboarding-improvements, openclaw-yt-decision-models, openrouter-openclaw-integration]
tags: [openclaw, ai-agent, self-hosted, open-source, gateway, mit]
---

# OpenClaw

**OpenClaw** adalah **platform agen AI open-source (MIT)** yang berjalan di mesin sendiri dan hadir di aplikasi chat Anda: satu **Gateway** self-hosted menjadi jembatan antara 29 kanal pesan (WhatsApp, Telegram, Discord, Slack, Signal, iMessage, Teams, Matrix, dll.) dan agen AI yang selalu tersedia ([landing](../sources/openclaw-landing.md), [docs](../sources/openclaw-docs-landing.md)). Riwayat nama: **Clawdbot → Moltbot → OpenClaw** ([OpenRouter](../sources/openrouter-openclaw-integration.md)). Dibuat **Peter Steinberger**; kini dinaungi **OpenClaw Foundation** (501(c)(3) independen, AS) — rilis ditandatangani yayasan, **tanpa edisi berbayar & tanpa tier**, hanya version check harian yang bisa dimatikan ([landing](../sources/openclaw-landing.md)).

## Skala & tata kelola

- Klaim komunitas: proyek dengan pertumbuhan tercepat di GitHub — **346k+ bintang <5 bulan** (YC); "half a million systems running" (Fast Company); **OpenClaw 2.0** (Agu 2026) dibangun **933 kontributor** (569 baru) dengan **16.000+ PR** ([2.0](../sources/openclaw-blog-2-0.md)).
- Donatur yayasan (30+ organisasi): University of Michigan, **OpenAI**, Amazon, Red Hat, Microsoft, NVIDIA, Atlassian, GitHub, Tencent, dll. — "donor tidak memiliki/mengarahkan proyek; tidak ada model lab yang diistimewakan"; Peter bekerja di OpenAI, tetapi "OpenClaw bukan produk OpenAI".
- **Adopsi besar**: **Microsoft Autopilot** (dulu Scout) dibangun di atas OpenClaw dengan kontribusi upstream dua arah ([blog](../sources/openclaw-blog-microsoft-autopilot.md)); **OpenClaw Enterprise (OCE)** — proyek terpisah (dihibahkan OpenAI ke Foundation, dikembangkan bersama Red Hat & NVIDIA) untuk deployment multi-tenant di lingkungan sensitif, selalu gratis ([blog](../sources/openclaw-blog-enterprise.md)). *Nuansa*: "no enterprise edition" berlaku untuk OpenClaw inti; OCE adalah proyek open-source terpisah, bukan edisi berbayar.
- **Telemetri & donor (README GitHub)**: default hanya version check harian; **statistik fitur anonim = opt-in**; donor yayasan — Amazon, Lobster Computer Company, Offline Holdings, OpenAI, Red Hat, University of Michigan; infrastruktur — Blacksmith, Convex, GitHub, NVIDIA, Vercel ([README](../sources/openclaw-readme.md)).

## Arsitektur & kemampuan

- **Gateway** = control plane tepercaya (sesi, routing, kredensial, state berversi); **eksekusi** dipisahkan (sandbox Docker/Podman/SSH/**OpenShell**, node terpasang ber-hash, **cloud workers** sekali pakai dengan RPC allowlist + kredensial TTL 10 menit). **Sandboxing & exec approval off by default** — default = asisten satu operator; postur enterprise = konfigurasi eksplisit (`openclaw sandbox explain`, `openclaw security audit`) ([trust boundary](../sources/openclaw-docs-trust-boundary.md)).
- **Policy as code**: deny struktural, tiga kontrol terpisah (sandbox vs tool policy vs elevated), exec approval terikat ke command/cwd/env/operand persis; tanpa UI approval = deny ([policy](../sources/openclaw-docs-policy-as-code.md)).
- **Kanal & provider**: 29 chat channels; 64 model/media providers (Anthropic, OpenAI+Codex, Google, xAI, Qwen, Moonshot/Kimi, MiniMax, Z.AI, [OpenRouter](openrouter.md), **OpenCode Zen/Go** sebagai pilihan auth onboarding, custom provider, Ollama lokal); 142 plugin resmi ([integrations](../sources/openclaw-integrations.md), [CLI automation](../sources/openclaw-docs-cli-automation.md)).
- **Fitur personal**: memori persisten, workspace berisi `AGENTS.md`/`SOUL.md`/`IDENTITY.md`/`USER.md`, heartbeats (default 30 menit), cron/hooks/webhooks, skill & plugin (agent bisa menulis skill sendiri), model lokal Windows RTX (≥24GB → kelas 30B via llama-server), installer macOS ([personal](../sources/openclaw-docs-personal-assistant.md), [onboarding](../sources/openclaw-blog-onboarding-improvements.md)).
- **Tim/multiplayer**: satu gateway = satu trust domain; sesi bersama (creator/owner/prompter), presence, **Git co-author credit**, named operator roles, cloud sessions ([team](../sources/openclaw-docs-team-setup.md)).
- **Standar terbuka**: [MCP](../concepts/mcp.md) client+server, A2A 1.0, ACP, AgentSkills, OpenAI-compatible API di Gateway, OTel/Prometheus; harness vendor (Codex app-server, Copilot SDK, Claude Code CLI) sebagai plugin runtime ([why](../sources/openclaw-docs-why-openclaw.md)).
- **Ekosistem**: 65 proyek open source (ClawHub registry, ClawScan, clawbench, Lobster, crawler local-first, tool native, dll.) ([ecosystem](../sources/openclaw-ecosystem.md)).

## Keamanan

- Audit **Trail of Bits** via OpenAI **Patch the Planet** (Sep 2026): 27 advisory + 3 PR hardening; severity 0 Critical / 2 High / 16 Medium / 6 Low; semua diperbaiki & dikirim di 2026.8.1 + 2026.7.33 LTS ([audit](../sources/openclaw-blog-security-audit.md)).
- 647 repository advisory publik vs nol di Hermes pada review Agustus 2026 (catatan: hitungan disclosure ≠ skor keamanan) ([vs Hermes](../sources/openclaw-docs-vs-hermes.md)).

## Model keputusan (integrasi 8 Okt)

OpenClaw mengadopsi **[model keputusan](../concepts/decision-models.md) secara plugin-first**: decision model terkonfigurasi terpisah dari model chat; plugin memakai `api.runtime.decisions.evaluate`; tool `decision_evaluate` ada di core. **Adapter TypeSafe** mendukung Jev hosted + System One lokal (Kev). Opt-in penuh; tanpa decision model semuanya berjalan seperti biasa. Jev diklaim sebagai model dengan adopsi tercepat di Vercel AI Gateway ([blog](../sources/openclaw-blog-decision-models.md), [YT](../sources/openclaw-yt-decision-models.md)).

## Open questions

- Rilis 1.0 OCE & adopsi enterprise luas (pilot: Red Hat, OpenAI) belum ada datanya di wiki.
- Berapa banyak fitur decision-model yang benar-benar mendarat (saat klip: dev checkout; paket provider menunggu rilis).
- Metrik adopsi ("346k bintang", "500k systems", "fastest growing") = klaim vendor/komunitas, belum independen.
- Hubungan kuantitatif OpenClaw ↔ OpenCode/ekosistem gateway lain (selain sebagai provider auth) belum dirinci.

## Related

- Sumber: [Landing](../sources/openclaw-landing.md) · [Docs Landing](../sources/openclaw-docs-landing.md) · [Configuration](../sources/openclaw-docs-configuration.md) · [Why OpenClaw](../sources/openclaw-docs-why-openclaw.md) · [Ecosystem](../sources/openclaw-ecosystem.md) · [Decision Models](../sources/openclaw-blog-decision-models.md) · [Microsoft Autopilot](../sources/openclaw-blog-microsoft-autopilot.md)
- [Hermes Agent](hermes-agent.md) — platform agen self-hosted pembanding (perbandingan resmi: [vs Hermes](../sources/openclaw-docs-vs-hermes.md)).
- [Jev](jev.md) · [TypeSafe](typesafe.md) · [Model Keputusan](../concepts/decision-models.md)
- [Platform Agen Self-Hosted](../concepts/self-hosted-agent-platforms.md)
- [Exabytes](exabytes.md) — menjual VPS OpenClaw siap pakai; [Hostinger](hostinger.md) — katalog app.
- [Overview](../overview.md)
