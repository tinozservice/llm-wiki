---
title: "DeepSeek — Token & Token Usage"
type: source
created: 2026-10-08
updated: 2026-10-08
sources: []
tags: [deepseek, api, token]
---

# DeepSeek — Token & Token Usage

- **Sumber**: api-docs.deepseek.com/quick_start/token_usage
- **Penulis**: DeepSeek AI
- **URL**: <https://api-docs.deepseek.com/quick_start/token_usage>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-08
- **Berkas mentah**: `raw/2026/oktober/08/DeepSeek Docs. Token & Token Usage  DeepSeek API Docs.md`

## TL;DR

Rasio konversi kasar: **1 karakter Inggris ≈ 0,3 token; 1 karakter Tionghoa ≈ 0,6 token** (bervariasi per model; sumber kebenaran = `usage` yang dikembalikan API). Tersedia **tokenizer offline** (zip demo) dan estimasi token gambar (via halaman Vision).

## Key points

- Token = unit billing; bisa kata, angka, atau tanda baca.
- `deepseek_tokenizer.zip` untuk menghitung offline; token gambar diperkirakan dari dimensi (gambar di-resize otomatis; ada batas atas token per gambar).

## Notable quotes

> "The actual number of tokens processed each time is based on the model's return."

## What this changes

- Melengkapi [entitas DeepSeek](../entities/deepseek.md).
- Tidak ada kontradiksi.

## Related

- [DeepSeek](../entities/deepseek.md)
- [DeepSeek — Models & Pricing](deepseek-models-pricing.md)
