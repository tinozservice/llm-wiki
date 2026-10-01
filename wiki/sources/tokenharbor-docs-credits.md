---
title: "Token Harbor docs — Credits & top-ups"
type: source
created: 2026-10-02
updated: 2026-10-02
sources: []
tags: [token-harbor, wallet, top-up, cache, billing]
---

# Token Harbor docs — Credits & top-ups

- **Sumber**: Token Harbor — dokumentasi, halaman *Credits & top-ups*
- **Penulis**: Token Harbor
- **URL**: <https://tokenharbor.ai/docs/billing/credits>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-02
- **Berkas mentah**: `raw/2026/oktober/02/Token Harbor docs. Credits & top-ups.md`

## TL;DR

Token Harbor punya **satu saldo USD** untuk web chat dan kedua API (OpenAI-compat + Anthropic-compat). Akun mulai dari $0 tanpa welcome credit; top-up $10/$50/$100 via PayPal dan **tidak pernah kedaluwarsa**. Tagihan dihitung per token pada harga publik provider + markup per model (0% saat ini), dengan **tiga lapis cache** yang memotong biaya. Saldo top-up yang belum terpakai bisa direfund dalam 30 hari.

## Key points

- **Satu wallet USD**: web chat, API OpenAI-compat, dan API Anthropic-compat semuanya menarik dari saldo yang sama.
- **Mulai $0** — tidak ada sign-up/welcome credit. Model gratis via ID `:free` tetap tersedia dan tidak menyentuh saldo.
- **Top-up**: Starter $10 → $10; Community $50 → $50; Harbor $100 → $100 (tanpa bonus bawaan); dibayar via PayPal; kredit **tidak pernah kedaluwarsa**.
- **Withdrawable vs tidak**: saldo hasil top-up sendiri bisa ditarik (lihat refunds); kredit promosi/reward (mis. first top-up match) bisa dibelanjakan tapi tidak bisa ditarik.
- **Cara tagihan dihitung**: per token, pada harga publik provider + markup per model opsional — saat ini **0% di semua model**. (Formula lengkap di dokumen Models.)
- **Tiga lapis cache** yang mengurangi biaya:
  1. request identik dalam 5 menit → **$0**;
  2. pertanyaan sangat mirip (semantic) → **$0**;
  3. prefix berulang panjang (≥1024 token) → **s.d. 90% off** lewat prompt cache vendor.
- **Refund**: saldo top-up yang belum terpakai bisa direfund penuh dalam **30 hari** sejak top-up (email billing@); saldo terpakai, kredit promosi, dan reward — tidak.
- **Transparansi**: balance pill live; `/dashboard/usage` menampilkan 100 request terakhir dengan token, cache layer, dan biaya persis; ekspor CSV; ledger top-up memuat Order ID & PayPal capture ID untuk rekonsiliasi.

## Notable quotes

> "Token Harbor has one balance in USD. Web chat, the OpenAI-compat API, the Anthropic-compat API — they all draw from the same wallet."

> "Credits **never expire**."

## What this changes

- Informasi **wallet, top-up, refund, dan ledger** sebelumnya kosong — sekarang terdokumentasi.
- **Tiga lapis cache** platform (exact/semantic/upstream) — melengkapi pertanyaan terbuka soal tarif cache; detail Claude ada di [dokumen prompt caching](tokenharbor-docs-prompt-caching.md). Sintesis lintas layanan di [Prompt Caching](../concepts/prompt-caching.md).
- Halaman diperbarui: [Token Harbor](../entities/token-harbor.md), [Rewards](tokenharbor-docs-rewards.md) (kredit promosi).

## Related

- [Token Harbor](../entities/token-harbor.md)
- [Token Harbor — Rewards](tokenharbor-docs-rewards.md)
- [Token Harbor — Models](tokenharbor-docs-models.md)
- [Token Harbor — Prompt caching on Claude](tokenharbor-docs-prompt-caching.md)
- [Prompt Caching](../concepts/prompt-caching.md)
