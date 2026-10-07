---
title: "Free LLM API (tutorial)"
type: source
created: 2026-10-07
updated: 2026-10-07
sources: []
tags: [puter, tutorial, llm, model-access]
---

# Free LLM API (tutorial)

- **Sumber**: Puter developer — tutorial *Free LLM API*
- **Penulis**: Nariman Jelveh; Reynaldi Chernando; Puter Technologies Inc.
- **URL**: <https://developer.puter.com/tutorials/free-llm-api/>
- **Tanggal publikasi**: 2026-08-17; klip dibuat 2026-10-07
- **Berkas mentah**: `raw/2026/oktober/07/puter developer tutorial. Free LLM API.md`

## TL;DR

Panduan menjelaskan akses "gratis" ke ratusan LLM lewat Puter.js: **developer tidak membayar** karena setiap user menanggung biayanya (user-pays) — berbeda dari tawaran gratis provider lain yang habis di trial/rate limit. Menyertakan perbandingan jujur dengan Anthropic, OpenRouter, Google, dan OpenAI.

## Key points

- Contoh: GPT-5.4 Nano (`openai/gpt-5.4-nano`), Claude Sonnet 5 (`anthropic/claude-sonnet-5`), Gemini 3.1 Pro Preview (reasoning), streaming (Grok 4.7), analisis gambar.
- **Perbandingan provider gratis** (menurut tutorial):
  - **Anthropic** — kredit satu kali saat signup; habis → developer bayar per token.
  - **OpenRouter `:free`** — 50 req/hari & 20/menit; naik ke 1.000/hari setelah beli ≥$10 kredit; **request gagal tetap dihitung**. "Works for testing an integration, not for production traffic."
  - **Google Gemini** — tier gratis berulang untuk keluarga Flash; di-rate-limit per model; model Pro dikecualikan; **konten free-tier dipakai meningkatkan produk Google**.
  - **OpenAI** — tanpa tier gratis; prepaid sejak request pertama.
- Pola keempatnya sama: bagian gratis = trial/rate-limit; scaling = developer mulai membayar. Puter: biaya pindah ke tiap user, tetap $0 "at any number of users".
- Catatan angka: tutorial ini menyebut **400+ model** (bandingkan "500+ model" di halaman docs/backend — lihat *What this changes*).

## Notable quotes

> "All four share the same pattern. The free portion is a trial or a rate-limited tier, and scaling means the developer starts paying."

## What this changes

- Sumber terbaik di wiki untuk **perbandingan tawaran gratis** antar provider (angka konkret OpenRouter/Gemini/Anthropic/OpenAI) — memperkaya [Layanan Akses Model](../concepts/model-access-services.md).
- **Inkonsistensi angka**: "400+" (di sini & tutorial chatbot) vs "500+" (docs AI Gateway) — kemungkinan snapshot berbeda; dicatat.
- Tidak ada kontradiksi.

## Related

- [Puter](../entities/puter.md)
- [User-Pays Model](../concepts/user-pays-model.md)
- [Puter tutorial — Free, Unlimited OpenRouter API](puter-tutorial-openrouter.md)
- [Puter tutorial — Free, Unlimited Claude API](puter-tutorial-claude.md)
- [Layanan Akses Model](../concepts/model-access-services.md)
