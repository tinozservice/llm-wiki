---
title: Hermes Agent
type: entity
created: 2026-10-08
updated: 2026-10-08
sources: [exabytes-nvme-vps-hermes, hostinger-vps, hermes-agent-landing, openrouter-hermes-integration, openclaw-docs-vs-hermes, hermes-agent-business, hermes-agent-cloud, hermes-agent-nous-portal-api, hermes-agent-nous-portal-subscription, hermes-agent-nous-portal-models, hermes-agent-nous-portal-privacy, hermes-agent-nous-portal-terms, hermes-agent-nous-research-releases, hermes-agent-nous-research, hermes-agent-readme]
tags: [hermes, nous-research, ai-agent, self-hosted, mit]
---

# Hermes Agent

**Hermes Agent** adalah **AI agent open-source (MIT) dari Nous Research** — "the self-improving AI agent" dengan **learning loop bawaan**: membuat skill dari pengalaman, memperbaikinya saat dipakai, mencari percakapan masa lalu (FTS5 + ringkasan LLM), dan membangun model pengguna lintas sesi ([README](../sources/hermes-agent-readme.md)). Berjalan dari **$5 VPS hingga GPU cluster** atau serverless ("nyaris gratis saat idle"); dikelola via CLI/TUI, aplikasi desktop, atau gateway pesan **21+ platform** ([landing](../sources/hermes-agent-landing.md), [OpenRouter](../sources/openrouter-hermes-integration.md)).

## Kemampuan

- **Connect**: Telegram, Discord, Slack, WhatsApp, Signal, Email, CLI, dll. — satu agen, satu memori. **Remember**: memori persisten + auto-skill; **Honcho** dialectic user modeling; kompatibel standar **agentskills.io** (Skills Hub). **Schedule**: cron bahasa alami + delivery ke platform. **Delegate**: subagent terisolasi + skrip Python RPC (pipeline biaya-konteks-nol). **Search**: web search, browser automation, vision, image gen (FAL), TTS (OpenAI), cloud browser (Browser Use) — via **Tool Gateway Nous Portal**. **Experiment**: sandbox — **tujuh backend terminal**: local, Docker, SSH, Singularity, Modal, Daytona, Vercel Sandbox (dua terakhir serverless-persisten).
- **TUI** penuh (multiline, slash-command, interrupt-and-redirect, streaming tool output); **40+ tools**; **Bot Screen** (stream layar sesi agent secara live dari Hermes Desktop, bisa diambil alih).
- Model bebas: `hermes model` — Nous Portal, [OpenRouter](openrouter.md), OpenAI, endpoint sendiri, model lokal ([README](../sources/hermes-agent-readme.md)); kebutuhan konteks **≥64K** ([OpenRouter](../sources/openrouter-hermes-integration.md)). Eksekusi remote untuk terminal/file/Python ([trust boundary](../sources/openclaw-docs-trust-boundary.md)).

## Nous Portal (platform & ekonomi)

- **Tier langganan**: Free **$0** (model gratis, kredit $0) · Plus **$20** (kredit $22, rollover cap $10) · Super **$100** (kredit $110, cap $50) · Ultra **$200** (kredit $220, cap $100) — semua tier berbayar: **200+ model**, hosted tools, rate limit tinggi ([subscription](../sources/hermes-agent-nous-portal-subscription.md)).
- **Katalog**: **350 model** dengan promo 25–88% dan model gratis (LongCat, Ling, Laguna, Solar Mini 4, Step 3.7 Flash); beberapa harga identik katalog lain (GPT-6 Luna $0.10/$0.50; Claude Opus 5.5 $4/$20) ([models](../sources/hermes-agent-nous-portal-models.md)).

> [!warning] Contradiction: jumlah model Portal tidak konsisten — halaman Portal menulis "200+", README "300+", sedangkan katalog menampilkan 350 baris. Definisi/snapshot kemungkinan berbeda; belum teresolusi.

- **API** OpenAI-compatible (`inference-api.nousresearch.com/v1`); auth: API key + kredit, **atau [x402](../concepts/x402.md) (beta) — bayar per request dengan Solana USDC tanpa akun**; rate limit per tier (Free 50 RPM/500K TPM … Ultra 1.600/16 jt); model **Hermes-4.3-36B / Hermes-4-70B / Hermes-4-405B** (128k) ([API](../sources/hermes-agent-nous-portal-api.md)).
- **Hermes Cloud**: hosting agen always-on (satu klik; scale-to-zero; sandbox per agen) ([cloud](../sources/hermes-agent-cloud.md)); **Hermes Business** (skill dibagi lintas org; spend intelligence) & **Hermes Enterprise** (on-prem/private cloud, SSO, SLA) ([business](../sources/hermes-agent-business.md)).
- **Hermes Index** (6 Okt 2026): indeks benchmark model di dalam Hermes (Hermes Bench + Terminal-Bench 4.0 + Terminal-Bench-Science + SkillsBench) — Opus 5.5 memimpin (63,31 / $4,99 per task) ([beranda](../sources/hermes-agent-nous-research.md)).
- **Kemitraan**: "Sign in with ChatGPT" (pakai plan ChatGPT di Hermes Agent, Sep 2026); web search gratis via Perplexity Fast Search; Grok 4.7 promo 50%.

## Data & privasi (dari dokumen resmi)

- **Privacy Policy**: prompt/input/output/usage dibagikan ke provider & dapat diolah menjadi **data derivatif untuk training AI** — **kecuali Privacy Mode** diaktifkan (opt-out *prospective*: tidak menarik data lama) ([privacy](../sources/hermes-agent-nous-portal-privacy.md)).
- **ToS** (Nous Research, Inc., Delaware): 13+; data boleh dipakai untuk riset/pengembangan AI kecuali Privacy Mode (§12.3); penghapusan akun ≤6 bulan; arbitrase individual (§18) ([terms](../sources/hermes-agent-nous-portal-terms.md)).
- Agen self-hosted sendiri tidak mengirim telemetri ([vs Hermes](../sources/openclaw-docs-vs-hermes.md)).

## Perusahaan & pendanaan

- Nous Research — misi open access; klaim "**most widely used open source agent harness in the world**"; jejak riset: Hermes 4 (405B/70B/14B), Hermes-4.3-Seed-36B (dilatih di jaringan **Psyche**), NousCoder-14B, Nomos 1, Atropos (RL environments), simulator sosial ([releases](../sources/hermes-agent-nous-research-releases.md)).
- **Series B (7 Okt 2026**, dilaporkan WSJ) — untuk "bring Hermes Agent to new frontiers (and build a mobile app)"; investor termasuk **NVIDIA, M12, Samsung Next, Robot Ventures, USV, YC, Menlo Ventures**. Sebelumnya (Juli 2026) TechCrunch melaporkan putaran **$75M pada valuasi $1,5B** dengan tier Portal $20–200/bln sebagai model bisnis ([beranda](../sources/hermes-agent-nous-research.md), [vs Hermes](../sources/openclaw-docs-vs-hermes.md)).

## Deployment di wiki

- **[Exabytes](exabytes.md)** (VPS Hermes pre-installed, Rp194.000–2.980.000/bln) & **[Hostinger](hostinger.md)** (katalog app) — infra self-host; **[OpenClaw](openclaw.md)** menyediakan "Import from Hermes" dan sebaliknya **`hermes claw migrate`** memindahkan SOUL.md/memori/skill/API keys dari OpenClaw ([README](../sources/hermes-agent-readme.md)).

## Open questions

- Definisi "200+" vs "300+" model Portal; kredit per model tidak dirinci di klip.
- Nilai Series B & valuasi terbaru tidak dipublikasikan di klip (hanya investor & tujuan).
- Detail Hermes Enterprise (harga, SLA) belum ada.
- Perbandingan keamanan netral OpenClaw↔Hermes belum tersedia (kedua pihak saling menilai).

## Related

- Sumber: [Landing](../sources/hermes-agent-landing.md) · [README](../sources/hermes-agent-readme.md) · [Beranda Nous](../sources/hermes-agent-nous-research.md) · [Portal — Subscription](../sources/hermes-agent-nous-portal-subscription.md) · [Portal — Models](../sources/hermes-agent-nous-portal-models.md) · [Cloud](../sources/hermes-agent-cloud.md) · [Business](../sources/hermes-agent-business.md)
- [OpenClaw](openclaw.md) — platform agen self-hosted pembanding ([vs Hermes](../sources/openclaw-docs-vs-hermes.md)).
- [Platform Agen Self-Hosted](../concepts/self-hosted-agent-platforms.md) · [Layanan Akses Model](../concepts/model-access-services.md) (Nous Portal)
- [Exabytes](exabytes.md) · [Hostinger](hostinger.md)
- [Overview](../overview.md)
