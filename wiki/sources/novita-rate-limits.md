---
title: "Novita — Rate Limits"
type: source
created: 2026-10-01
updated: 2026-10-01
sources: []
tags: [novita, rate-limits, tiers]
---

# Novita — Rate Limits

- **Sumber**: Novita AI — dokumentasi rate limit LLM
- **Penulis**: tidak dicantumkan
- **URL**: <https://docs.novita.ai/guides/llm-rate-limits>
- **Tanggal publikasi**: terakhir dimodifikasi 4 Agustus 2026; klip dibuat 2026-10-01
- **Berkas mentah**: `raw/novita Rate limits.md`

## TL;DR

Rate limit Novita diukur **per model** dalam RPM dan TPM, dan naik mengikuti **tier akun T1–T5** berdasarkan riwayat top-up 3 bulan terakhir. T1 = 30 RPM; T5 = 6.000 RPM untuk sebagian besar model. TPM umumnya **50.000.000 token/menit**. Tier T1 dicapai bila top-up bulanan ≤ $50; T5 bila ≥ $10.000 dalam salah satu dari 3 bulan terakhir.

## Key points

- **Tier**: T1 (≤$50), T2 (≥$50–≤$500), T3 (≥$500–≤$3.000), T4 (≥$3.000–≤$10.000), T5 (≥$10.000 dalam ≥1 bulan).
- RPM default per model: **30 / 100 / 1.000 / 3.000 / 6.000** (T1–T5) untuk mayoritas model; TPM 50M.
- Pengecualian: `tencent/hy3` RPM 30/100/200/500/1.000 dan TPM 5M–20M; beberapa model lama TPM 2M–6M di tier bawah (GLM-5, Kimi K2.5, GLM 4.7, MiniMax M2.1).
- Model premium/instruct lama bisa punya RPM lebih rendah di T5 (mis. Qwen3 Max 1.000, Kimi K2 Thinking 1.000, GLM 4.5 Air 1.000).
- Saat limit terlampaui: HTTP **429** + pesan rate limit; disarankan throttling, exponential backoff, dan pemantauan.
- Limit dihitung per model (bukan per akun total).

## Notable quotes

> "Each account has a default rate limit for model calls, measured in RPM (requests per model per minute) and TPM (tokens per model per minute)."

## What this changes

- Melengkapi entitas [Novita](../entities/novita.md) dengan mekanisme limit.
- Tidak ada kontradiksi.

## Related

- [Novita](../entities/novita.md)
- [Novita — Model Libraries & GPU Cloud](novita-model-libraries.md)
