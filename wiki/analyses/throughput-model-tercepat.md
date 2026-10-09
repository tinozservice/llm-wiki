---
title: Throughput Model Tercepat
type: analysis
created: 2026-10-10
updated: 2026-10-10
sources: [cerebras-model-catalog, cerebras-pricing, cerebras-gpt-oss, cerebras-qwen-38-27b, groq-supported-models, inception-models, inception-mercury-voice, typesafe-docs-models, openrouter-jev-113, tokenharbor-docs-speed, vyceai-system-status]
tags: [throughput, kecepatan, perbandingan, verifikasi]
---

# Throughput Model Tercepat

## Pertanyaan

Daftar **throughput (token/detik)** tercepat dari seluruh model yang ada di wiki, dan tandai nilai yang **belum terverifikasi**. (per user, 2026-10-10)

## Jawaban singkat

**Cerebras `gpt-oss-120b` (~3.000 t/s)** adalah model dengan throughput tertinggi yang tercatat di wiki. Peringkat berikutnya: **Cerebras `qwen-3.8-27b` (~1.850 t/s)**, lalu **Inception Mercury** dan **Groq `gpt-oss-20b`** (keduanya ~1.000 t/s).

Dua catatan penting:

1. Hanya **tiga penyedia** di wiki yang mempublikasikan throughput per model: [Cerebras](../entities/cerebras.md), [Groq](../entities/groq.md), dan [Inception Labs](../entities/inception-labs.md).
2. **Semua angka t/s adalah klaim vendor** dari halaman resmi masing-masing penyedia — **tidak satu pun terverifikasi independen** (lihat [Nilai yang belum terverifikasi](#nilai-yang-belum-terverifikasi)).

## Tabel peringkat throughput

Diurutkan menurun menurut klaim t/s. Kolom **Status** menandai tingkat verifikasi.

| # | Model | Penyedia | Throughput (klaim) | Status | Harga /1M (in/out) |
| --- | --- | --- | --- | --- | --- |
| 1 | `gpt-oss-120b` | [Cerebras](../entities/cerebras.md) | ~3.000 t/s | Belum terverifikasi (klaim vendor) | $0.35 / $0.75 |
| 2 | `qwen-3.8-27b` | [Cerebras](../entities/cerebras.md) | ~1.850 t/s | Belum terverifikasi (klaim vendor) | $0.99 / $1.49 |
| 3 | Mercury (dLLM, semua varian) | [Inception Labs](../entities/inception-labs.md) | 1.000+ t/s | Belum terverifikasi (klaim vendor) | Mercury 2.5: $0.04 / $0.15 |
| 4 | `gpt-oss-20b` | [Groq](../entities/groq.md) | 1.000 t/s | Belum terverifikasi (klaim vendor) | $0.075 / $0.30 |
| 5 | Safety GPT OSS 20B | [Groq](../entities/groq.md) | 1.000 t/s | Belum terverifikasi (klaim vendor) | $0.075 / $0.30 |
| 6 | Llama 3.1 8B | [Groq](../entities/groq.md) | 560 t/s | Belum terverifikasi (klaim vendor) | Enterprise (Contact Sales) |
| 7 | `gpt-oss-120b` | [Groq](../entities/groq.md) | 500 t/s | Belum terverifikasi (klaim vendor) | $0.15 / $0.60 |
| 8 | Qwen3.8-27B | [Groq](../entities/groq.md) | 450 t/s | Belum terverifikasi (klaim vendor) | $0.80 / $4.00 |
| 9 | Llama 3.3 70B | [Groq](../entities/groq.md) | 280 t/s | Belum terverifikasi (klaim vendor) | Enterprise (Contact Sales) |
| 10 | MiniMax M2.7 | [Groq](../entities/groq.md) | 260 t/s | Belum terverifikasi (klaim vendor) | Enterprise (Contact Sales) |

Sumber angka: [Cerebras — Model Catalog](../sources/cerebras-model-catalog.md), [Cerebras — Pricing](../sources/cerebras-pricing.md), [Groq — Supported Models](../sources/groq-supported-models.md), [Inception Labs — Models](../sources/inception-models.md).

**Observasi kunci**: model yang sama dapat punya throughput sangat berbeda antar platform — `gpt-oss-120b` = **~3.000 t/s** di Cerebras vs **500 t/s** di Groq; `qwen-3.8-27b` = **~1.850 t/s** di Cerebras vs **450 t/s** di Groq. Jadi kecepatan di sini lebih soal **platform inferensi** daripada arsitektur model itu sendiri.

## Nilai yang belum terverifikasi

> [!warning] Semua nilai throughput per model di wiki belum terverifikasi
> Tidak ada satu pun angka t/s di wiki yang berasal dari benchmark independen/pihak ketiga. Seluruhnya adalah **klaim vendor** dari halaman resmi penyedia, diambil dari klip tanggal **2026-10-01**, tanpa replikasi.

Daftar eksplisit nilai yang **belum terverifikasi**:

- **Cerebras** — `gpt-oss-120b` ~3.000 t/s; `qwen-3.8-27b` ~1.850 t/s. Open question sudah tercatat di [Cerebras](../entities/cerebras.md): *"Apakah klaim ~3.000 t/s diverifikasi independen?"* (klip hanya dari Cerebras).
  - *Koreborasi parsial (masih vendor):* benchmark blog Inception ([Mercury Voice](../sources/inception-mercury-voice.md)) meringking **GPT-OSS-120B low di Cerebras** sebagai model tercepat di antara model yang diuji — ini menopang arah klaim Cerebras, tetapi tetap benchmark vendor (Inception), bukan uji independen.
- **Inception Labs** — "1.000+ tokens per second" (semua model dLLM Mercury). Klaim pemasaran ("5× greater speed", "two times faster than the next fastest") bersifat vendor.
- **Groq** — `gpt-oss-20b` 1.000 t/s; Safety GPT OSS 20B 1.000 t/s; Llama 3.1 8B 560 t/s; `gpt-oss-120b` 500 t/s; Qwen3.8-27B 450 t/s; Llama 3.3 70B 280 t/s; MiniMax M2.7 260 t/s. Semua dari tabel dokumentasi Groq, tanpa verifikasi pihak ketiga.

**Status ringkas**: 10 dari 10 baris peringkat = **belum terverifikasi**. Belum ada satu pun nilai t/s di wiki yang layak disebut "terverifikasi".

## Metrik yang sering tertukar dengan throughput

Angka-angka berikut **bukan** throughput per-request dan jangan dicampur ke peringkat di atas:

| Angka | Apa itu | Sumber |
| --- | --- | --- |
| **100K token/detik & 80 req/s** (Jev) | **Rate limit akun** yang terdokumentasi (dinamis, "berubah selagi kesepakatan GPU berjalan") — bukan kecepatan generasi per request | [TypeSafe Docs — Models](../sources/typesafe-docs-models.md), [Jev](../entities/jev.md) |
| **Latensi P50 0,18 s** (Jev di OpenRouter) | Latensi, bukan throughput; diukur agregator | [OpenRouter — Jev 1.13](../sources/openrouter-jev-113.md) |
| **TTFAT p50 320 ms** (Mercury Voice) | Time-to-first-audio-token, metrik latensi voice | [Mercury Voice](../sources/inception-mercury-voice.md) |
| **380 ms – 24.635 ms** (endpoint VyceAI) | Latensi respons per endpoint saat klip | [VyceAI — System Status](../sources/vyceai-system-status.md) |
| **Prefill median** (mis. >64k token = 21.720 tok/s) | Throughput **pembacaan prompt** agregat lintas semua model — tidak melekat pada model tertentu | [Token Harbor — How we measure speed](../sources/tokenharbor-docs-speed.md) |

Catatan: Jev adalah [Model Keputusan](../concepts/decision-models.md) (bukan generasi teks), jadi "throughput"-nya memang didefinisikan berbeda (keputusan/detik).

## Penyedia tanpa data t/s sama sekali

Penyedia berikut ada di wiki dengan harga/konteks, tetapi **tidak** mempublikasikan throughput per model — sehingga tidak bisa masuk peringkat:

- [OpenAI](../entities/openai.md) (Astra/Sol/Luna), [Anthropic](../entities/anthropic.md) (Fable/Opus/Sonnet/Haiku), [DeepSeek](../entities/deepseek.md), Google — halaman resmi hanya memuat harga/konteks.
- Agregator/pass: [Token Harbor](../entities/token-harbor.md) & [katalognya](../entities/token-harbor-model-catalog.md) (AA Rank + Intelligence Index, bukan t/s), [OpenCode Zen](../entities/opencode-zen.md), [Nous Portal](../entities/hermes-agent.md), [Puter](../entities/puter.md), [Sail Research](../entities/sail-research.md), [VyceAI](../entities/vyceai.md).

## Caveats

- Semua angka t/s dari klip **2026-10-01** (halaman resmi Cerebras/Groq/Inception) dan dapat berubah sewaktu-waktu.
- Angka t/s vendor biasanya diukur pada kondisi terbaik (batch/ukuran prompt tertentu); tidak menyatakan throughput dunia nyata untuk beban agentik konteks panjang.
- Definisi "t/s" tidak seragam antar penyedia (apakah termasuk token reasoning? apakah output-only?) — lihat definisi metrik Token Harbor di [How we measure speed](../sources/tokenharbor-docs-speed.md) sebagai contoh metodologi eksplisit.
- Klaim kecepatan Cerebras belum diverifikasi independen (open question di [Cerebras](../entities/cerebras.md)); klaim Inception ("5×", "2×") juga vendor.

## Related

- [Cerebras](../entities/cerebras.md) · [Groq](../entities/groq.md) · [Inception Labs](../entities/inception-labs.md)
- [Jev](../entities/jev.md) · [TypeSafe](../entities/typesafe.md) · [Model Keputusan](../concepts/decision-models.md)
- [Layanan Akses Model](../concepts/model-access-services.md) · [Prompt Caching](../concepts/prompt-caching.md)
- [Perbandingan GPT-6 Luna Antar Penyedia](perbandingan-gpt-6-luna.md) · [Perhitungan Limit Agent Pass](perhitungan-limit-agent-pass.md)
