---
title: "Puter docs — Email"
type: source
created: 2026-10-07
updated: 2026-10-07
sources: []
tags: [puter, email, api]
---

# Puter docs — Email

- **Sumber**: Puter.js documentation — halaman *Email*
- **Penulis**: Puter Technologies Inc.
- **URL**: <https://docs.puter.com/Email/>
- **Tanggal penerbitan**: tidak dicantumkan; klip dibuat 2026-10-07
- **Berkas mentah**: `raw/2026/oktober/07/puter docs. Email.md`

## TL;DR

API email: membaca **mailbox Puter milik user** (list & baca pesan + lampiran, dengan izin) dan mengirim **email transaksional** dari alamat yang dikendalikan Puter — tanpa mail server, domain pengirim, atau DKIM. Pengiriman transaksional butuh plan berbayar.

## Key points

- Setiap akun Puter punya alamat `{username}@puter.email`; surat masuk disimpan di **cloud drive user sendiri**.
- **Kirim**: `puter.email.sendTransactional()` — tersedia untuk akun **paid plan**; akun free gagal `402 subscription_required`. Penerima ber-akun Puter di `{username}@puter.email` langsung difilekan ke mailbox-nya (tanpa relay), di plan apa pun asalkan mailbox-nya sudah disiapkan.
- **Baca**: `puter.email.list({ limit })` (terbaru dulu) dan `puter.email.get(id)` (parsing + lampiran) setelah user memberi akses.
- **User-pays**: mail hidup di storage user, dan pengiriman jatuh ke allowance **akun pemanggil** — bukan developer.
- Dari worker: worker mengotorisasi pengiriman, **user yang memanggil yang membayar** (contoh `user.puter.email.sendTransactional({..., emailAccessToken: me.puter.authToken })`).

## Notable quotes

> "Your app can also send transactional email — a signup confirmation, a receipt, an alert — from a Puter-controlled address, with no mail server, sending domain, or DKIM to set up."

## What this changes

- Fitur baru di [Puter](../entities/puter.md): email sebagai layanan platform (mailbox per akun + transactional API).
- Konsisten dengan batas di [Rate Limits and Quotas](puter-docs-rate-limits.md) (email transaksional butuh paid plan; 600/menit).
- Tidak ada kontradiksi.

## Related

- [Puter](../entities/puter.md)
- [User-Pays Model](../concepts/user-pays-model.md)
- [Puter docs — Rate Limits and Quotas](puter-docs-rate-limits.md)
- [Puter docs — Serverless Workers](puter-docs-serverless-workers.md)
