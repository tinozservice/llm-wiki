---
title: "Cerebras — OpenAI GPT OSS"
type: source
created: 2026-10-01
updated: 2026-10-01
sources: []
tags: [cerebras, gpt-oss, models]
---

# Cerebras — OpenAI GPT OSS

- **Sumber**: Cerebras — halaman model `gpt-oss-120b`
- **Penulis**: tidak dicantumkan
- **URL**: <https://inference-docs.cerebras.ai/models/openai-oss>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-01
- **Berkas mentah**: `raw/2026/oktober/01/cerebras OpenAI GPT OSS.md`

## TL;DR

`gpt-oss-120b` di Cerebras: model 120B dengan kecepatan **~3.000 token/detik**, context 65k (free) / 131k (paid), max output 32k/40k, harga **$0.35/$0.75** per 1M token. Input teks saja. Reasoning dikontrol `reasoning_effort` (default `medium`; tidak bisa dimatikan).

## Key points

- **Rate limit**: Free Trial 5 request/menit, 30k input token/menit, 1M token/hari; Developer 1K request/menit, 1M input token/menit, tanpa batas harian.
- Dukung: reasoning, streaming, sampling controls, structured outputs, tool calling, prompt caching.
- Catatan model: `min_tokens` bisa memicu token EOS yang merusak parser (pakai risiko sendiri); model kadang memanggil tool yang tidak didefinisikan (perlu reprompt "you're hallucinating a tool call"); role `system` dipetakan ke developer-level instructions.
- Endpoint: `/v1/chat/completions` dan `/v1/completions`.
- Sampling: temperature, top_p, frequency/presence penalty, seed, logit_bias.

| Spesifikasi | Nilai |
| --- | --- |
| Parameter | 120 miliar |
| Kecepatan | ~3.000 t/s |
| Context | 65k (free) / 131k (paid) |
| Max output | 32k (free) / 40k (paid) |
| Modalitas | Input teks, output teks |
| Harga | $0.35 input / $0.75 output per 1M |
| Reasoning | default `medium`; `low`/`medium`/`high`; tidak bisa dimatikan |

## Notable quotes

> "Use the `reasoning_effort` parameter to control reasoning for this model. The default effort level is `medium`."

> "This model may call tools that aren't directly specified due to its training."

## What this changes

- Melengkapi entitas [Cerebras](../entities/cerebras.md) dan katalog model bersama.
- Model yang sama juga tampil di [Groq](../entities/groq.md) dan [Novita](../entities/novita.md) dengan harga berbeda — memperkaya perbandingan lintas penyedia.
- Tidak ada kontradiksi.

## Related

- [Cerebras](../entities/cerebras.md)
- [Cerebras — Qwen 3.8 27B](cerebras-qwen-38-27b.md)
- [Cerebras — Reasoning](cerebras-reasoning.md)
