---
title: "Groq — Rate Limits"
type: source
created: 2026-10-01
updated: 2026-10-01
sources: []
tags: [groq, rate-limits]
---

# Groq — Rate Limits

- **Sumber**: Groq — dokumentasi rate limit
- **Penulis**: tidak dicantumkan
- **URL**: <https://console.groq.com/docs/rate-limits>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-01
- **Berkas mentah**: `raw/groq - Rate Limits.md`

## TL;DR

Rate limit Groq diukur dengan **RPM, RPD, TPM, TPD, ASH, ASD** (serta ITPM/OTPM untuk sebagian organisasi). Limit berlaku **per organisasi**, bukan per pengguna; **token cached tidak dihitung**. Nilai di dokumen adalah **base limit untuk Developer plan** — limit persis per akun terlihat di halaman Limits. Pelanggaran mengembalikan `429` dengan header `retry-after`.

## Key points

- Unit: RPM/RPD (request), TPM/TPD (token), ASH/ASD (detik audio), ITPM/OTPM (token input/output per menit).
- **Cached tokens tidak dihitung** ke rate limit.
- Limit per organisasi; jenis limit mana pun yang lebih dulu tersentuh akan menghentikan request.
- TPM bisa terbelah menjadi ITPM/OTPM (lihat hover di halaman Limits).
- Header respons: `retry-after`, `x-ratelimit-limit-requests` (RPD), `x-ratelimit-limit-tokens` (TPM), `x-ratelimit-remaining-*`, `x-ratelimit-reset-*`.
- 429 Too Many Requests saat limit terlampaui; `retry-after` hanya muncul pada 429.

### Contoh model (base Developer)

| Model ID | RPM | RPD | TPM | TPD |
| --- | --- | --- | --- | --- |
| `openai/gpt-oss-120b` | 30 | 1K | 8K | 200K |
| `openai/gpt-oss-20b` | 30 | 1K | 8K | 200K |
| `openai/gpt-oss-safeguard-20b` | 30 | 1K | 8K | 200K |
| `qwen/qwen3.8-27b` | 30 | 1K | 8K | 200K |
| `meta-llama/llama-prompt-guard-2-22m` | 30 | 14.4K | 15K | 500K |
| `meta-llama/llama-prompt-guard-2-86m` | 30 | 14.4K | 15K | 500K |
| `whisper-large-v3` | 20 | 2K | — (7.2K ASH) | — (28.8K ASD) |
| `whisper-large-v3-turbo` | 20 | 2K | — (7.2K ASH) | — (28.8K ASD) |
| `canopylabs/orpheus-arabic-saudi` | 10 | 100 | 1.2K | 3.6K |
| `canopylabs/orpheus-v1-english` | 10 | 100 | 1.2K | 3.6K |

## Notable quotes

> "Cached tokens do not count towards your rate limits."

> "Rate limits apply at the organization level, not individual users. You can hit any limit type depending on which threshold you reach first."

## What this changes

- Melengkapi entitas [Groq](../entities/groq.md) dengan mekanisme rate limit.
- Tidak ada kontradiksi.

## Related

- [Groq](../entities/groq.md)
- [GroqCloud — Free Limits](groqcloud-free-limits.md)
- [Groq — Supported Models](groq-supported-models.md)
