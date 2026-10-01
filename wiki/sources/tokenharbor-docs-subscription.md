---
title: "Token Harbor docs — Subscription"
type: source
created: 2026-10-02
updated: 2026-10-02
sources: []
tags: [token-harbor, subscription, pass, billing]
---

# Token Harbor docs — Subscription

- **Sumber**: Token Harbor — dokumentasi, halaman *Subscription*
- **Penulis**: Token Harbor
- **URL**: <https://tokenharbor.ai/docs/billing/subscription>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-02
- **Berkas mentah**: `raw/2026/oktober/02/Token Harbor docs Subscription.md`

## TL;DR

Dokumentasi resmi cara kerja Pass: allowance adalah **nilai pemakaian bersubsidi** (bukan saldo wallet) yang berulang tiap **empat minggu** dan terbagi **4 jendela 7 hari** tanpa carry-over; Boost memperpanjang nilai pada model terpilih; free allowance tetap berjalan sendiri; dan kelanjutan pemakaian setelah allowance habis dikendalikan **toggle** *"Keep working after my Pass allowance runs out"* — jika dimatikan, Pass berlaku sebagai **hard limit**.

## Key points

- **Tiga Pass**: Agent $0.99 bulan pertama lalu $1.99/bln (usage $10; boost s.d. $20; PAYG 5%); Office $9.99 ($35/$70/10%); Frontier $99 ($180/$360/15%). Billing tahunan tersedia; allowance tetap refresh tiap 4 minggu.
- **Subsidi = included usage value, bukan kredit wallet** — tidak bisa ditarik/dipindah; dipakai bersama semua model; diukur dengan harga per-token publik, sehingga plafonnya *dolar*, bukan jumlah request.
- **Boost**: model terpilih ditagih dengan tarif lebih rendah terhadap allowance yang sama (contoh 2×: $10 menutup s.d. $20 nilai); tidak menambah saldo; Pass lebih tinggi mewarisi Boost di bawahnya.
- **Lineup menurut dokumen**: Free — DeepSeek V4 Flash, MiMo V2.5; Agent + GLM-5.3 Flash, GPT-5.6 Luna, MiMo V2.5 Pro, Qwen3.8 Flash; Office + Claude Sonnet 5, DeepSeek V4 Pro, GPT-5.6 Terra, Qwen3.8 27B, Qwen3.8 Max; Frontier + Claude Fable 5.1, Claude Opus 5, GLM-5.3, GPT-5.6 Sol, GPT-6 Astra, Grok 4.6, Kimi K3. (Sebagian nama versi berbeda dari klip harga 1 Okt — lihat *What this changes*.)
- **Refresh**: satu siklus 4 minggu = 4 jendela 7 hari, seperempat nilai per jendela; sisa tidak carry-over; usage Pass tidak masuk saldo wallet; dashboard menampilkan usage berjalan.
- **Free access berjalan sendiri**: langganan tidak replace/reset/menambah free allowance; jika allowance gratis sudah terpakai, upgrade tidak memulihkannya; model gratis tetap via ID `:free`, Pass berlaku untuk rute berbayar.
- **Setelah allowance habis** (toggle di Dashboard → Billing):
  - **aktif** — panggilan lanjut selama saldo cukup, tarif PAYG diskon Pass (5/10/15%), tunduk hard spending cap;
  - **nonaktif** — Pass menjadi batas keras: panggilan berhenti sampai jendela berikutnya.
- **Billing terpisah**: langganan dibayar via Stripe (portal untuk kelola/cancel); saldo wallet untuk overage; auto-reload dan spending cap diatur terpisah.
- **Privasi**: trafik Pass mengikuti zero-data-retention; rute gratis terpisah dan mengikuti setelan retensi free.

## Notable quotes

> "The subsidy is **included usage value, not wallet credit**."

> "Usage value is measured using Token Harbor's published per-token prices. More expensive models consume the allowance faster than lower-cost models, so the ceiling is in dollars rather than in requests."

> "When disabled: The Pass acts as a hard usage limit."

> "Your existing free-model allowance remains active alongside your paid Pass. Subscribing does not replace, reset, or increase the free allowance."

## What this changes

- **Koreksi nuansa**: klaim "Nothing stops at the limit" (halaman harga) berlaku hanya bila toggle kelanjutan **aktif**; dokumen ini memperkenalkan mode **hard limit**.
- **Memperjelas**: bentuk allowance (siklus 4 minggu; 4 jendela), free allowance tidak ditambah/direset oleh pass, lineup per pass, billing tahunan, retensi data per rute.
- **Inkonsistensi versi model** dengan klip harga/katalog 1 Okt (mis. GPT-5.6 Luna vs GPT-6 Luna; MiMo V2.5 vs MiMo V2.6 Flash; Claude Sonnet 5 vs 5.5; Grok 4.6 vs 4.7) — kemungkinan beda snapshot; dicatat, tidak ditimpa.
- Halaman yang diperbarui: [Token Harbor](../entities/token-harbor.md), [Perhitungan Limit Agent Pass](../analyses/perhitungan-limit-agent-pass.md) (koreksi toggle), catatan drift di [Katalog Model Token Harbor](../entities/token-harbor-model-catalog.md).

## Related

- [Token Harbor](../entities/token-harbor.md)
- [One API for the world's leading AI models](tokenharbor-pricing.md)
- [Token Harbor — Credits & top-ups](tokenharbor-docs-credits.md)
- [Token Harbor — Rewards](tokenharbor-docs-rewards.md)
- [Estimasi Request per Pass](../entities/token-harbor-pass-estimates.md)
