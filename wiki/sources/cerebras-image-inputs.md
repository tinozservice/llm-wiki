---
title: "Cerebras — Image Inputs"
type: source
created: 2026-10-01
updated: 2026-10-01
sources: []
tags: [cerebras, image-inputs, multimodal]
---

# Cerebras — Image Inputs

- **Sumber**: Cerebras — panduan Image Inputs (Public Preview)
- **Penulis**: tidak dicantumkan
- **URL**: <https://inference-docs.cerebras.ai/capabilities/image-inputs>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-01
- **Berkas mentah**: `raw/2026/oktober/01/cerebras Image Inputs.md`

## TL;DR

Image inputs (Public Preview) memungkinkan model vision memproses gambar via **Chat Completions** sebagai **base64 data URI**. Tersedia untuk `qwen-3.8-27b` (Shared Inference); model lain via Dedicated. Batas: 2 gambar/request (Free Trial) atau 10 (Developer/Enterprise), payload maksimum 10 MiB, dimensi maksimum 15.000 px per sisi, format PNG/JPEG.

## Key points

- Gambar dikirim sebagai `image_url` berisi data URI (`data:image/png;base64,...`); URL eksternal dan `image_url.detail` tidak didukung.
- Gambar hanya di pesan `user`; pesan `tool` tidak mendukung gambar.
- **Token gambar** dihitung dari dimensi hasil preprocessing:
  - `qwen-3.8-27b`: grid 32×32 px per token; maks 2.304 token gambar.
  - `kimi-k2.7-code`: grid 28×28 px; tanpa upscale; maks 2.304.
  - `gemma-4-31b`: grid 48×48 px; maks 280.
  - Cek `usage.image_tokens` di respons.
- Gambar tidak tersimpan permanen; embedding dapat di-cache secara efisien per organisasi. Prompt caching berlaku juga untuk gambar.
- Chat Completions stateless — gambar harus dikirim ulang di turn berikutnya bila masih dibutuhkan.
- Tidak bisa generate gambar.
- **Peringatan**: prompt injection lewat teks di dalam gambar; output gambar diperlakukan sebagai untrusted; tidak untuk citra medis; keterbatasan teks kecil, konten rotasi, grafik, spatial reasoning, counting, gambar panoramik.

## Notable quotes

> "Text embedded in an image is included in the model's prompt context alongside the user's text. ... Treat image content from untrusted sources as untrusted input."

> "Image inputs are processed as soon as they are received, and the original image payloads are not persisted."

## What this changes

- Melengkapi entitas [Cerebras](../entities/cerebras.md) dengan kemampuan multimodal.
- Relevan untuk perbandingan model vision di wiki (Qwen3.8-27B vs MiMo, Gemini, dll.).
- Tidak ada kontradiksi.

## Related

- [Cerebras](../entities/cerebras.md)
- [Cerebras — Qwen 3.8 27B](cerebras-qwen-38-27b.md) — model utama untuk image inputs.
- [Cerebras — OpenAI GPT OSS](cerebras-gpt-oss.md)
