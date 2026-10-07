---
title: "Puter — AI Gateway"
type: source
created: 2026-10-07
updated: 2026-10-07
sources: []
tags: [puter, ai-gateway, models]
---

# Puter — AI Gateway

- **Sumber**: Puter developer — halaman *AI Gateway: One API for 500+ AI Models*
- **Penulis**: Puter Technologies Inc.
- **URL**: <https://developer.puter.com/ai/>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-07
- **Berkas mentah**: `raw/2026/oktober/07/puter developer AI Gateway One API for 500+ AI Models.md`

## TL;DR

Halaman produk AI Gateway Puter: **500+ model** (GPT, Claude, Gemini, Grok, DeepSeek, Nano Banana, GPT Image, FLUX, …) diakses lewat satu API dari frontend — tanpa API key, tanpa server, dan dengan model **user-pays** sehingga developer bebas dari billing AI.

## Key points

- **Satu API untuk 500+ model**: termasuk model chat, image, dan video dari banyak provider.
- **Tanpa API key**: "Skip the sign-ups, key management, and credential juggling" — cukup pasang Puter.js.
- **User-pays**: user menutup biaya AI sendiri → developer tidak memikirkan billing, rate limit, atau tagihan tak terduga.
- **Client-side penuh**: tidak ada server yang perlu di-provision.
- **Kapabilitas**: chat, image generation, vision analysis, text-to-speech, speech-to-text, voice changing, OCR, text-to-video — semuanya dari library yang sama.
- **Cara pakai (2 langkah)**: pasang `<script src="https://js.puter.com/v2/">` (atau npm) → panggil `puter.ai.chat("...")`.

## Notable quotes

> "Access 500+ models, including GPT, Claude, Gemini, Grok, DeepSeek, Nano Banana, GPT Image, and FLUX, through a single API."

> "No API keys. No servers."

## What this changes

- **Gateway pertama di wiki dengan model pemakaian user-pays** — dimasukkan sebagai baris baru di [Layanan Akses Model](../concepts/model-access-services.md), melengkapi pola akses yang sudah ada (langganan, per token, kuota request).
- Dibuat: [Puter](../entities/puter.md), [User-Pays Model](../concepts/user-pays-model.md).
- Tidak ada kontradiksi.

## Related

- [Puter](../entities/puter.md)
- [Puter docs — AI](puter-docs-ai.md)
- [Puter docs — User-Pays Model](puter-docs-user-pays.md)
- [Layanan Akses Model](../concepts/model-access-services.md)
