---
title: "OpenAI Dev — Checkout API (monetisasi plugin)"
type: source
created: 2026-10-08
updated: 2026-10-08
sources: []
tags: [openai, plugins, checkout, dev]
---

# OpenAI Dev — Checkout API (monetisasi plugin)

- **Sumber**: developers.openai.com/plugins/build/monetization
- **Penulis**: OpenAI
- **URL**: <https://developers.openai.com/plugins/build/monetization>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-08
- **Berkas mentah**: `raw/2026/oktober/08/OpenAI Dev. Checkout API reference – Plugins.md`

## TL;DR

Monetisasi plugin: pendekatan **disarankan & GA** = **external checkout** (pembelian di domain merchant sendiri; saat ini terbatas plugin barang fisik). **Embedded checkout dengan ChatGPT payment sheet** tersedia **private beta** untuk mitra marketplace terpilih — via `window.openai.requestCheckout(session)` (widget) + tool MCP **`complete_checkout`** (server). PSP yang didukung: **Adyen, Checkout.com, Fiserv, PayPal, Stripe, Worldpay**.

## Key points

- External checkout: user diarahkan keluar ChatGPT; pajak/refund/fulfillment di domain merchant.
- Checkout dengan **saved payment methods**: UI menampilkan metode tersimpan; **tidak** boleh mengumpulkan kredensial baru (itu domain payment sheet).
- Payment sheet flow: MCP tool mengembalikan session (line items, totals, provider) → widget render → `requestCheckout` → user bayar → `complete_checkout` menerima token metode pembayaran → PSP charge → order dikembalikan.
- **PCI DSS Level 1**: opsi menerima **raw payment methods** via Agentic Commerce Protocol Delegate Payment endpoint (card number/CVC/risk signals).
- Mode test: `payment_mode: "test"` + test card 4242; error `payment_declined`/`requires_3ds` tampil di sheet.

## Notable quotes

> "Plugin developers are responsible for choosing how to monetize their experience. Today, the recommended and generally available approach is to use external checkout."

## What this changes

- Konsep [Plugin ChatGPT & Codex](../concepts/chatgpt-plugins.md) (lapisan monetisasi).
- Tidak ada kontradiksi.

## Related

- [OpenAI](../entities/openai.md)
- [Quickstart](openai-dev-quickstart-plugins.md) · [Plugin Architecture](openai-dev-plugin-architecture.md)
