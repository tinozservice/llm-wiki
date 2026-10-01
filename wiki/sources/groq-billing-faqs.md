---
title: "Groq — Billing FAQs"
type: source
created: 2026-10-01
updated: 2026-10-01
sources: []
tags: [groq, billing, pricing]
---

# Groq — Billing FAQs

- **Sumber**: Groq — dokumentasi billing
- **Penulis**: tidak dicantumkan
- **URL**: <https://console.groq.com/docs/billing-faqs>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-01
- **Berkas mentah**: `raw/2026/oktober/01/groq - Billing FAQs.md`

## TL;DR

Model billing Groq: tier **Free**, **Developer** (pay-per-token), dan **Enterprise**. Upgrade ke Developer tidak langsung menagih; tagihan muncul di akhir bulan atau saat melewati **threshold progresif $1, $10, $100, $500, $1.000**. Setelah belanja kumulatif melewati $1.000, penagihan hanya bulanan. Pelanggan India memakai pola berbeda ($1, $10, lalu $100 berulang). Tagihan minimum $0,50.

## Key points

- **Progressive billing**: invoice otomatis saat pemakaian kumulatif menyentuh $1/$10/$100/$500/$1.000; setelah $1.000 lifetime → tagihan bulanan saja.
- **India**: threshold $1, $10, lalu setiap kelipatan $100; $500/$1.000 tidak berlaku.
- Jika threshold tidak tercapai, pemakaian ditagih di akhir siklus bulanan.
- **Hanya menagih jika total ≥ $0,50**; kurang dari itu tidak ada aksi.
- Metode pembayaran: kartu kredit (Visa/MasterCard/Amex/Discover), rekening bank AS, SEPA debit.
- Benefit Developer: limit token lebih tinggi, chat support, Flex tier, Batch processing, Spend Limits.
- **Downgrade** kapan saja; invoice terakhir untuk pemakaian tersisa harus dibayar dulu; setelah downgrade kembali ke limit Free.
- Spend limits & alert tersedia; pemantauan usage di dashboard.
- Refund case-by-case; sengketa tagihan via support@groq.com; pembayaran gagal bisa menyebabkan suspend.
- Kredit promosi sesekali tersedia (hackathon/acara).

## Notable quotes

> "When you first start using Groq on the Developer plan, your billing follows a progressive billing model. In this model, an invoice is automatically triggered and payment is deducted when your cumulative usage reaches specific thresholds: $1, $10, $100, $500, and $1,000."

> "We only bill you once your usage has reached at least $0.50."

## What this changes

- Melengkapi entitas [Groq](../entities/groq.md) dengan mekanisme billing.
- Tidak ada kontradiksi.

## Related

- [Groq](../entities/groq.md)
- [GroqCloud — Plans](groqcloud-plans.md)
- [Groq — Rate Limits](groq-rate-limits.md)
