---
title: OpenAI
type: entity
created: 2026-10-08
updated: 2026-10-08
sources: [openai-landing, openai-research, openrouter-decisions-models, openclaw-landing, hermes-agent-nous-research, deepseek-integrate-codex]
tags: [openai, lab, model-provider, gpt-6]
---

# OpenAI

**OpenAI** adalah lab AI pembuat keluarga model **GPT** (di wiki: GPT-5.x, **GPT-6 Astra/Sol/Luna** dan varian Pro) dan **Codex** (coding agent). Entitas ini menghimpun jejak OpenAI yang tersebar di wiki; klip pertama yang khusus tentangnya adalah [beranda resmi](../sources/openai-landing.md) (8 Okt 2026).

## Yang diketahui dari wiki

- **Produk terkini (beranda, 8 Okt)**: sorotan **"GPT-6 and Intelligent UI for everyone"**; berita: MentalHealthBench, DevDay 2026 Recap, **computer use dengan Ironclad**, kemitraan Atlassian, Albertsons, Lenfest ([sumber](../sources/openai-landing.md)).
- **Rollout & riset (indeks riset, 7 Okt)**: GPT-6 diluncurkan **global di ChatGPT (termasuk plan gratis) dengan Intelligent UI**; update keselamatan GPT-6 Sol/Luna; **GPT-6.1 Sol** (29 Sep) = near-Astra dengan **1/5 harga Astra**; riset matematika (formalisasi Lean); MentalHealthBench ([sumber](../sources/openai-research.md)).
- **Model di katalog pihak ketiga**: GPT-6 Astra ($10/$50), GPT-6 Sol ($2/$10), GPT-6 Luna ($0.10/$0.50), GPT-5.6 Luna/Sol/Terra, GPT-5.4/5.5 Pro ($30/$180) — di [Token Harbor](token-harbor.md), [OpenCode Zen](opencode-zen.md), [Nous Portal](hermes-agent.md), [VyceAI](vyceai.md), [Puter](puter.md) (user-pays) ([analisis Luna](../analyses/perbandingan-gpt-6-luna.md)).
- **Mode keputusan**: **GPT-6 Luna Decisions** lewat OpenAI Decisions API — output gratis, konteks 1,05M, ≤200 pertanyaan/request ([sumber](../sources/openrouter-decisions-models.md), [Model Keputusan](../concepts/decision-models.md)).
- **Codex** = coding agent OpenAI; integrasi resmi DeepSeek (Responses API) & Claude-Code-style; Codex harness juga jadi runtime plugin di [OpenClaw](openclaw.md) ([sumber](../sources/deepseek-integrate-codex.md)).
- **Kemitraan sign-in**: "Sign in with ChatGPT" untuk [OpenClaw](openclaw.md) (donor OpenClaw Foundation) dan [Nous Portal](hermes-agent.md) ([sumber](../sources/openclaw-landing.md), [sumber](../sources/hermes-agent-nous-research.md)).
- **Data/legal**: belum ada sumber khusus; kebijakan OpenAI untuk Decisions API dsb. belum di-ingest.

## Open questions

- Kebijakan harga/limit resmi OpenAI (platform.openai.com) belum di-ingest — harga di wiki semuanya via agregator.
- Detail GPT-6 "Intelligent UI" dan Ironclad belum ada di klip (hanya headline).
- Hubungan OpenAI ↔ OpenClaw Foundation (donor) vs kepemilikan produk — sudah diklarifikasi OpenClaw ("bukan produk OpenAI") tetapi sisi OpenAI belum ada sumber.

## Related

- Sumber: [OpenAI — Landing](../sources/openai-landing.md) · [OpenAI — Research](../sources/openai-research.md)
- [OpenClaw](openclaw.md) · [Nous Portal/Hermes](hermes-agent.md) · [DeepSeek](deepseek.md) (integrasi Codex)
- [Model Keputusan](../concepts/decision-models.md) · [Perbandingan GPT-6 Luna](../analyses/perbandingan-gpt-6-luna.md)
- [Overview](../overview.md)
