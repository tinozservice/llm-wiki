---
title: OpenRouter
type: entity
created: 2026-10-08
updated: 2026-10-08
sources: [openrouter-jev-113, openrouter-decisions-models, openrouter-hermes-integration, openrouter-openclaw-integration, tokenharbor-docs-vs-openrouter, puter-tutorial-openrouter, cerebras-pricing, inception-enterprise]
tags: [openrouter, gateway, model-access, routing, decisions]
---

# OpenRouter

**OpenRouter** adalah **gateway multi-model** besar: satu akun / API key (`sk-or-…`) untuk ratusan model lintas vendor, endpoint OpenAI-compatible (`https://openrouter.ai/api/v1`), penagihan pay-as-you-go per token. Di wiki, OpenRouter hadir dalam tiga peran: (1) **etalase kategori** — tempat modalitas output **"Decisions"** didefinisikan dan tempat [Jev](jev.md) dipasarkan; (2) **provider** yang dikonfigurasi agen ([Hermes Agent](hermes-agent.md), [OpenClaw](openclaw.md)); (3) **pembanding** gateway lain (mis. [Token Harbor](token-harbor.md)).

## Katalog & cakupan

- Snapshot via tutorial [Puter](puter.md): **±190 model** — Gemma 4, Llama 3.x/4, MiniMax M1–M2.7, Mistral, Kimi K2/K2.5, `inception/mercury-2`, NVIDIA Nemotron 3, Qwen 3.5/3.6, Grok 4.1/4.20, GLM 4.5–5.3, Perplexity Sonar, GPT-5.4/5.5, GPT Image/Audio, gpt-oss ([tutorial](../sources/puter-tutorial-openrouter.md)).
- ID model berpola `<author>/<slug>`; prefix **`~`** = versi terbaru dalam keluarga (mis. `~anthropic/claude-sonnet-latest`); di config agen memakai awalan `openrouter/<author>/<slug>` ([Hermes](../sources/openrouter-hermes-integration.md), [OpenClaw](../sources/openrouter-openclaw-integration.md)).
- Kategori **"Decisions"** (modalitas output): belasan model keputusan lintas 10+ vendor, hampir semua **output token gratis** — GPT-6 Luna Decisions ([OpenAI](openai.md)), Solar Decide (Upstage), Decider (Perplexity), d1 (Liquid), Clef (Cloudflare), Tev1 (Together), Mercury Decide ([Inception](inception-labs.md)), Span-01 (Respan), Kev 4B (open-weight), [Jev](jev.md)/[TypeSafe](typesafe.md) ([daftar](../sources/openrouter-decisions-models.md)).
- **Jev 1.13** di OpenRouter: **$0.042/M input, output gratis**; satu provider (forward langsung, tanpa routing); latensi P50 **0,18 s**; uptime 100% (jendela 3 hari; availability 99,91%); volume 63,7B token prompt. Keluarga: **Jev Router** (merutekan tiap request ke model & reasoning effort terbaik; konteks 1M) dan **Jev Latest** ([halaman model](../sources/openrouter-jev-113.md)).
- Vendor/penyedia yang bersinggungan di wiki: TypeSafe (Jev), Inception (salah satu jalur deployment via OpenRouter/Models.dev), [Cerebras](cerebras.md) (partner resmi di samping AWS/HF/Vercel), OpenAI (GPT-6 Luna Decisions) ([Inception](../sources/inception-enterprise.md), [Cerebras](../sources/cerebras-pricing.md)).

## Fitur routing (dari cookbook agen)

- **Provider routing**: `sort: price|throughput|latency`; filter `only`/`ignore`/`order`; `data_collection: deny`; shortcut **`:nitro`** (throughput) dan **`:floor`** (harga) ([Hermes](../sources/openrouter-hermes-integration.md)).
- **Fallback berantai**: daftar model cadangan; saat aktif, ganti model **mid-session** tanpa kehilangan percakapan ([Hermes](../sources/openrouter-hermes-integration.md)).
- **Auxiliary models**: tugas sampingan (kompresi konteks, vision, judul sesi, ringkasan web) diarahkan ke model murah; model utama tetap fokus ([Hermes](../sources/openrouter-hermes-integration.md)).
- **Auto Model** (`openrouter/auto`): memilih model paling hemat biaya per prompt — dipakai OpenClaw sebagai model default hasil onboarding (tugas ringan seperti heartbeat ke model murah) ([OpenClaw](../sources/openrouter-openclaw-integration.md)).
- **Pareto Code Router** (`openrouter/pareto-code` + `min_coding_score` 0–1): merutekan tugas coding ke model termurah yang memenuhi ambang kualitas ([Hermes](../sources/openrouter-hermes-integration.md)).
- Syarat praktis Hermes: model harus berkonteks **≥64K** — window kecil ditolak saat startup karena system prompt + skema tool bisa memenuhinya ([Hermes](../sources/openrouter-hermes-integration.md)).

## Ekonomi & free tier

- Pay-as-you-go per token; harga model & provider tampil publik; routing + fallback lintas upstream ([perbandingan Token Harbor](../sources/tokenharbor-docs-vs-openrouter.md)).
- **Free tier `:free`**: batas **20 request/menit & 1.000/hari** (setelah registrasi); peringatan sumber: limit cepat terasa saat trafik nyata ([Puter tutorial](../sources/puter-tutorial-openrouter.md)).
- Model OpenRouter juga bisa dipanggil **tanpa key** lewat perantara [Puter](puter.md) — biaya ke user (user-pays) ([Puter tutorial](../sources/puter-tutorial-openrouter.md)).
- Perbandingan Token Harbor vs OpenRouter (**klaim pihak Token Harbor — bias vendor**): keduanya OpenAI-compatible, PAYG, harga publik, dan punya smart routing + fallback; TH mengklaim unggul pada endpoint Anthropic native ("Varies" untuk OR), setup agen satu perintah, dan free tier tetap; migrasi dari OR = ganti base URL + key ([sumber](../sources/tokenharbor-docs-vs-openrouter.md)).

## Peran di wiki

- **Provider agen**: [Hermes Agent](hermes-agent.md) & [OpenClaw](openclaw.md) masing-masing punya cookbook resmi OpenRouter; kebutuhan minimum konteks 64K dan pola fallback/Auto Model tercatat di sana ([Hermes](../sources/openrouter-hermes-integration.md), [OpenClaw](../sources/openrouter-openclaw-integration.md)).
- **Etalase kategori "decisions"**: menjelaskan `jev-*` di katalog pihak ketiga ([Tokenra](tokenra.md) `jev-router`/`jev-latest`, [OpenCode Zen](opencode-zen.md) `jev-1.13`) → [Model Keputusan](../concepts/decision-models.md).
- **Gateway pembanding** di [Layanan Akses Model](../concepts/model-access-services.md).

## Open questions

- Angka "±190 model" adalah snapshot tutorial (klip Sep 2026); jumlah & lineup hidup tidak diketahui.
- Penilaian **independen** tentang OpenRouter (keandalan, harga, kebijakan data) belum ada — perbandingan yang dimiliki wiki ditulis pesaing (Token Harbor).
- Fitur **Jev Lab** (OpenRouter) belum dijelajahi ([Jev](jev.md)).
- Detail platform OpenRouter dari sisinya sendiri (Activity Dashboard, kebijakan data, funding/pemilik) belum di-ingest.
- Apakah modalitas "decisions" akan meluas ke gateway lain — saat ini khas OpenRouter.

## Related

- Sumber: [Jev 1.13](../sources/openrouter-jev-113.md) · [Decisions](../sources/openrouter-decisions-models.md) · [Hermes cookbook](../sources/openrouter-hermes-integration.md) · [OpenClaw cookbook](../sources/openrouter-openclaw-integration.md) · [vs Token Harbor](../sources/tokenharbor-docs-vs-openrouter.md) · [Puter tutorial](../sources/puter-tutorial-openrouter.md)
- [Jev](jev.md) · [TypeSafe](typesafe.md) — model & lab pemimpin kategori decisions.
- [Token Harbor](token-harbor.md) — gateway pembanding (sudut pandang TH).
- [Hermes Agent](hermes-agent.md) · [OpenClaw](openclaw.md) — agen yang memakai OpenRouter sebagai provider.
- [Model Keputusan](../concepts/decision-models.md) · [Layanan Akses Model](../concepts/model-access-services.md)
- [Overview](../overview.md)
