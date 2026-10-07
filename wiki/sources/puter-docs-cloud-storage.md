---
title: "Puter docs — Cloud Storage (FS)"
type: source
created: 2026-10-07
updated: 2026-10-07
sources: []
tags: [puter, storage, filesystem, api]
---

# Puter docs — Cloud Storage (FS)

- **Sumber**: Puter.js documentation — halaman *Cloud Storage*
- **Penulis**: Puter Technologies Inc.
- **URL**: <https://docs.puter.com/FS/>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-07
- **Berkas mentah**: `raw/2026/oktober/07/puter docs. Cloud Storage.md`

## TL;DR

API file system cloud: write, read, mkdir, readdir, rename, copy, move, stat, delete, upload — plus berbagi file antar user. Tanpa bucket/CDN untuk dikonfigurasi; storage & bandwidth ikut **user-pays**.

## Key points

- **Operasi dasar**: `puter.fs.write/read/mkdir/readdir/rename/copy/move/stat/delete/upload` — familiar seperti fs biasa.
- Upload lokal bisa membuat thumbnail gambar di browser (atau callback kustom); desktop Puter menambahkan preview PDF.
- **Sharing**: `puter.fs.share/unshare/listShared/listSharedByMe/getShares/getShareLink`; `getReadURL()/revokeReadURL()` untuk URL baca.
- **Batas isolasi**: file tiap user hidup di akunnya sendiri — satu user tidak bisa membaca milik user lain secara default.
- **Pola data bersama**: untuk file terpusat yang dibaca/ditulis semua user, pakai **Serverless Worker** — kodenya berjalan atas resource pemilik worker, memberi satu backend bersama (lihat [Serverless Workers](puter-docs-serverless-workers.md)).

## Notable quotes

> "With the User-Pays Model, you don't have to worry about storage or bandwidth costs, as users of your application cover their own usage."

> "Each user's files live in their own account, so one user can't read another's by default."

## What this changes

- Melengkapi detail [Puter](../entities/puter.md): cloud storage = file system user yang di-scope per akun/app (lihat [Security](puter-docs-security.md) untuk sandbox `~/AppData/<app-id>/`).
- Pola "data bersama via worker" konsisten di tiga halaman docs (FS, KV, Security) — sinyal desain platform, dicatat di entitas.
- Tidak ada kontradiksi.

## Related

- [Puter](../entities/puter.md)
- [Puter docs — Key-Value Store](puter-docs-key-value-store.md)
- [Puter docs — Serverless Workers](puter-docs-serverless-workers.md)
- [Puter docs — Security and Permissions](puter-docs-security.md)
