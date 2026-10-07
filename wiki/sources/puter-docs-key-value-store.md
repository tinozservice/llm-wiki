---
title: "Puter docs — Key-Value Store"
type: source
created: 2026-10-07
updated: 2026-10-07
sources: []
tags: [puter, kv, database, api]
---

# Puter docs — Key-Value Store

- **Sumber**: Puter.js documentation — halaman *Key-Value Store*
- **Penulis**: Puter Technologies Inc.
- **URL**: <https://docs.puter.com/KV/>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-07
- **Berkas mentah**: `raw/2026/oktober/07/puter docs. Key-Value Store.md`

## TL;DR

Database key-value cloud per user: set/get, increment/decrement, update per path, list dengan pola, expire, dan flush. Tanpa server/backup untuk dikelola; biaya ikut **user-pays**.

## Key points

- **Fungsi**: `set`, `get`, `incr`, `decr`, `add`, `remove`, `update`, `del`, `expire` (detik), `expireAt` (timestamp), `list` (naik/turun, dukung pola seperti `'is*'`, opsional nilai), `flush`.
- **Isolasi**: store tiap user ada di akunnya sendiri; app punya store **tersandbox** — user lain/app lain tidak bisa membacanya (lihat [Security](puter-docs-security.md)).
- **Data lintas user**: untuk store terpusat yang dipakai semua user, gunakan **Serverless Worker** — kode worker berjalan atas resource pemiliknya (satu backend bersama) ([Serverless Workers](puter-docs-serverless-workers.md)).
- **Events share handle**: untuk memberi akun lain akses *watch* sebagian store (bukan copy), mint handle lewat [Events](puter-docs-events.md) pada satu prefix key. Handle "dipaku" ke prefix — reorganisasi key memutus handle; disarankan prefix sintetis stabil (`workspace:<uuid>:`) alih-alih nama semantik yang mudah di-rename.

## Notable quotes

> "**Key layout is the access boundary.** To let another account watch part of your store instead of copying it, mint an Events share handle over a key prefix."

## What this changes

- Melengkapi [Puter](../entities/puter.md): KV sebagai database default app (tanpa setup), dengan catatan desain key-prefix sebagai batas akses.
- Konsisten dengan batas KV di [Rate Limits and Quotas](puter-docs-rate-limits.md) (value ≤400 KB, dsb.).
- Tidak ada kontradiksi.

## Related

- [Puter](../entities/puter.md)
- [Puter docs — Events](puter-docs-events.md)
- [Puter docs — Serverless Workers](puter-docs-serverless-workers.md)
- [Puter docs — Security and Permissions](puter-docs-security.md)
