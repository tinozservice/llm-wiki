---
title: "DeepSeek — Models & Pricing"
type: source
created: 2026-10-08
updated: 2026-10-08
sources: []
tags: [deepseek, api, pricing, model]
---

# DeepSeek — Models & Pricing

- **Sumber**: api-docs.deepseek.com/quick_start/pricing
- **Penulis**: DeepSeek AI
- **URL**: <https://api-docs.deepseek.com/quick_start/pricing>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-08
- **Berkas mentah**: `raw/2026/oktober/08/DeepSeek Docs. Models & Pricing  DeepSeek API Docs.md`

## TL;DR

Platform DeepSeek menjual **dua model**: `deepseek-flash` (**DeepSeek-V4.1-Flash**) dan `deepseek-v4-pro` (**DeepSeek-V4-Pro-0813**) — keduanya **konteks 1M**, max output **384K**, thinking mode default, dan mendukung **Responses API + Anthropic API**. Tarif **off-peak = setengah peak** (peak: 01:00–04:00 & 06:00–10:00 UTC, Sen–Jum non-libur Tiongkok).

## Harga per 1M token (USD)

| | Flash | V4 Pro |
| --- | --- | --- |
| Input cache **hit** (off-peak / peak) | $0.003 / $0.006 | $0.022 / $0.044 |
| Input cache **miss** (off-peak / peak) | $0.15 / $0.30 | $0.66 / $1.32 |
| Output (off-peak / peak) | $0.60 / $1.20 | $1.98 / $3.96 |
| Concurrency limit | 2.500 | 500 |

## Key points

- Nama lama `deepseek-v4-flash` & `deepseek-v4-flash-vision-exp` masih diterima tetapi **model-nya sudah pensiun** — dilayani V4.1-Flash dan ditagih harga Flash.
- Fitur: JSON Output, Tool Calls, Responses API, Anthropic API, Chat Prefix Completion (beta) — keduanya; **FIM** hanya non-thinking; **Vision hanya Flash**.
- Dua base URL: OpenAI format `https://api.deepseek.com` dan **Anthropic format `https://api.deepseek.com/anthropic`**.
- Penagihan: token × harga; saldo hibah dipakai lebih dulu dari saldo top-up; harga dapat berubah.

## Notable quotes

> "Off-peak rates are half of the peak rates."

## What this changes

- Entitas [DeepSeek](../entities/deepseek.md) dibuat; melengkapi baris katalog model di [Layanan Akses Model](../concepts/model-access-services.md).
- Tidak ada kontradiksi.

## Related

- [DeepSeek](../entities/deepseek.md)
- [DeepSeek — Rate Limit](deepseek-rate-limits.md) · [DeepSeek — First API Call](deepseek-first-api-call.md)
