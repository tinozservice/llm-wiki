---
title: "Sail Research — Pricing"
type: source
created: 2026-10-01
updated: 2026-10-01
sources: []
tags: [sailresearch, pricing, inference, sailbox]
---

# Sail Research — Pricing

- **Sumber**: Sail Research — dokumentasi harga (inference, Sailbox, plans)
- **Penulis**: tidak dicantumkan
- **URL**: <https://docs.sailresearch.com/pricing>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-01
- **Berkas mentah**: `raw/sailresearch - Pricing.md`

## TL;DR

Sail Research menjual inferensi per token dengan **completion windows** — Default (ASAP), Balanced, dan Flex yang lebih murah untuk latensi lebih longgar. Contoh: Kimi K3 $2.50/$12.50 (ASAP) turun ke $1.25/$6.25 (Flex); DeepSeek V4.1 Flash $0.15/$0.60 → $0.08/$0.30. Selain itu ada **Sailbox** (sandbox komputasi, dihitung per vCPU/RAM/disk per jam) dan plan **Pro $100/bulan** dengan kredit termasuk.

## Key points

- **Completion windows**: satu model, tiga jendela harga; Flex = termurah, Default (ASAP) = tercepat.
- Prompt caching implisit (prefix matching), bisa dibantu `prompt_cache_key`.
- Model core: Kimi K3, GLM-5.3, GLM-5.3-Flash, DeepSeek V4.1 Flash, DeepSeek V4 Pro 0813, DeepSeek V4 Flash 0731, Kimi-K2.6, Gemma 4 31B/12B (+NVFP4), gpt-oss-120b; flex-only: Qwen3.6 35B A3B.

### Harga core (input / cached / output per M token)

| Model | Default (ASAP) | Balanced | Flex |
| --- | --- | --- | --- |
| Kimi K3 | $2.50 / $0.25 / $12.50 | $2.00 / $0.20 / $10.00 | $1.25 / $0.15 / $6.25 |
| GLM-5.3 | $0.98 / $0.18 / $3.08 | $0.50 / $0.12 / $2.50 | $0.40 / $0.08 / $1.80 |
| GLM-5.3-Flash | $0.11 / $0.02 / $0.35 | $0.08 / $0.02 / $0.28 | $0.05 / $0.01 / $0.18 |
| DeepSeek V4.1 Flash | $0.15 / $0.006 / $0.60 | $0.12 / $0.005 / $0.48 | $0.08 / $0.004 / $0.30 |
| DeepSeek V4 Pro 0813 | $0.92 / $0.04 / $2.77 | $0.74 / $0.03 / $2.22 | $0.46 / $0.02 / $1.39 |
| DeepSeek V4 Flash 0731 | $0.09 / $0.02 / $0.18 | $0.07 / $0.02 / $0.14 | $0.05 / $0.01 / $0.09 |
| Kimi-K2.6 | $1.00 / $0.20 / $4.00 | $0.45 / $0.20 / $3.00 | $0.35 / $0.10 / $2.00 |
| Gemma 4 31B IT | $0.40 / $0.20 / $0.60 | $0.12 / $0.08 / $0.60 | $0.06 / $0.02 / $0.30 |
| Gemma 4 31B IT (NVFP4) | $0.14 / $0.07 / $0.40 | $0.11 / $0.06 / $0.32 | $0.07 / $0.04 / $0.20 |
| Gemma 4 12B IT | $0.30 / $0.15 / $2.00 | $0.10 / $0.07 / $2.00 | $0.05 / $0.02 / $1.00 |
| gpt-oss-120b | $0.06 / $0.03 / $0.40 | — | — |
| Qwen3.6 35B A3B | — | — | $0.05 / $0.02 / $0.40 (flex-only) |

### Sailbox (USD)

| Dimensi | Harga |
| --- | --- |
| vCPU/jam | $0.015 |
| RAM (GiB)/jam | $0.008 |
| NVMe (GiB)/jam | $0.0007 |
| Volume storage (GiB)/jam | $0.000411 |
| Pembuatan S / M / L | $0.005 / $0.01 / $0.012 (gratis untuk Pro & Enterprise) |

Pemakaian dihitung hanya saat Sailbox berjalan; volume storage tetap ditagih selama ada.

### Plans

- **Free**: $5 kredit gratis saat menambahkan metode pembayaran; hingga 4 seat; hingga 100 Sailbox konkuren.
- **Pro ($100/bulan)**: $100 kredit termasuk + tambahan $150 di bulan pertama; seat tak terbatas; hingga 5.000 Sailbox konkuren; biaya pembuatan waived; riwayat request diperluas; inferensi US-only +20% surcharge per token; dukungan prioritas.
- **Enterprise**: harga volume, HIPAA BAA, MSA/DPA, US-only +10%, SLA, bringup model kustom, Slack privat.

## Notable quotes

> "See Completion Windows for how to use `balanced` and `flex` for lower token prices."

> "Usage accrues only while a Sailbox is running."

## What this changes

- Entitas [Sail Research](../entities/sail-research.md) dibuat; memperkenalkan konsep **completion windows** ke [Layanan Akses Model](../concepts/model-access-services.md).
- Tidak ada kontradiksi; harga Token Harbor untuk DeepSeek V4.1 Flash off-peak ($0.15/$0.60) cocok dengan harga Default Sail, sementara Flex lebih murah lagi.

## Related

- [Sail Research](../entities/sail-research.md)
- [Sail Research — Models](sailresearch-models.md)
- [Layanan Akses Model](../concepts/model-access-services.md)
