---
title: Groq
type: entity
created: 2026-10-01
updated: 2026-10-01
sources: [groqcloud-plans, groq-billing-faqs, groq-rate-limits, groq-supported-models, groqcloud-free-limits]
tags: [groq, inference, api, rate-limits]
---

# Groq

**Groq** (GroqCloud) adalah platform inferensi API yang menonjolkan kecepatan token tinggi — mis. gpt-oss-20b ~1.000 t/s, gpt-oss-120b ~500 t/s — dengan API kompatibel OpenAI ([sumber model](../sources/groq-supported-models.md)).

## Plan

| Plan | Harga | Catatan |
| --- | --- | --- |
| Free | $0 | Limit dasar organisasi |
| Developer | Pay per token | Tanpa biaya di muka; ditagih akhir bulan / threshold progresif |
| Enterprise | Kustom | Solusi skala besar; sebagian model (Llama, MiniMax M2.7) khusus Enterprise |

## Billing (Developer)

- **Progressive billing**: invoice otomatis saat pemakaian kumulatif mencapai **$1, $10, $100, $500, $1.000**; setelah $1.000 lifetime, hanya tagihan bulanan ([billing FAQ](../sources/groq-billing-faqs.md)).
- **India**: $1, $10, lalu setiap kelipatan $100; $500/$1.000 tidak berlaku.
- Tagihan minimum **$0,50**.
- Metode: kartu kredit, rekening bank AS, SEPA debit.
- Fitur: Flex tier, Batch processing, Spend Limits; downgrade bisa (bayar invoice akhir dulu).

## Rate limits

- Unit: RPM, RPD, TPM, TPD, ASH/ASD (audio), ITPM/OTPM.
- Berlaku **per organisasi**; **token cached tidak dihitung**.
- Model chat utama: **30 RPM / 1K RPD / 8K TPM / 200K TPD** (Free; dokumen menyebutnya base Developer).
- 429 + header `retry-after` saat limit terlampaui.

## Model & harga

| Model | Status | Harga /1M token | Kecepatan |
| --- | --- | --- | --- |
| GPT OSS 120B | Produksi | $0.15 / $0.60 | 500 t/s |
| GPT OSS 20B | Produksi | $0.075 / $0.30 | 1.000 t/s |
| Qwen3.8-27B | Preview | $0.80 / $4.00 | 450 t/s |
| Safety GPT OSS 20B | Preview | $0.075 / $0.30 | 1.000 t/s |
| Prompt Guard 2 22M / 86M | Preview | $0.03 / $0.04 per 1M | — |
| Whisper (large-v3 / turbo) | Produksi | $0.111 / $0.04 per jam | — |
| Orpheus Arabic / English (TTS) | Preview | $40 / $22 per 1M karakter | — |
| Llama 3.1 8B, Llama 3.3 70B, MiniMax M2.7 | Enterprise | ContactSales | 560/280/260 t/s |

## Open questions

- Limit Free vs base Developer tampak identik di sumber; apakah Developer benar-benar menaikkan RPM default?
- Harga on-demand lengkap ada di halaman terpisah (tidak ada di klip).
- Ketersediaan model per region/tier tidak dijelaskan.

## Related

- [GroqCloud — Plans (sumber)](../sources/groqcloud-plans.md)
- [Groq — Billing FAQs (sumber)](../sources/groq-billing-faqs.md)
- [Groq — Rate Limits (sumber)](../sources/groq-rate-limits.md)
- [Groq — Supported Models (sumber)](../sources/groq-supported-models.md)
- [GroqCloud — Free Limits (sumber)](../sources/groqcloud-free-limits.md)
- [Layanan Akses Model](../concepts/model-access-services.md)
- [Overview](../overview.md)
