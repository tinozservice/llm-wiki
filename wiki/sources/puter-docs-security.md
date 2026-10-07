---
title: "Puter docs — Security and Permissions"
type: source
created: 2026-10-07
updated: 2026-10-07
sources: []
tags: [puter, security, permissions, sandbox]
---

# Puter docs — Security and Permissions

- **Sumber**: Puter.js documentation — halaman *Security and Permissions*
- **Penulis**: Puter Technologies Inc.
- **URL**: <https://docs.puter.com/security/>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-07
- **Berkas mentah**: `raw/2026/oktober/07/puter docs. Security and Permissions.md`

## TL;DR

Model keamanan Puter.js: user mengautentikasi ke Puter (otomatis saat kode menyentuh layanan cloud), dan **app tersandbox secara default** — hanya boleh menyentuh direktori app-nya sendiri dan key-value store miliknya. Data lintas user memerlukan pola worker.

## Key points

- **Autentikasi**: di website, user diprompt sign-in saat layanan cloud pertama diakses (sekali saja); di app yang dipublikasikan di puter.com, user **otomatis** sign in dan app punya akses penuh ke layanan cloud.
- **Default yang diberikan ke app**:
  - **Direktori app** di cloud storage user: `~/AppData/<app-id>/` — dibuat otomatis saat autentikasi pertama; app **tidak bisa** mengakses file di luarnya secara default.
  - **Key-value store tersandbox** per app — hanya app itu yang bisa mengaksesnya.
- **"Apps are sandboxed by default!"** — app tidak bisa menyentuh data/resource di luar direktori & KV miliknya.
- **Layanan default**: AI (chat, txt2img, img2txt, dll.) dan **hosting** (membuat/memublikasikan situs atas nama user).
- **Butuh data lintas user?** Gunakan **Serverless Worker** — kode worker berjalan atas resource pemilik worker (satu backend bersama untuk semua user).

## Notable quotes

> "**Apps are sandboxed by default!** Apps are not able to access any files, directories, or data outside of their own directory and key-value store within a user's account."

## What this changes

- Memperkuat [Puter](../entities/puter.md) bagian keamanan: isolasi per-app (`~/AppData/<app-id>/` + KV terpisah) — konsisten dengan klaim "every request authenticated and scoped to the signed-in user" di halaman [backend](puter-backend-for-ai-apps.md).
- Melengkapi pola "data bersama via worker" yang diulang di halaman FS, KV, dan Security.
- Tidak ada kontradiksi.

## Related

- [Puter](../entities/puter.md)
- [Puter docs — Auth](puter-docs-auth.md)
- [Puter docs — Cloud Storage (FS)](puter-docs-cloud-storage.md)
- [Puter docs — Key-Value Store](puter-docs-key-value-store.md)
- [Puter docs — Serverless Workers](puter-docs-serverless-workers.md)
