---
title: "Token Harbor docs — Rate limits"
type: source
created: 2026-10-02
updated: 2026-10-02
sources: []
tags: [token-harbor, rate-limit, api]
---

# Token Harbor docs — Rate limits

- **Sumber**: Token Harbor — dokumentasi, halaman *Rate limits*
- **Penulis**: Token Harbor
- **URL**: <https://tokenharbor.ai/docs/api/rate-limits>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-02
- **Berkas mentah**: `raw/2026/oktober/02/Token Harbor docs Rate limits.md`

## TL;DR

Akun berbayar — Pass aktif **atau** wallet yang sudah top-up — **tidak punya limit request** (RPM/RPH). Akun gratis dibatasi 60 request/menit dan 1.800/jam per akun, plus limit per IP. Tidak ada batas konkurensi. Limit pada API key adalah **cap pengeluaran dalam dolar**, bukan rate request.

## Key points

- **Cakupan**: limit berlaku untuk API `/v1/chat/completions`, `/v1/messages`, `/v1/responses`, dan `/v1/images/generations`; web chat punya limit sendiri ([Web chat limits](tokenharbor-docs-web-chat-limits.md)).
- **Akun berbayar**: Pass aktif atau wallet pernah top-up → **tanpa limit RPM/RPH**.
- **Akun gratis**: 60 request/menit & 1.800/jam per akun (dibagi semua API key dan model); 100/menit & 3.000/jam per IP; image generation 10/menit & 150/jam; model promosi gratis tanpa limit per model tambahan.
- **Konkurensi**: tidak ada batas, di semua plan.
- **Satu API call = satu request** — di agent tool (Claude Code, Codex, Cursor, opencode, dll.) setiap round trip tool-call dihitung sendiri, jadi satu task bisa memakai beberapa request.
- **Over limit**: HTTP `429` + header `Retry-After`; agent tool biasanya retry otomatis.
- **Limit API key = spending cap USD** (bukan rate); key berhenti setelah menghabiskan nominal itu.

## Notable quotes

> "An account with an active Pass, or any account that has topped up its wallet, has **no requests-per-minute or requests-per-hour limit**."

> "The limits you set on an API key in the dashboard are caps in USD, not request rates."

## What this changes

- Menjawab open question rate limit Token Harbor: model berbayar bebas limit request; yang berlaku adalah cap USD per key.
- Relevan untuk analisis pemakaian agentik: beban besar lebih dibatasi **keuangan** (allowance/saldo) daripada rate limit.
- Halaman diperbarui: [Token Harbor](../entities/token-harbor.md).

## Related

- [Token Harbor](../entities/token-harbor.md)
- [Token Harbor — Subscription](tokenharbor-docs-subscription.md)
- [Token Harbor — Web chat limits](tokenharbor-docs-web-chat-limits.md)
- [Perhitungan Limit Agent Pass & Beban Konteks Besar](../analyses/perhitungan-limit-agent-pass.md)
