---
title: "Puter docs — Auth"
type: source
created: 2026-10-07
updated: 2026-10-07
sources: []
tags: [puter, auth, api]
---

# Puter docs — Auth

- **Sumber**: Puter.js documentation — halaman *Auth*
- **Penulis**: Puter Technologies Inc.
- **URL**: <https://docs.puter.com/Auth/>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-07
- **Berkas mentah**: `raw/2026/oktober/07/puter docs. Auth.md`

## TL;DR

API autentikasi: user sign in dengan akun Puter mereka — wajib untuk mengakses API cloud lainnya. Mendukung sign-in/out, cek status, info user, profil, dan **usage bulanan**.

## Key points

- `puter.auth.signIn()` (popup — harus dari aksi user), `signOut()`, `isSignedIn()`, `getUser()`.
- Tambahan: `getProfile()` / `getProfilePicture()` (jika tersedia), `getMonthlyUsage()` (pemakaian resource bulan berjalan), `getDetailedAppUsage()` (statistik detail per aplikasi).
- Auth adalah gerbang semua layanan: setiap request di-meter ke akun user (lihat [User-Pays Model](../concepts/user-pays-model.md)).

## Notable quotes

> "This is essential for users to access the various Puter.js APIs integrated into your application."

## What this changes

- Melengkapi bagian auth di [Puter](../entities/puter.md) — sekaligus sumber `getMonthlyUsage()` yang disebut di [Rate Limits and Quotas](puter-docs-rate-limits.md).
- Tidak ada kontradiksi.

## Related

- [Puter](../entities/puter.md)
- [Puter docs — Security and Permissions](puter-docs-security.md)
- [User-Pays Model](../concepts/user-pays-model.md)
- [Puter docs — Rate Limits and Quotas](puter-docs-rate-limits.md)
