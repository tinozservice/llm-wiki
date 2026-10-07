---
title: "Puter developer — Speech to Text API"
type: source
created: 2026-10-07
updated: 2026-10-07
sources: []
tags: [puter, ai, speech-to-text]
---

# Puter developer — Speech to Text API

- **Sumber**: Puter developer — halaman produk *Speech to Text*
- **Penulis**: Puter Technologies Inc.
- **URL**: <https://developer.puter.com/speech-to-text/>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-07
- **Berkas mentah**: `raw/2026/oktober/07/puter developer. Speech to Text API.md`

## TL;DR

Halaman produk transkripsi: `puter.ai.speech2txt()` dengan model **GPT-4o Transcribe**, **Whisper**, dan model **diarization** — satu API, tanpa key/server, user-pays.

## Key points

- **Speaker diarization**: identifikasi siapa berbicara (rapat, wawancara, podcast) — `model: "gpt-4o-transcribe-diarize"`, `response_format: "diarized_json"`.
- Output bisa **SRT subtitle** (`response_format: "srt"`).
- Input: file audio (Blob/File) atau URL.
- Use case: transkripsi rapat, catatan podcast, wawancara, voice note, subtitle, aksesibilitas, asisten suara.

## Notable quotes

> "Standard and advanced transcription engines. … No vendor lock-in."

## What this changes

- Melengkapi [docs AI](puter-docs-ai.md): nama model & format output transkripsi (diarized JSON, SRT).
- Tidak ada kontradiksi.

## Related

- [Puter](../entities/puter.md)
- [Puter docs — AI](puter-docs-ai.md)
- [Puter developer — Text to Speech API](puter-dev-text-to-speech.md)
