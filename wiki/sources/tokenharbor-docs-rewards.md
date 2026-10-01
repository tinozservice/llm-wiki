---
title: "Token Harbor docs — Rewards"
type: source
created: 2026-10-02
updated: 2026-10-02
sources: []
tags: [token-harbor, rewards, free, billing]
---

# Token Harbor docs — Rewards

- **Sumber**: Token Harbor — dokumentasi, halaman *Rewards*
- **Penulis**: Token Harbor
- **URL**: <https://tokenharbor.ai/docs/billing/cashback>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-02
- **Berkas mentah**: `raw/2026/oktober/02/Token Harbor docs Rewards.md`

## TL;DR

Token Harbor tidak memberi cashback per panggilan maupun diskon volume. Insentifnya: **first top-up match 100% s.d. $100** (14 hari setelah registrasi), bonus milestone spend lifetime ($10→$2, $50→$10, $200→$50), dan **free model access** via ID `:free` yang diukur berdasarkan nilai list-price dengan periode **rolling 7×24 jam** per akun. Semua reward dibatasi cap lifetime **$500** per akun.

## Key points

- **Tanpa cashback, tanpa diskon volume** — nilai datang dari harga passthrough per token, cache platform, dan rewards.
- **Cap**: semua reward & kredit promosi dihitung terhadap batas **$500 lifetime per akun**.
- **First top-up match**: top-up pertama digandakan 100% s.d. $100 ($10→$20; $50→$100; $100→$200); tersedia 14 hari setelah registrasi; kredit promosi (bisa dibelanjakan, tidak bisa ditarik); langsung masuk saat top-up selesai — tanpa lock/klaim.
- **Milestone spend**: lifetime spend $10→$2; $50→$10; $200→$50; otomatis & sekali per milestone, tidak reset.
- **Free model access**: daftar model `:free` berubah seiring waktu; **request gratis pertama memulai periode rolling 7×24 jam personal** — bukan pekan kalender atau tengah malam UTC.
- **Allowance gratis diukur nilai list-price pekerjaan**, bukan jumlah request tetap; dashboard menampilkan progress bar 0–100%; rute gratis tidak pernah menagih saldo; ID dasar tetap rute berbayar.
- **Campaign**: rute gratis terbatas waktu dengan tanggal akhir; metered sebagai allowance terpisah **atau** menumpang free-tier allowance — dashboard menunjukkan yang mana dan kapan refresh.
- **Invite**: setiap akun punya kode undangan permanen; belum ada hadiah referral berupa uang.
- **Privasi**: prompt/response rute gratis hanya disimpan setelah pengguna mengaktifkan free models.

## Notable quotes

> "There is **no per-call cashback** and **no volume discount** — value comes from passthrough per-token pricing, the platform caches, and the rewards below."

> "Your first free request starts a personal rolling **7×24-hour** period; it is not tied to a calendar week or midnight UTC."

> "The allowance is measured by the list-price value of the work rather than a fixed number of requests."

## What this changes

- **Menjawab sebagian open question free allowance**: periode dan dasar pengukuran kini jelas (rolling 7×24 jam; nilai list-price; progress bar) — angka dolarnya tetap tidak disebutkan.
- Menambah dimensi **rewards/top-up match/milestone** yang sebelumnya tidak ada di wiki.
- Halaman diperbarui: [Token Harbor](../entities/token-harbor.md), [Credits & top-ups](tokenharbor-docs-credits.md).

## Related

- [Token Harbor](../entities/token-harbor.md)
- [Token Harbor — Credits & top-ups](tokenharbor-docs-credits.md)
- [Token Harbor — Subscription](tokenharbor-docs-subscription.md)
- [One API for the world's leading AI models](tokenharbor-pricing.md)
