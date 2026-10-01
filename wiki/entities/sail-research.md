---
title: Sail Research
type: entity
created: 2026-10-01
updated: 2026-10-01
sources: [sailresearch-pricing, sailresearch-models]
tags: [sailresearch, inference, sailbox, completion-windows]
---

# Sail Research

**Sail Research** adalah penyedia inferensi per token dengan dua produk: **API model** (dengan *completion windows*) dan **Sailbox** (sandbox komputasi). Pembedanya: "Sail does not requantize weights" — model Reference disajikan persis seperti rilis aslinya ([sumber models](../sources/sailresearch-models.md)).

## Completion windows

Harga per token bergantung pada jendela penyelesaian: **Default (ASAP)** termahal/tercepat, **Balanced**, dan **Flex** termurah (latensi lebih longgar). Contoh ([sumber pricing](../sources/sailresearch-pricing.md)):

| Model | Default (ASAP) | Flex | Rasio |
| --- | --- | --- | --- |
| Kimi K3 | $2.50 / $12.50 | $1.25 / $6.25 | 2× |
| GLM-5.3 | $0.98 / $3.08 | $0.40 / $1.80 | ~2.5× |
| GLM-5.3-Flash | $0.11 / $0.35 | $0.05 / $0.18 | ~2.2× |
| DeepSeek V4.1 Flash | $0.15 / $0.60 | $0.08 / $0.30 | ~1.9× |
| DeepSeek V4 Flash 0731 | $0.09 / $0.18 | $0.05 / $0.09 | 1.8× |

## Katalog model

- Context hingga **1M token**: Kimi K3 (2,8T/104B MoE), GLM-5.3 (753B/40B), DeepSeek V4.1 Flash (552B/16B), DeepSeek V4 Pro 0813 (1,65T/49B), DeepSeek V4 Flash 0731 (284B/13B).
- Lainnya: Kimi-K2.6 (1T/32B), Gemma 4 31B & 12B, gpt-oss-120b (117B/5,1B), Qwen3.6 35B A3B (flex-only).
- GLM-5.3-Flash memakai expert NVFP4 + bobot lain FP8 (pengecualian "Reference").
- Semua bobot ditautkan ke Hugging Face (Reference checkpoints).

## Sailbox

Sandbox dengan tagihan per jam: vCPU $0.015; RAM $0.008/GiB; NVMe $0.0007/GiB; volume $0.000411/GiB; biaya pembuatan S/M/L $0.005/$0.01/$0.012 (waived Pro/Enterprise). Hanya dihitung saat berjalan (kecuali volume).

## Plans

- **Free**: $5 kredit gratis dengan metode pembayaran; 4 seat; 100 Sailbox konkuren.
- **Pro $100/bulan**: $100 kredit + $150 bulan pertama; 5.000 Sailbox konkuren; US-only +20%; prioritas.
- **Enterprise**: harga volume; HIPAA; SLA; US-only +10%.

## Open questions

- Detail teknis "completion window" (bagaimana request dijadwalkan) tidak dijelaskan di klip.
- Apakah kredit plan berbeda dari saldo prepaid pay-as-you-go?
- Model apa lagi yang akan mendapat dukungan window (sumber menyebut penambahan berdasarkan demand).

## Related

- [Sail Research — Pricing (sumber)](../sources/sailresearch-pricing.md)
- [Sail Research — Models (sumber)](../sources/sailresearch-models.md)
- [Layanan Akses Model](../concepts/model-access-services.md)
- [Overview](../overview.md)
