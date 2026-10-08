---
title: "DeepSeek — Error Codes"
type: source
created: 2026-10-08
updated: 2026-10-08
sources: []
tags: [deepseek, api, errors]
---

# DeepSeek — Error Codes

- **Sumber**: api-docs.deepseek.com/quick_start/error_codes
- **Penulis**: DeepSeek AI
- **URL**: <https://api-docs.deepseek.com/quick_start/error_codes>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-08
- **Berkas mentah**: `raw/2026/oktober/08/DeepSeek Docs. Error Codes  DeepSeek API Docs.md`

## TL;DR

Tabel error API DeepSeek: **400** format tidak valid; **401** auth gagal; **402** saldo habis; **422** parameter tidak valid; **429** rate limit; **500** error server; **503** server overload. Unik: saran untuk 429 adalah "sementara pindah ke API penyedia LLM alternatif, seperti OpenAI".

## Key points

- 402 (Insufficient Balance) khas penagihan prabayar: cek saldo & top up.
- 429: "pace your requests reasonably" + switch provider sementara.
- 500/503: retry setelah jeda singkat.

## Notable quotes

> "We also advise users to temporarily switch to the APIs of alternative LLM service providers, like OpenAI." (untuk 429)

## What this changes

- Melengkapi [entitas DeepSeek](../entities/deepseek.md).
- Tidak ada kontradiksi.

## Related

- [DeepSeek](../entities/deepseek.md)
- [DeepSeek — Rate Limit](deepseek-rate-limits.md)
