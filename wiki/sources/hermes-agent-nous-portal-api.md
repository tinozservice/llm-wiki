---
title: "Nous Portal — API Docs"
type: source
created: 2026-10-08
updated: 2026-10-08
sources: []
tags: [nous-portal, hermes, api, x402]
---

# Nous Portal — API Docs

- **Sumber**: portal.nousresearch.com/api-docs
- **Penulis**: hermes-agent
- **URL**: <https://portal.nousresearch.com/api-docs>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-08
- **Berkas mentah**: `raw/2026/oktober/08/Hermes Agent. Nous Portal. API Docs.md`

## TL;DR

**Nous Research Inference API 1.0.0** — API **OpenAI-compatible** di `https://inference-api.nousresearch.com/v1`. Autentikasi: (1) **API key + kredit/subscription**; atau (2) **x402 (beta)** — bayar per request dengan **Solana USDC**, tanpa akun/API key, tracking on-chain. Model yang didokumentasikan: keluarga **Hermes-4** (14B/70B/405B, 128k context).

## Key points

- x402: charge ditentukan **sebelum** eksekusi — wajib set `max_tokens` eksplisit; respons awal `402` berisi detail pembayaran; kirim ulang dengan header `X-PAYMENT`; ada surcharge kecil.
- Rate limit per tier (RPM/TPM): **Ultra 1.600/16 jt**; Super 800/8 jt; Plus 400/4 jt; default paid 180/720 rb; **Free 50/500 rb**.
- Model: `Hermes-4.3-36B`, `Hermes-4-70B`, `Hermes-4-405B` (semua 128k context); harga & capability di portal.
- Reasoning: Hermes 4/DeepHermes — pakai system prompt "deep thinking AI" dengan tag `<think>`; bisa prefill `<think>`; output di `reasoning_content` (Hermes 4 tanpa prefill) atau dalam tag (Deep Hermes 3 / dengan prefill).

## Notable quotes

> "The API supports payment via the x402 protocol using Solana USDC… No account registration or API key required."

## What this changes

- Entitas [Hermes Agent](../entities/hermes-agent.md) — detail API & model Nous.
- Skema pembayaran kripto (x402/USDC) = pola baru di [Layanan Akses Model](../concepts/model-access-services.md).
- Tidak ada kontradiksi.

## Related

- [Hermes Agent](../entities/hermes-agent.md)
- [Nous Portal — Models](hermes-agent-nous-portal-models.md) · [Nous Portal — Subscription](hermes-agent-nous-portal-subscription.md)
