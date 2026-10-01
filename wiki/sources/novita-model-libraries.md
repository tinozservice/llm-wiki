---
title: "Novita — Model Libraries & GPU Cloud"
type: source
created: 2026-10-01
updated: 2026-10-01
sources: []
tags: [novita, pricing, models]
---

# Novita — Model Libraries & GPU Cloud

- **Sumber**: Novita AI — halaman harga (model APIs + GPU + agent sandbox)
- **Penulis**: tidak dicantumkan
- **URL**: <https://novita.ai/pricing>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-01
- **Berkas mentah**: `raw/novita Model Libraries.md`

## TL;DR

Novita AI menawarkan **200+ model API**, GPU on-demand, dan agent sandbox dalam satu API — "Free to start". Harga teks per juta token sangat kompetitif dan sebagian **identik** dengan harga Token Harbor/OpenCode Zen untuk model yang sama (DeepSeek V4.1 Flash $0.3/$1.2, GLM 5.3 $1.4/$4.4, Kimi K3 $3/$15, Qwen3.8 Flash $0.15/$0.47, MiMo V2.6 Flash $0.14/$0.28). **Batch inference** diskon perkenalan **50%** untuk token input/output model yang didukung. Dua model Ling (3.1 Flash, 3.0 Flash Sante) gratis.

## Key points

- Katalog teks mencakup DeepSeek, GLM/Z.ai, Moonshot, Qwen, Meta, Google, MiniMax, NVIDIA, OpenAI (gpt-oss), Tencent (Hy3/Hy4), Xiaomi (MiMo), Baidu, Ling, dll.
- Cache read murah (0,2–10% dari harga input).
- Modalitas lain: embeddings ($0.01–$0.07/M), image ($0.02/gambar), video (Kling/Wan/MiniMax per detik), audio (TTS per 1M karakter), AI Search (EXA/Tavily per request).

### Harga teks terpilih (input / output per M token)

| Model | Context | Input | Output |
| --- | --- | --- | --- |
| DeepSeek V4.1 Flash | 1M | $0.3 (cache $0.006) | $1.2 |
| DeepSeek V4 Flash | 1M | $0.14 (cache $0.028) | $0.28 |
| DeepSeek V4 Pro | 1M | $1.6 (cache $0.135) | $3.2 |
| DeepSeek V4 Pro 0813 | 1M | $1.32 (cache $0.044) | $3.96 |
| GLM 5.3 | 1M | $1.4 (cache $0.26) | $4.4 |
| GLM 5.3 Flash | 1M | $0.15 (cache $0.03) | $0.5 |
| Kimi K3 | 1M | $3 (cache $0.3) | $15 |
| Kimi K2.7 Code | 256K | $0.95 (cache $0.19) | $4 |
| Qwen3.8 Flash | 977K | $0.15 (cache $0.016) | $0.47 |
| Qwen3.8 Max | 977K | $2 (cache $0.25) | $6 |
| Qwen3.7 Max | 977K | $1.25 (cache $0.25) | $3.75 |
| MiMo V2.6 Flash | 1M | $0.14 (cache $0.0028) | $0.28 |
| MiMo V2.6 Pro | 1M | $0.435 (cache $0.0036) | $0.87 |
| Hy3 (Tencent) | 256K | $0.14 (cache $0.035) | $0.58 |
| Hy4 Preview (Tencent) | 977K | $0.834 (cache $0.042) | $2.501 |
| OpenAI GPT OSS 120B | 128K | $0.05 | $0.25 |
| Gemma 4 31B | 256K | $0.14 | $0.4 |
| MiniMax M2.7 | 200K | $0.3 (cache $0.06) | $1.2 |
| Step 3.7 Flash | 256K | $0.2 (cache $0.04) | $1.15 |
| Ling 3.1 Flash | 256K | Free | Free |
| Ling 3.0 Flash Sante | 256K | Free | Free |

## Notable quotes

> "200+ models, on-demand GPUs, and secure agent runtimes — unified under one API. Free to start, scales as you grow."

> "Batch inference is available at an introductory 50% discount on input and output tokens for supported models."

## What this changes

- Entitas [Novita](../entities/novita.md) dibuat; melengkapi [Layanan Akses Model](../concepts/model-access-services.md).
- Menambah bukti paritas harga lintas penyedia untuk model yang sama (lihat juga [katalog Token Harbor](../entities/token-harbor-model-catalog.md) dan [OpenCode Zen](../entities/opencode-zen.md)).
- Tidak ada kontradiksi.

## Related

- [Novita](../entities/novita.md)
- [Novita — Rate Limits](novita-rate-limits.md)
- [Layanan Akses Model](../concepts/model-access-services.md)
