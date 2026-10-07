---
title: "Free, Unlimited OpenAI API (tutorial)"
type: source
created: 2026-10-07
updated: 2026-10-07
sources: []
tags: [puter, tutorial, openai, gpt]
---

# Free, Unlimited OpenAI API (tutorial)

- **Sumber**: Puter developer — tutorial *Free, Unlimited OpenAI API*
- **Penulis**: Nariman Jelveh; Reynaldi Chernando; Puter Technologies Inc.
- **URL**: <https://developer.puter.com/tutorials/free-unlimited-openai-api/>
- **Tanggal publikasi**: 2026-09-30; klip dibuat 2026-10-07
- **Berkas mentah**: `raw/2026/oktober/07/puter developer tutorial. Free, Unlimited OpenAI API.md`

## TL;DR

Tutorial paling lengkap soal lineup OpenAI via Puter.js: **keluarga GPT-6** (Astra/Sol/Luna + varian Pro), GPT Image 2.5, codex, GPT-OSS dengan reasoning, TTS, tool calling, dan web search — semua tanpa API key. Plus daftar resmi model yang didukung.

## Key points

- **Keluarga GPT-6**: `gpt-6-astra` (flagship — reasoning kompleks, coding, computer use), `gpt-6.1-sol` (mid-tier — fitur/rebuild/debug; update dari GPT-6 Sol dengan harga sama), `gpt-6-luna` (terkecil/murah — volume tinggi). Setiap tier punya **varian Pro** (reasoning effort pro) dengan **harga sama** untuk GPT-6: konteks **1.050.000 token**, output maks **128.000** — berbeda dari GPT-5.4/5.5 Pro yang lebih mahal. Astra ~5× harga Sol per token.
- **GPT Image**: `gpt-image-2.5-flare`, `gpt-image-2.5-sunburst`, `gpt-image-2`, `gpt-image-1.5` (via `puter.ai.txt2img()`).
- **TTS OpenAI**: `gpt-4o-mini-tts`, `tts-1`, `tts-1-hd`.
- **Contoh**: text gen (`gpt-5.4-nano`), image gen, analisis gambar, streaming, `temperature` & `max_tokens`, **tool/function calling** (kalkulator), **web search** (`tools: [{ type: "web_search" }]`), TTS, **GPT-OSS 120B** dengan pembacaan `part.reasoning`, codegen **`gpt-5.3-codex`**.
- **Daftar model teks resmi** (±45): dari `gpt-6.1-sol` sampai `o4-mini` (termasuk keluarga 5.1–5.6 dan codex).
- Pembanding: OpenAI kini **tanpa trial credit** — API key baru mulai dari nol.

## Notable quotes

> "In the GPT-6 family, the number marks the generation, while the name marks the capability tier."

> "OpenAI has not documented what separates a pro variant from its base model beyond the reasoning setting, so if you are choosing between them, test both on your own prompts rather than assuming Pro is better."

## What this changes

- **Koneksi katalog**: `gpt-image-2.5-flare`/`sunburst` & GPT-6 Luna juga muncul di katalog [Tokenra](../entities/tokenra.md) (image $0.02/request) dan [Token Harbor](../entities/token-harbor.md)/[OpenCode Zen](../entities/opencode-zen.md) — pertama kalinya namanya muncul dari sisi OpenAI resmi via Puter.
- Detail teknis baru: konteks 1.050.000 token keluarga GPT-6 (dibanding katalog lain yang tidak mencantumkan konteks untuk model ini).
- Catatan angka: tutorial menyebut "500+" di intro tapi halaman lain "400+" — inkonsistensi dicatat di [Free LLM API](puter-tutorial-free-llm-api.md).
- Tidak ada kontradiksi.

## Related

- [Puter](../entities/puter.md)
- [Puter docs — AI](puter-docs-ai.md)
- [Puter tutorial — Free LLM API](puter-tutorial-free-llm-api.md)
- [Tokenra](../entities/tokenra.md)
- [Token Harbor](../entities/token-harbor.md)
