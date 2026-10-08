---
title: "OpenRouter — Jev 1.13 (API Pricing & Providers)"
type: source
created: 2026-10-08
updated: 2026-10-08
sources: []
tags: [openrouter, typesafe, jev, pricing]
---

# OpenRouter — Jev 1.13 (API Pricing & Providers)

- **Sumber**: Halaman model OpenRouter untuk `typesafe/jev-1.13`
- **Penulis**: TypeSafe / openrouter.ai
- **URL**: <https://openrouter.ai/typesafe/jev-1.13>
- **Tanggal publikasi**: 2026-09-18; klip dibuat 2026-10-08
- **Berkas mentah**: `raw/2026/oktober/08/openrouter Jev 1.13 - API Pricing & Providers.md`

## TL;DR

Listing OpenRouter untuk Jev 1.13: **$0.042/M input, output gratis**; satu provider (forward langsung, tanpa routing); latensi **0.18 s**; uptime 3-hari **100%**, availability 99.91%; volume 63,7B token prompt / 4,5B completion. Halaman ini juga menyingkap dua model TypeSafe lain: **Jev Router** dan **Jev Latest**.

## Key points

- Harga efektif tertimbang: **$0.04183/M input; $0/M output** (100% token share satu provider).
- Performa: latency 0.18s (P50, provider terbaik); tipe output modalitas = **Decisions**.
- **Jev Router** (`openrouter.ai/typesafe/jev-router`): "picks the best model and reasoning effort for each request, balancing quality, speed, and cost. It runs on Jev… adapts as your conversation evolves. One endpoint gives you the whole model ecosystem" — konteks **1M**. Menjelaskan listing `jev-router` gratis di [Tokenra](../entities/tokenra.md).
- **Jev Latest** (`~typesafe/jev-latest`): "always redirects to the latest model in the Jev family" — modalitas Decisions.
- Dokumentasi & cookbook OpenRouter untuk Jev: tutorial, guide, TypeSafe SDK, gate tool calls, auto-approve permission coding agent, klasifikasi komentar, verified cascade, Jev Lab.
- Catatan konteks: halaman ini menulis **32K** (vs 64k/32k di docs resmi — kemungkinan penyederhanaan OpenRouter; dicatat).

## Notable quotes

> "Jev Router picks the best model and reasoning effort for each request, balancing quality, speed, and cost."

## What this changes

- Memperluas [Jev](../entities/jev.md) (ketersediaan di OpenRouter + varian Router/Latest).
- [Tokenra](../entities/tokenra.md): `jev-router` & `jev-latest` kini punya penjelasan vendor.
- Tidak ada kontradiksi.

## Related

- [Jev](../entities/jev.md) · [TypeSafe](../entities/typesafe.md)
- [OpenRouter — Decisions Models](openrouter-decisions-models.md)
- [OpenCode Zen](../entities/opencode-zen.md)
