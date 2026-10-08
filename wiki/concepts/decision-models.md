---
title: Model Keputusan (Decision Models)
type: concept
created: 2026-10-08
updated: 2026-10-08
sources: [typesafe-docs-introduction, typesafe-docs-system-one, openrouter-decisions-models, openrouter-jev-113, typesafe-docs-how-to-build, typesafe-docs-jaggedness-jev-113, openclaw-blog-decision-models, openclaw-yt-decision-models]
tags: [decision-models, system-one, api, ai]
---

# Model Keputusan (Decision Models)

**Model keputusan** adalah kelas model AI yang **tidak menghasilkan teks**, melainkan mengevaluasi sebuah `state` terhadap **pertanyaan bertipe** dan mengembalikan **jawaban terstruktur + probabilitas terkalibrasi** untuk dikonsumsi kode langsung. Kelas ini dipelopori **[TypeSafe](../entities/typesafe.md) dengan "System One" dan model [Jev](../entities/jev.md)**; kini menjadi kategori tersendiri (modalitas output *"Decisions"*) di OpenRouter dengan **belasan model lintas vendor** ([OpenRouter — Decisions](../sources/openrouter-decisions-models.md), [Introduction](../sources/typesafe-docs-introduction.md)).

## Kontrak umum

- **Input**: `state` (teks/JSON) + `questions` bertipe — pola schema `POST /v1/systemone` yang diadopsi banyak vendor ([API](../sources/typesafe-docs-api.md), [System One](../sources/typesafe-docs-system-one.md)).
- **Tiga tipe pertanyaan**: **Choice** (dari daftar opsi; ≤255), **Score** (rubrik terurut 2–10 level; nilai bisa pecahan), **Noul** (probabilitas ya/tidak 0–1). Semua bisa sekaligus; dievaluasi paralel & independen ([Primitives](../sources/typesafe-docs-primitives.md)).
- **Biaya**: ditagih per token **input**; **output gratis** di hampir semua model (tidak ada generasi token output) — mis. Jev $0.042/M, GPT-6 Luna Decisions $0.10/M, Decider $0.02/M.
- **Latensi**: satu forward pass per keputusan — klaim ~100–150 ms; Mercury Decide hingga 14 keputusan/detik. Cocok untuk jalur request real-time.
- **Kalibrasi**: probabilitas dilatih agar mencerminkan peluang benar (RLCD) sehingga kode bisa men-threshold & mengeskalasi yang tidak yakin ([Confidence](../sources/typesafe-docs-confidence.md)).
- **Kapan dipakai**: routing model, klasifikasi, scoring rubrik, guardrail LLM (jailbreak/prompt injection), verifikasi, feature extraction, moderasi — "common sense terprogram" di dalam kode, bukan agen ([How to build](../sources/typesafe-docs-how-to-build.md), [use cases](../sources/typesafe-docs-use-cases.md)).

## Ekosistem (per klip OpenRouter, Okt 2026)

| Vendor | Model | Input/M | Konteks |
| --- | --- | --- | --- |
| [TypeSafe](../entities/typesafe.md) | [Jev 1.13](../entities/jev.md) (+ Jev Router, Jev Latest) | $0.042 | 32–64K |
| OpenAI | GPT-6 Luna Decisions (Deliveries API) | $0.10 | 1.05M |
| Upstage | Solar Decide / Flash | $0.05 | ~512K |
| Perplexity | Decider V1.1 27B | $0.02 | 262K |
| Liquid AI | d1 | $0.04 | 66K |
| Cloudflare | Clef / Clef-flash (open source) | $0.042 / $0.021 | 66K (±2K efektif) |
| [Inception](../entities/inception-labs.md) | Mercury Decide | $0 (free tier) | 33K |
| Together AI | Tev1 4B Experimental | $0.042 | 33K |
| Respan | Span-01 / Lite | $0.02 / $0 | — |
| Komunitas | Kev 4B (Apache-2.0, berbasis Qwen3.5-4B) | $0.042 | 8K |

## Keterkaitan dengan domain lain di wiki

- **Adopsi nyata — OpenClaw (8 Okt)**: platform agen self-hosted [OpenClaw](../entities/openclaw.md) mengintegrasikan decision model secara **plugin-first**: model terkonfigurasi terpisah dari model chat, dipakai via `api.runtime.decisions.evaluate` (plugin) dan tool `decision_evaluate` (core); adapter TypeSafe mendukung **Jev hosted + System One lokal (Kev)**; opt-in. Use case komunitas: filter tool/skill, skill curation, context management saat compaction, pemilihan model, dan **"harus menjawab atau diam?" di grup** (Noul murah). Klaim: Jev = model dengan adopsi tercepat di Vercel AI Gateway ([blog OpenClaw](../sources/openclaw-blog-decision-models.md), [YT](../sources/openclaw-yt-decision-models.md)).
- **Melengkapi, bukan menggantikan, LLM**: Jev dkk. **bukan** pengganti model coding agent — dipakai *oleh* kode/agen untuk keputusan sempit ([coding agents](../sources/typesafe-docs-coding-agents.md)).
- **Jev di katalog pihak ketiga**: [OpenCode Zen](../entities/opencode-zen.md) & [Tokenra](../entities/tokenra.md) menjual varian Jev di samping model chat.
- **Batas resmi**: model keputusan tetap bisa salah — lihat [jaggedness Jev](../sources/typesafe-docs-jaggedness-jev-113.md) (literal, lemah aritmetika, bias urutan opsi).

## Pertanyaan terbuka

- Apakah "decisions" akan menjadi modalitas standar di gateway lain (Token Harbor, Zen, dsb.)?
- Kepadatan adopsi: volume token OpenRouter menunjukkan pemakaian nyata (GPT-6 Luna Decisions 13,5B; Mercury Decide 13,2B) — belum ada verifikasi independen.
- Harga Jev di katalog pihak ketiga sedikit berbeda dari resmi — mekanisme (agregator/subsidi) belum jelas.

## Related

- [Jev](../entities/jev.md) · [TypeSafe](../entities/typesafe.md)
- [OpenRouter — Decisions Models (sumber)](../sources/openrouter-decisions-models.md)
- [Layanan Akses Model](model-access-services.md) — pola akses model lain.
- [Inception Labs](../entities/inception-labs.md) — Mercury Decide.
- [Overview](../overview.md)
