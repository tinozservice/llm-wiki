---
title: "Puter docs — AI"
type: source
created: 2026-10-07
updated: 2026-10-07
sources: []
tags: [puter, puterjs, ai, multimodal]
---

# Puter docs — AI

- **Sumber**: Puter.js documentation — halaman *AI*
- **Penulis**: Puter Technologies Inc.
- **URL**: <https://docs.puter.com/AI/>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-07
- **Berkas mentah**: `raw/2026/oktober/07/puter docs. AI.md`

## TL;DR

Hub dokumentasi fitur AI Puter.js: chat, text-to-image, image-to-text (OCR), text-to-speech, voice changer (speech-to-speech), text-to-video, dan speech-to-text — semuanya lewat namespace `puter.ai.*` dan dapat diuji tanpa kredit dengan *test mode*.

## Key points

- **Fitur**: AI Chat · Text to Image · Image to Text · Text to Speech · Voice Changer · Text to Video · Speech to Speech · Speech to Text.
- **Daftar fungsi**:
  - `puter.ai.chat()` — chat dengan Claude, GPT, dan lain-lain.
  - `puter.ai.listModels()` / `listModelProviders()` — daftar model & provider yang tersedia.
  - `puter.ai.txt2img()` — generate gambar dari teks (contoh mendukung *image-to-image*).
  - `puter.ai.img2txt()` — ekstraksi teks dari gambar (OCR).
  - `puter.ai.txt2speech()` + `listEngines()` / `listVoices()` — TTS dan daftar suara.
  - `puter.ai.speech2speech()` — ubah suara (contoh: `eleven_multilingual_sts_v2`).
  - `puter.ai.txt2vid()` — video pendek dari teks/gambar referensi dengan **Wan, Seedance, Veo**, dsb.
  - `puter.ai.speech2txt()` — transkripsi audio.
- **Test mode**: `txt2img(text, true)` dan `txt2vid(text, true)` mengembalikan contoh tanpa memakai kredit.
- **User-pays**: tidak perlu API key/top-up sendiri karena user menutup biaya AI-nya masing-masing.
- Playground menyediakan contoh untuk GPT-6 Luna, Claude Sonnet, DeepSeek, Gemini, Grok, Veo, dan lainnya.

## Notable quotes

> "And with the User-Pays Model, you don't have to set up your own API keys and top up credits, because users cover their own AI costs."

## What this changes

- Melengkapi gambaran kapabilitas AI [Puter](../entities/puter.md) (multimodal lengkap: teks, gambar, audio, video).
- Dibuat: [Puter](../entities/puter.md).
- Tidak ada kontradiksi.

## Related

- [Puter](../entities/puter.md)
- [Puter — AI Gateway](puter-ai-gateway.md)
- [Puter.js Documentation (indeks)](puter-docs-puterjs.md)
- [Puter docs — User-Pays Model](puter-docs-user-pays.md)
