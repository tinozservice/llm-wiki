---
title: "GroqCloud — Free Limits"
type: source
created: 2026-10-01
updated: 2026-10-01
sources: []
tags: [groq, rate-limits, free]
---

# GroqCloud — Free Limits

- **Sumber**: Groq — halaman Limits organisasi (konsol)
- **Penulis**: tidak dicantumkan
- **URL**: <https://console.groq.com/settings/limits>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-01
- **Berkas mentah**: `raw/2026/oktober/01/GroqCloud - free limits.md`

## TL;DR

Limit organisasi saat ini untuk tier Free GroqCloud: model chat besar dibatasi **30 RPM / 1K RPD / 8K TPM / 200K TPD**; Whisper **20 RPM / 2K RPD / 7,2K ASH / 28,8K ASD**; Orpheus TTS **10 RPM / 100 RPD / 1,2K TPM / 3,6K TPD**. Limit dapat dikustomisasi per proyek; upgrade ke Developer memberi limit lebih tinggi.

## Key points

- Halaman ini menampilkan **limit aktual organisasi** (default Free); "These can be customized per project."
- Chat Completions mencakup `allam-2-7b`, prompt guard, gpt-oss-120b/20b/safeguard, qwen3.8-27b.

| Model | RPM | RPD | TPM | TPD |
| --- | --- | --- | --- | --- |
| allam-2-7b | 30 | 7K | 6K | 500K |
| llama-prompt-guard-2-22m | 30 | 14.4K | 15K | 500K |
| llama-prompt-guard-2-86m | 30 | 14.4K | 15K | 500K |
| openai/gpt-oss-120b | 30 | 1K | 8K | 200K |
| openai/gpt-oss-20b | 30 | 1K | 8K | 200K |
| openai/gpt-oss-safeguard-20b | 30 | 1K | 8K | 200K |
| qwen/qwen3.8-27b | 30 | 1K | 8K | 200K |
| whisper-large-v3 | 20 | 2K | 7.2K ASH | 28.8K ASD |
| whisper-large-v3-turbo | 20 | 2K | 7.2K ASH | 28.8K ASD |
| orpheus-arabic-saudi | 10 | 100 | 1.2K | 3.6K |
| orpheus-v1-english | 10 | 100 | 1.2K | 3.6K |

## Notable quotes

> "Base rate limits for your organization. These can be customized per project. On Developer plan, you get higher limits and can request additional limit increases."

## What this changes

- Melengkapi entitas [Groq](../entities/groq.md) dengan limit tier Free.
- Tidak ada kontradiksi: angkanya sama dengan "base Developer" di dokumen rate limit — kemungkinan dokumentasi menampilkan limit dasar yang sama sebelum peningkatan.

## Related

- [Groq](../entities/groq.md)
- [Groq — Rate Limits](groq-rate-limits.md)
