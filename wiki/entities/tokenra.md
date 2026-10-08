---
title: Tokenra
type: entity
created: 2026-10-03
updated: 2026-10-08
sources: [tokenra-model-square-page-1, tokenra-model-square-page-2, openrouter-jev-113]
tags: [tokenra, gateway, api, pricing]
---

# Tokenra

**Tokenra** adalah *unified AI API gateway and admin dashboard* (tokenra.io) dengan **37 model** dalam satu katalog. Harga per 1M token (atau per request untuk image), dengan beberapa varian **diskon eksplisit** dan model **gratis/anonymous** ([halaman 1](../sources/tokenra-model-square-page-1.md), [halaman 2](../sources/tokenra-model-square-page-2.md)).

## Katalog (cuplikan)

| Model | Input /1M | Output /1M | Catatan |
| --- | --- | --- | --- |
| kimi-k3-50off | $1.4925 | $7.4627 | cached $0.1493 |
| kimi-k3 | $2.54 | $12.69 | |
| deepseek-v4.1-flash-50off | $0.09 | $0.36 | cached $0.0018 |
| deepseek-v4.1-flash | $0.37 | $1.49 | interim build multimodal (beta) |
| deepseek-v4-flash | $0.15 | $0.30 | |
| glm-5.3 | $1.02 | $3.56 | |
| glm-5.3-flash-discounted | $0.05 | $0.165 | |
| glm-5.3-flashx | $0.49 | $1.63 | |
| qwen3.8-flash | $0.08 | $0.235 | |
| qwen3.8-max | $1.61 | $4.84 | |
| gemini-3.8-flash | $0.94 | $4.70 | |
| hy3 / hy4-preview | $0.14 / $1.02 | $0.57 / $3.04 | |
| step-5-preview | $1.62 | $4.63 | |
| omen-alpha | $0.13 | $0.50 | 60% OFF |
| ox-alpha | $0.14 | $0.52 | |
| minimax-m3 | $0.38 | $1.50 | |
| gpt-image-2.5-flare / sunburst | $0.02/request | — | image |
| seedance-2-0-mini / fast / pro | $2.44 / $5.15 / $6.85 | sama | video |
| artsdance-2-5-pro-260801 | $8.88 | $8.88 | video |
| union-alpha, space-bunny-alpha, stealth/ox-alpha, jev-router | $0 | $0 | gratis/anonymous |

## Catatan

- Beberapa model dijual dengan **harga lebih murah** dari katalog lain (mis. `kimi-k3` $2.54/$12.69 vs $3/$15 di Token Harbor; `glm-5.3` $1.02/$3.56 vs $1.4/$4.4) — kemungkinan strategi margin/diskonto.
- Model gratis termasuk "anonymous model" (`union-alpha`) dan `space-bunny-alpha` (bandingkan `Space Bunny Free` di OpenCode Zen).
- Nama model baru muncul: `omen-alpha`, `ox-alpha`, `jev-*`, `step-5-preview`, `seedance-*`, `artsdance-*`.
- **`jev-*` kini terjelaskan (8 Okt)**: `jev-latest` = alias resmi model keputusan **[Jev](jev.md)** (TypeSafe, $0.042/M input resmi — Tokenra menulis output $0.042, berbeda dari resmi $0); `jev-router` = **Jev Router** TypeSafe (router model, konteks 1M — lihat [OpenRouter](../sources/openrouter-jev-113.md), [Model Keputusan](../concepts/decision-models.md)).

## Open questions

- Siapa operator Tokenra dan dari mana model-model "alpha/anonymous" berasal? (Sebagian terjelaskan 8 Okt: `jev-router` = Jev Router dari [TypeSafe](typesafe.md)/[Jev](jev.md); model `*-alpha` masih belum jelas.)
- Apakah ada limit/rate limit dan dokumen API? (klip hanya halaman pricing)
- Apakah harga diskon (`-50off`, `-discounted`) berlaku permanen atau promo?

## Related

- [Tokenra — Model Square (Halaman 1)](../sources/tokenra-model-square-page-1.md)
- [Tokenra — Model Square (Halaman 2)](../sources/tokenra-model-square-page-2.md)
- [Jev](jev.md) — di balik `jev-latest`/`jev-router`.
- [OpenCode Zen](opencode-zen.md) — katalog gateway lain dengan model gratis.
- [Token Harbor](token-harbor.md) — pembanding harga.
- [Layanan Akses Model](../concepts/model-access-services.md)
- [Overview](../overview.md)
