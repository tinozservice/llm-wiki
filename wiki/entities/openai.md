---
title: OpenAI
type: entity
created: 2026-10-08
updated: 2026-10-08
sources: [openai-landing, openai-research, openai-about, openai-api-platform, openai-coding-agents, openai-chatgpt-business, openai-chatgpt-edu, openai-chatgpt-enterprise, openai-dots, openai-gpt-56, openai-gpt-6-astra, openai-gpt-55, openai-gpt-61-sol, openai-open-models, openai-privacy-policy, openai-research-overview, openai-security-privacy, openai-signals, openai-terms-policies, openai-terms-of-use, openai-dev-models, openai-dev-pricing, openai-dev-gpt-6-luna, openai-dev-reasoning-models, openai-dev-model-selection, openai-dev-deep-research, openai-dev-voice-agents, openai-learn-models, openai-learn-pricing, openai-learn-use-chatgpt, openai-learn-chatgpt-work, openai-learn-import, openai-learn-dots, openai-learn-quickstart, openai-learn-prompting, openai-dev-quickstart-plugins, openai-dev-plugin-architecture, openrouter-decisions-models, openclaw-landing, hermes-agent-nous-research, deepseek-integrate-codex]
tags: [openai, lab, model-provider, chatgpt, gpt-6]
---

# OpenAI

**OpenAI** adalah lab AI AS (misi: AGI yang bermanfaat bagi seluruh umat manusia; struktur **OpenAI Foundation** nonprofit + **OpenAI Group** public benefit corporation) ([About](../sources/openai-about.md)). Produk utamanya: **ChatGPT** (Chat/Work/Codex/**dots**), **platform API**, model **GPT-5.x/GPT-6** + **gpt-oss** (open-weight), serta layanan bisnis (Business/Edu/Enterprise).

## Model (harga resmi API per 1M token)

| Model | Input | Cached | Output | Konteks | Catatan |
| --- | --- | --- | --- | --- | --- |
| `gpt-6-astra` | $10 | $1 | $50 | 1,05M | Paling capable & aligned; cache write $12,5; long context 2× |
| `gpt-6.1-sol` | $2 | $0.10 | $10 | 1,05M | Near-Astra ⅕ harga; Ultrafast menyusul |
| `gpt-6-luna` | $0.10 | $0.01 | $0.50 | 1,05M | Paling efisien; >272K = 2×/1.5× |
| `gpt-6-sol` / `gpt-5.6-*` | $2–4 | … | $10–20 | 1,05M | Keluarga sebelumnya |
| `gpt-5.5(-pro)` | $5 / $30 | — | $30 / $180 | — | **Pensiun dari ChatGPT 14 Okt 2026** |

- Detail: [API Models](../sources/openai-dev-models.md), [API Pricing](../sources/openai-dev-pricing.md), [GPT-6 Astra](../sources/openai-gpt-6-astra.md) (FrontierMath T4 98%, ARC-AGI-3 99,9%, ExploitBench 100%, scope-overreach 0% vs Sol 48%), [GPT-6.1 Sol](../sources/openai-gpt-61-sol.md), [GPT-5.6](../sources/openai-gpt-56.md), [GPT-5.5](../sources/openai-gpt-55.md).
- **Reasoning**: effort `none…max` (model-dependent; Astra tanpa `none`; Sol default medium) + mode `standard`/`pro`; reasoning token ditagih sebagai output ([reasoning](../sources/openai-dev-reasoning-models.md)).
- **Open-weight**: gpt-oss 120B/20B + safeguard, Apache 2.0 ([open models](../sources/openai-open-models.md)) — yang dijual di [Groq](../entities/groq.md)/[Cerebras](../entities/cerebras.md)/dll.
- **Spesialis**: GPT-5.6 Cyber (Daybreak), GPT-Rosalind (life sciences), GPT-Image 2.5 Flare/Sunburst, GPT-Live-1 (voice $0.05/menit).

## Produk & plan

- **ChatGPT** — tiga mode: **Chat** (tanya), **Work** (delegasi task → deliverable: docs/slides/sheets/Sites; local/cloud; scheduled tasks) ([work](../sources/openai-learn-chatgpt-work.md)), **Codex** (lihat [Codex](codex.md)).
- **[Dots](dots.md)** — agen always-on GPT-6 Astra dengan komputer cloud sendiri; Pro/Business Premium/Enterprise ([sumber](../sources/openai-dots.md)).
- **Plan**: Free $0, Go $8, Plus $20, Pro $100/$200/$500 (Ultrafast di $500); Business (~IDR 337rb/user/bln), Edu, Enterprise; **Work & Codex berbagi usage** (estimasi pesan 5 jam: Astra 5–45, 6.1 Sol 15–160, Luna 350–3.000) ([pricing](../sources/openai-learn-pricing.md)).
- **Import dari agent lain**: desktop dari Claude Code/Cowork/Cursor; Codex CLI `/import` ([sumber](../sources/openai-learn-import.md)).
- **Platform API**: Agents SDK + Responses API, tools (web/file search, remote MCP, computer use, code interpreter), voice (GPT-Live/Realtime/chained), enterprise controls (ZDR, BAA, SOC 2, ISO 27001/27017/27018/27701/42001, PCI-DSS, CSA STAR 1) ([platform](../sources/openai-api-platform.md), [security](../sources/openai-security-privacy.md)).
- **[Plugin ChatGPT & Codex](../concepts/chatgpt-plugins.md)** — skills + MCP + UI + checkout; satu direktori universal ([arsitektur](../sources/openai-dev-plugin-architecture.md)).

## Kehadiran lain di wiki

- Keluarga **GPT-6** (Astra/Sol/Luna) dijual di [Token Harbor](token-harbor.md), [OpenCode Zen](opencode-zen.md), [Nous Portal](hermes-agent.md), [VyceAI](vyceai.md), [Puter](puter.md) ([analisis Luna](../analyses/perbandingan-gpt-6-luna.md)); **GPT-6 Luna Decisions** = mode keputusan ([Model Keputusan](../concepts/decision-models.md)).
- **Codex** dipakai lintas ekosistem: harness plugin di [OpenClaw](openclaw.md), integrasi [DeepSeek](deepseek.md), impor dari/ke ChatGPT ([import](../sources/openai-learn-import.md)).
- "Sign in with ChatGPT" di [OpenClaw](../sources/openclaw-landing.md) & [Nous Portal](../sources/hermes-agent-nous-research.md); OpenAI donor [OpenClaw Foundation](../sources/openclaw-landing.md) ("bukan produk OpenAI").
- Riset: [indeks riset](../sources/openai-research.md) (GPT-6 global rollout, riset matematika Lean), [Signals](../sources/openai-signals.md) (data ekonomi).

## Legal & data

- **Konsumen**: ToS ≥13; Output dialihkan ke pengguna; dilarang ekstraksi programatik/klaim manusia/memakai Output untuk model kompetitor ([ToS](../sources/openai-terms-of-use.md)); Privacy: konten dapat dipakai training (opt-out tersedia) ([privacy](../sources/openai-privacy-policy.md)).
- **Bisnis**: tidak training pada data organisasi secara default; Enterprise privacy & DPA/BAA ([security](../sources/openai-security-privacy.md)); peta dokumen ([terms & policies](../sources/openai-terms-policies.md)).

## Open questions

- Struktur kepemilikan pasca-reorganisasi (Foundation/Group) dalam praktik — hanya ringkas dari About.
- Harga API via agregator vs resmi (mis. Zen menjual gpt-6.1-sol $2/$10 — identik resmi; gpt-6-astra $10/$50 identik).
- Roadmap "texting your dot" & perluasan pasar dots.
- Detail GPT-5.6 Cyber/Daybreak & GPT-Rosalind belum di-ingest.

## Related

- [Codex](codex.md) · [Dots](dots.md)
- [Plugin ChatGPT & Codex](../concepts/chatgpt-plugins.md) · [Model Keputusan](../concepts/decision-models.md) · [Perbandingan GPT-6 Luna](../analyses/perbandingan-gpt-6-luna.md)
- [OpenClaw](openclaw.md) · [Hermes Agent](hermes-agent.md) · [DeepSeek](deepseek.md)
- [Overview](../overview.md)
