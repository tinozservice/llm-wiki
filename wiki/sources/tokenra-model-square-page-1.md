---
title: "Tokenra — Model Square (Halaman 1)"
type: source
created: 2026-10-03
updated: 2026-10-03
sources: []
tags: [tokenra, gateway, models, pricing]
---

# Tokenra — Model Square (Halaman 1)

- **Sumber**: Tokenra — halaman harga, "Model Square" halaman 1 dari 2
- **Penulis**: tokenra.io
- **URL**: <https://tokenra.io/pricing>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-03
- **Berkas mentah**: `raw/2026/oktober/03/tokenra Model Square (page 1).md`

## TL;DR

**Tokenra** adalah *unified AI API gateway and admin dashboard* dengan **37 model**. Halaman pertama memuat model teks (beberapa varian diskon 50%) dan dua model image. Harga per 1M token, model tertentu per request. Yang menonjol: `deepseek-v4.1-flash-50off` ($0.09/$0.36), `glm-5.3-flash-discounted` ($0.05/$0.165), `mimo-v2.5` ($0.07/$0.14), dan beberapa model gratis ($0).

## Key points

- Varian **diskon** eksplisit: `kimi-k3-50off`, `deepseek-v4.1-flash-50off`, `glm-5.3-flash-discounted`, `omen-alpha` (60% OFF).
- Model gratis di halaman ini: `union-alpha-free2`, `ox-alpha-2` ($0/$0).
- Model image: `gpt-image-2.5-flare`, `gpt-image-2.5-sunburst` — **$0.02/request**.
- Deskripsi `deepseek-v4.1-flash`: "interim build ... closed beta ... native multimodal".
- Harga Tokenra umumnya **lebih murah** dari katalog Token Harbor untuk model yang sama (mis. GLM-5.3 Flash $0.14/$0.52 vs $0.15/$0.5; DeepSeek V4.1 Flash interim $0.37/$1.49).

| Model | Input /1M | Output /1M | Cached |
| --- | --- | --- | --- |
| kimi-k3-50off | $1.4925 | $7.4627 | $0.1493 |
| deepseek-v4.1-flash-50off | $0.09 | $0.36 | $0.0018 |
| deepseek-v4.1-flash | $0.37 | $1.49 | $0.04 |
| deepseek-v4-flash | $0.15 | $0.30 | $0.03 |
| deepseek-v4-flash-0731-fast | $0.42 | $0.84 | $0.11 |
| mimo-v2.5 | $0.07 | $0.14 | $0.002 |
| qwen3.8-flash | $0.08 | $0.235 | $0.01 |
| qwen3.8-omni-flash | $0.23 | $0.76 | $0.03 |
| kimi-k2.8-preview | $0.8 | $3.35 | $0.14 |
| glm-5.3-flash | $0.14 | $0.52 | $0.04 |
| glm-5.3-flash-discounted | $0.05 | $0.165 | $0.01 |
| glm-5.3-flashx | $0.49 | $1.63 | $0.10 |
| omen-alpha | $0.13 | $0.50 | $0.03 |
| hy4-preview | $1.02 | $3.04 | $0.05 |
| minimax-m3 | $0.38 | $1.50 | — |
| jev-latest | $0.042 | $0.042 | — |
| union-alpha-free2 / ox-alpha-2 | $0 | $0 | — |

## Notable quotes

> "Unified AI API gateway and admin dashboard."

## What this changes

- Entitas [Tokenra](../entities/tokenra.md) dibuat; gateway baru di [Layanan Akses Model](../concepts/model-access-services.md).
- Tidak ada kontradiksi; harga murah adalah varian diskon yang khas gateway.

## Related

- [Tokenra](../entities/tokenra.md)
- [Tokenra — Model Square (Halaman 2)](tokenra-model-square-page-2.md)
