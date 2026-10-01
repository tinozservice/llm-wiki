---
title: "Groq — Supported Models"
type: source
created: 2026-10-01
updated: 2026-10-01
sources: []
tags: [groq, models, pricing]
---

# Groq — Supported Models

- **Sumber**: Groq — dokumentasi model
- **Penulis**: tidak dicantumkan
- **URL**: <https://console.groq.com/docs/models>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-01
- **Berkas mentah**: `raw/2026/oktober/01/groq - Supported Models.md`

## TL;DR

Daftar model GroqCloud: produksi (gpt-oss-120b, gpt-oss-20b, Whisper, Llama 3.1 8B & 3.3 70B khusus Enterprise) dan preview (Qwen3.8-27B, MiniMax M2.7 Enterprise, Prompt Guard 2, Orpheus TTS, Safety GPT OSS 20B). Kecepatan unggulan: gpt-oss-20b ~1.000 t/s, gpt-oss-120b ~500 t/s, Qwen3.8-27B ~450 t/s.

## Key points

- **Produksi** ditujukan untuk lingkungan produksi; **preview** hanya untuk evaluasi dan bisa dihentikan sewaktu-waktu.
- Model Llama (8B/70B) dan MiniMax M2.7 berstatus **Enterprise** — harga "ContactSales".
- API kompatibel OpenAI; daftar model aktif via `GET /v1/models`.

### Model produksi

| Model | Kecepatan | Harga /1M token | Limit (Developer) | Context | Max completion |
| --- | --- | --- | --- | --- | --- |
| GPT OSS 120B | 500 t/s | $0.15 input / $0.60 output | 250K TPM · 1K RPM | 131.072 | 65.536 |
| GPT OSS 20B | 1.000 t/s | $0.075 / $0.30 | 250K TPM · 1K RPM | 131.072 | 65.536 |
| Whisper | — | $0.111 per jam | 200K ASH · 300 RPM | — | — |
| Whisper Large V3 Turbo | — | $0.04 per jam | 400K ASH · 400 RPM | — | — |
| Llama 3.1 8B | 560 t/s | ContactSales (Enterprise) | ContactSales | 131.072 | 131.072 |
| Llama 3.3 70B | 280 t/s | ContactSales (Enterprise) | ContactSales | 131.072 | 32.768 |

### Model preview

| Model | Kecepatan | Harga | Limit (Developer) | Context |
| --- | --- | --- | --- | --- |
| Qwen3.8-27B | 450 t/s | $0.80 / $4.00 | 250K TPM · 1K RPM | 131.072 |
| MiniMax M2.7 | 260 t/s | ContactSales (Enterprise) | ContactSales | 196.608 |
| Safety GPT OSS 20B | 1.000 t/s | $0.075 / $0.30 | 150K TPM · 1K RPM | 131.072 |
| Prompt Guard 2 22M | — | $0.03 / $0.03 | 30K TPM · 100 RPM | 512 |
| Prompt Guard 2 86M | — | $0.04 / $0.04 | 30K TPM · 100 RPM | 512 |
| Orpheus Arabic Saudi (TTS) | — | $40 per 1M karakter | 50K TPM · 250 RPM | 4.000 |
| Orpheus V1 English (TTS) | — | $22 per 1M karakter | 50K TPM · 250 RPM | 4.000 |

## Notable quotes

> "Production models are intended for use in your production environments. They meet or exceed our high standards for speed, quality, and reliability."

> "Preview models are intended for evaluation purposes only and should not be used in production environments as they may be discontinued at short notice."

## What this changes

- Melengkapi entitas [Groq](../entities/groq.md) dengan lineup & harga model.
- Tidak ada kontradiksi.

## Related

- [Groq](../entities/groq.md)
- [Groq — Rate Limits](groq-rate-limits.md)
- [GroqCloud — Free Limits](groqcloud-free-limits.md)
