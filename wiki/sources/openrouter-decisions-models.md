---
title: "OpenRouter — Model 'Decisions' (Kelas System One)"
type: source
created: 2026-10-08
updated: 2026-10-08
sources: []
tags: [openrouter, decision-models, system-one, katalog]
---

# OpenRouter — Model "Decisions" (Kelas System One)

- **Sumber**: Daftar model OpenRouter difilter `output_modalities=decisions`
- **Penulis**: openrouter.ai (atribusi klip menyertakan [[upstage]])
- **URL**: <https://openrouter.ai/models?output_modalities=decisions>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-08
- **Berkas mentah**: `raw/2026/oktober/08/openrouter. Compare AI Models Pricing, Context & Benchmarks. output_modalities=decisions.md`

## TL;DR

OpenRouter kini punya kategori output **"Decisions"** berisi belasan **model keputusan** (kelas System One): semua membaca `state` + pertanyaan bertipe dan mengembalikan `choice`/`score`/`noul` berprobabilitas — **output token gratis di hampir semua model**. Ekosistemnya lintas vendor: TypeSafe, Upstage, Perplexity, **OpenAI**, Liquid, Cloudflare, Together, **Inception**, Respan, dan open-weight komunitas (Kev).

## Key points

| Model | Vendor | Konteks | Harga input | Catatan |
| --- | --- | --- | --- | --- |
| Jev 1.13 | TypeSafe | 32K (OpenRouter) | $0.042/M | Pemimpin kategori; schema `/v1/systemone` |
| Solar Decide Flash | Upstage | 524K | $0.05/M (50% off) | Varian cepat, basis Solar Mini 4; kuat bahasa Korea; output $0 |
| Solar Decide | Upstage | 512K | $0.05/M (50% off) | Dokumen penuh sebagai state |
| Decider V1.1 27B | Perplexity | 262K | $0.02/M | Penerus Decider V1 27B; state bisa teks/JSON/gambar; **≤128 pertanyaan/request** |
| GPT-6 Luna Decisions | OpenAI | **1.05M** | $0.10/M | GPT-6 Luna lewat **OpenAI Decisions API**; **≤200 pertanyaan**; output $0 |
| d1 | Liquid AI | 66K | $0.04/M | Endpoint System One |
| Clef / Clef-flash | Cloudflare | 66K | $0.042 / $0.021/M | Open-source; fine-tune Qwen3.8-27B / Qwen3.5-9B di Workers AI; ⚠ teks dipotong ~2K token |
| Tev1 4B Experimental | Together AI | 33K | $0.042/M | SFT Qwen3.5-4B; lewat chat completions biasa; output = huruf opsi (2–24 opsi) |
| Mercury Decide | Inception | 33K | $0/M (free tier) | Sampai **14 keputusan/detik**; schema sama dengan Jev |
| Span-01 / Lite | Respan | — | $0.02/M / $0 | Behavior scoring pada conversation span |
| Kev 4B | Jared Palmer (open) | 8K | $0.042/M | LoRA + pointer head Qwen3.5-4B-Base; **Apache-2.0**; "alternatif kompak Jev" (keluarga 0.8B/4B/9B) |

- Pola umum: satu forward pass per keputusan, tanpa generasi teks, probabilitas langsung dari model; banyak model memakai schema `/v1/systemone` yang sama (Jev, d1, Clef, Mercury Decide, Kev, dsb.).
- Volume token tertinggi di daftar: GPT-6 Luna Decisions (13,5B), Mercury Decide (13,2B), Span-01 Lite (11,7B), d1 (9,76B) — indikasi adopsi nyata.

## Notable quotes

> "Instead of generating text, it reads a `state` and answers typed questions, returning a choice, a score, or a yes/no answer, each with a probability taken directly from the model."

## What this changes

- Kategori baru terpetakan: [Model Keputusan](../concepts/decision-models.md) — kini lintas 10 vendor.
- Menghubungkan **OpenAI (GPT-6 Luna Decisions)** dan **[Inception Labs](../entities/inception-labs.md) (Mercury Decide)** ke tren ini.
- Tidak ada kontradiksi.

## Related

- [Jev](../entities/jev.md) · [TypeSafe](../entities/typesafe.md)
- [OpenRouter — Jev 1.13](openrouter-jev-113.md)
- [Model Keputusan](../concepts/decision-models.md)
- [Inception Labs](../entities/inception-labs.md)
