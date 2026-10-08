---
title: "DeepSeek — Rate Limit & Isolation"
type: source
created: 2026-10-08
updated: 2026-10-08
sources: []
tags: [deepseek, api, rate-limit, isolation]
---

# DeepSeek — Rate Limit & Isolation

- **Sumber**: api-docs.deepseek.com/quick_start/rate_limit
- **Penulis**: DeepSeek AI
- **URL**: <https://api-docs.deepseek.com/quick_start/rate_limit>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-08
- **Berkas mentah**: `raw/2026/oktober/08/DeepSeek Docs. Rate Limit & Isolation  DeepSeek API Docs.md`

## TL;DR

DeepSeek membatasi **konkurensi** (bukan RPM/TPM): **2.500** koneksi untuk `deepseek-flash`, **500** untuk `deepseek-v4-pro` per akun — dihitung dari request dikirim hingga respons selesai, terlepas dari API key. Melebihi limit → HTTP **429**. Ekspansi kapasitas gratis lewat formulir.

## Key points

- **`user_id` isolation**: parameter opsional untuk manajemen per-user di sisi bisnis — (1) isolasi *content safety*, (2) isolasi **KVCache** untuk privasi, (3) isolasi *scheduling*; format string `[a-zA-Z0-9\-_]+` maks 512 char; jangan taruh data pribadi.
- Cara set: OpenAI Chat Completions → field `user_id` di body (SDK: `extra_body={"user_id": ...}`); Anthropic API → `metadata.user_id`.
- Akun dengan kuota konkurensi diperbesar: limit per-`user_id` = 2.500 (Flash) / 500 (Pro); akun biasa: semua user_id digabung.
- **Keep-alive**: request non-stream mengembalikan baris kosong berkala; streaming mengirim komentar SSE `: keep-alive`; jika inferensi belum mulai setelah **10 menit**, server menutup koneksi.

## Notable quotes

> "A request counts as one concurrent connection from the time it is sent until the model response is complete."

## What this changes

- Entitas [DeepSeek](../entities/deepseek.md) (isolasi & limit).
- Tidak ada kontradiksi.

## Related

- [DeepSeek](../entities/deepseek.md)
- [DeepSeek — Models & Pricing](deepseek-models-pricing.md)
