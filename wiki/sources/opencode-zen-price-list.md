---
title: "OpenCode Zen — Daftar Harga Model"
type: source
created: 2026-10-01
updated: 2026-10-01
sources: []
tags: [opencode, zen, pricing, per-token]
---

# OpenCode Zen — Daftar Harga Model

- **Sumber**: OpenCode — Console, halaman "Models" (judul klip: "OpenCode Console")
- **Penulis**: tidak dicantumkan
- **URL**: <https://opencode.ai/console/wrk_redacted/models>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-01
- **Berkas mentah**: `raw/OpenCode ZEN Price.md`

## TL;DR

Halaman console OpenCode menampilkan katalog **81 model** dengan harga **per 1 juta token**: input, output, cache read, dan cache write. Ini adalah sisi *pay-as-you-go* ekosistem OpenCode — kemungkinan yang dimaksud "Zen" di FAQ halaman Go (nama berkas klip: "OpenCode ZEN Price") — berbeda dari langganan Go yang serba terbatas. Sembilan model berharga $0 (termasuk Space Bunny Free, LongCat 2.5 Preview Free, Muse Spark 1.3Free, dan dua model Nemotron). Rentang harga input dari $0.04 (Jev 1.13) sampai $30 (GPT-5.4 Pro / GPT-5.5 Pro); banyak model tidak mencantumkan harga cache write ("-").

## Key points

- **81 model** lintas keluarga: Claude, DeepSeek, Gemini, GLM, GPT, Grok, Jev, Kimi, Ling, LongCat, MiMo, MiniMax, Muse Spark, Nemotron, Qwen, plus Big Pickle.
- Harga per 1M token dengan kolom Input, Output, Cache Read, Cache Write; kolom "Features" dan "Enabled" kosong di klip.
- **Model gratis $0**: Big Pickle, Jev 1.13Free, Ling 3.0 Flash FinFree, LongCat 2.5 PreviewFree, MiMo-V2.6-FlashFree, Muse Spark 1.3Free, Nemotron 3 UltraFree, Nemotron 3.5 LightningFree, Space BunnyFree.
- **Termahal**: GPT-5.4 Pro dan GPT-5.5 Pro ($30 input / $180 output, cache read $30); Claude Fable 5, Claude Fable 5.1, dan GPT-6 Astra ($10/$50).
- **Termurah berbayar**: Jev 1.13 ($0.04 input; output tercantum $0.00), GPT-5 Nano ($0.05/$0.40), GPT-6 Luna ($0.10/$0.50), DeepSeek V4 Flash ($0.14/$0.28), GLM-5.3-Flash ($0.15/$0.50), Qwen3.8 Flash ($0.15/$0.47).
- Model yang juga muncul di lineup [OpenCode Go](../entities/opencode.md): Kimi K3, Qwen3.8 Max, Grok 4.7/4.6, GLM-5.3/5.2, DeepSeek V4 Pro, Kimi K2.7 Code, GPT 5.6 Luna, MiniMax M3/M2.7, GPT 6 Luna, Qwen3.8 Flash, GLM-5.3-Flash, DeepSeek V4 Flash (+Vision Exp), DeepSeek V4.1 Flash, MiMo-V2.6-Flash, Muse Spark 1.3/1.2, Space Bunny Free, LongCat 2.5 Preview Free.
- "Only enabled models will be available to members" — model harus diaktifkan dulu untuk anggota.
- Tabel lengkap dengan ID model dan semua harga ada di [OpenCode Zen](../entities/opencode-zen.md).

## Notable quotes

> "Only enabled models will be available to members. Prices per 1M tokens."

## What this changes

- Menjawab sebagian pertanyaan terbuka tentang **Zen**: Zen adalah katalog model per-token OpenCode (halaman console), terpisah dari langganan Go.
- Halaman dibuat: [OpenCode Zen](../entities/opencode-zen.md), halaman sumber ini; konsep [Layanan Akses Model](../concepts/model-access-services.md) (sebelumnya "Langganan Multi-Model") diperluas untuk mencakup akses per token.
- Halaman diperbarui: [OpenCode](../entities/opencode.md), [Token Harbor](../entities/token-harbor.md), [OpenCode Go](opencode-go.md), [Overview](../overview.md), [Index](../index.md), [Log](../log.md).
- Tidak ada kontradiksi. Harga di halaman ini adalah harga OpenCode Zen, bukan harga Token Harbor; keduanya tidak bisa disamakan tanpa konfirmasi.

## Related

- [OpenCode Zen](../entities/opencode-zen.md)
- [OpenCode](../entities/opencode.md)
- [Layanan Akses Model](../concepts/model-access-services.md)
- [Low cost coding models for everyone](opencode-go.md) — sumber langganan Go.
