---
title: "Cerebras — Qwen 3.8 27B"
type: source
created: 2026-10-01
updated: 2026-10-01
sources: []
tags: [cerebras, qwen, models]
---

# Cerebras — Qwen 3.8 27B

- **Sumber**: Cerebras — halaman model `qwen-3.8-27b`
- **Penulis**: tidak dicantumkan
- **URL**: <https://inference-docs.cerebras.ai/models/qwen-3.8-27b>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-01
- **Berkas mentah**: `raw/2026/oktober/01/cerebras Qwen 3.8 27B.md`

## TL;DR

`qwen-3.8-27b` — model dense multimodal 27B milik Alibaba untuk agentic coding, tool use, research, dan workflow panjang. Kecepatan **~1.850 token/detik**, context 64k (free) / 128k (paid), max output 32k/40k, harga **$0.99/$1.49** per 1M token. Input teks + gambar; reasoning default `high` (bisa dimatikan dengan `none`).

## Key points

- **Rate limit**: Free Trial 5 request/menit, 30K uncached token/menit, 90K total token/menit, 1M token/hari, 2 gambar/request; Developer 300 request/menit, 150K uncached/menit, 750K total/menit, tanpa batas harian, 10 gambar/request.
- Reasoning default `high`; `none` mematikan; level effort memilih mode Qwen (bukan budget token pasti).
- Gambar hanya via Chat Completions, base64 PNG/JPEG; URL eksternal, detail kontrol, generasi gambar, video, audio tidak didukung.
- Structured outputs dan tool calling `strict: true` didukung.
- Kapabilitas: image inputs, reasoning, streaming, sampling controls, structured outputs, tool calling, parallel tool calling, prompt caching.
- Endpoint: `/v1/chat/completions`, `/v1/completions` (Completions tidak mendukung gambar/reasoning/tools).

| Spesifikasi | Nilai |
| --- | --- |
| Parameter | 27 miliar (dense) |
| Kecepatan | ~1.850 t/s |
| Context | 64k (free) / 128k (paid) |
| Max output | 32k (free) / 40k (paid) |
| Modalitas | Input teks + gambar, output teks |
| Harga | $0.99 input / $1.49 output per 1M |
| Reasoning | default `high`; bisa dimatikan (`none`) |

## Notable quotes

> "This model excels at vision-language understanding, coding, research, and long-horizon agentic tasks."

> "Reasoning is enabled by default at `high`. Set `reasoning_effort` to `none` to disable it."

## What this changes

- Melengkapi entitas [Cerebras](../entities/cerebras.md).
- Model yang sama muncul di [Groq](../entities/groq.md) ($0.80/$4.00) dan [Novita](../entities/novita.md) ($0.42/$3.00) — harga berbeda per penyedia.
- Tidak ada kontradiksi.

## Related

- [Cerebras](../entities/cerebras.md)
- [Cerebras — OpenAI GPT OSS](cerebras-gpt-oss.md)
- [Cerebras — Image Inputs](cerebras-image-inputs.md)
