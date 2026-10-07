---
title: "VyceAI — Pricing & Plans (Monthly)"
type: source
created: 2026-10-07
updated: 2026-10-07
sources: []
tags: [vyceai, pricing, plans, subscription]
---

# VyceAI — Pricing & Plans (Monthly)

- **Sumber**: VyceAI dashboard-v2 — halaman *Pricing & Plans* (billing bulanan)
- **Penulis**: Vyce AI
- **URL**: <https://vyceai.com/dashboard-v2>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-07
- **Berkas mentah**: `raw/2026/oktober/07/vyceai Pricing & Plans (monthly).md`

## TL;DR

Tiga paket VyceAI: **Free $0**, **Lite $5/bln**, **Pro $20/bln**. Pembeda utamanya bukan sekadar harga per token: Lite/Pro mendapat model **"unlimited" (DeepSeek V4.1 Flash & Agnes 3.0 Flash)**, kuota harian GPT (Astra 25M, Sol 50M), **bonus kredit bulanan** ($100/$500) dan **reward kredit harian** ($25/$30) — pembayaran via kripto (NOWPayments).

## Key points

- **Free**: semua model dapat diakses; API OpenAI & Anthropic compatible; kredit via referral; **$10 reward harian**; routing standar; dukungan komunitas.
- **Lite $5/bln** ("Most Popular"): Unlimited DeepSeek V4.1 & Agnes 3.0 Flash (tanpa cap token, $0 kredit); **GPT 6 Astra 25M token/hari gratis**; **GPT 5.6 Sol 50M token/hari**; **$100 bonus kredit/bulan**; **$25 reward harian**; priority routing; rate limit lebih tinggi; dukungan Discord.
- **Pro $20/bln**: semua isi Lite plus **$500 bonus/bulan**, **$30 reward harian**, limit tertinggi (300 req/min keseluruhan), **2× parallel request** pada model unlimited, routing tercepat, dukungan Discord prioritas, early access model baru.
- **Fair-use "unlimited"**: "no token cap — only fair-use request rates (Lite 60 req/min, Pro 120 req/min per model)".
- **Inkonsistensi internal** dicatat: catatan fair-use menulis Lite 60 / Pro 120 req/min, sedangkan daftar fitur menulis Lite "120 req/min" dan Pro "300 req/min overall".
- Aktivasi instan 30 hari; bonus kredit refresh bulanan; model included gratis selama langganan aktif; **checkout otomatis via kripto (NOWPayments)**.

## Notable quotes

> "Unlimited models have no token cap — only fair-use request rates."

> "All plans include instant 30-day activation."

## What this changes

- Skema baru di [Layanan Akses Model](../concepts/model-access-services.md): **langganan + bonus bulanan + reward harian**, menyatu dengan model "unlimited" — beda dari Token Harbor (nilai usage), Go (batas per model), maupun Manus (kredit tugas).
- Koneksi: **Agnes 3.0 Flash** di sini terhubung ke entitas [Agnes](../entities/agnes.md) (model dasar Token Plan Agnes).
- Dibuat: [VyceAI](../entities/vyceai.md).
- Tidak ada kontradiksi lintas-wiki.

## Related

- [VyceAI](../entities/vyceai.md)
- [VyceAI — Pricing & Plans (Yearly)](vyceai-pricing-yearly.md)
- [VyceAI — Daily Rewards](vyceai-daily-rewards.md)
- [Agnes](../entities/agnes.md)
