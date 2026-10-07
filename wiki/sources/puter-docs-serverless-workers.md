---
title: "Puter docs — Serverless Workers"
type: source
created: 2026-10-07
updated: 2026-10-07
sources: []
tags: [puter, workers, serverless, backend]
---

# Puter docs — Serverless Workers

- **Sumber**: Puter.js documentation — halaman *Serverless Workers*
- **Penulis**: Puter Technologies Inc.
- **URL**: <https://docs.puter.com/Workers/>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-07
- **Berkas mentah**: `raw/2026/oktober/07/puter docs. Serverless Workers.md`

## TL;DR

**Serverless Workers**: fungsi JavaScript server-side untuk backend app — router HTTP, integrasi penuh dengan layanan Puter (storage, KV, AI), deploy gratis ke `<name>.puter.work`. Worker adalah cara resmi membuat **data bersama** antar user dan resource yang hidup di akun developer.

## Key points

- **Router**: `router.get/post(...)` dengan `{ request, params }`; return JSON otomatis; bisa akses `me.puter.*` (KV, storage, AI) atas nama akun pemilik worker.
- **Identitas worker**: worker berjalan **sebagai app** — namespace `puter.kv` & `AppData` di-scope ke identitas itu; beberapa worker sebagai app yang sama berbagi satu namespace.
- **Workers API**: `puter.workers.create/delete/list/get/exec` — kelola & eksekusi worker secara programatik; request ke worker dapat terautentikasi (contoh playground "Authenticated Worker Requests").
- **Deployment**: publish dari puter.com (klik kanan file `.js` → **Publish as Worker**), CLI (`puter worker deploy [file] [name]`), atau GitHub Actions ([Puter Worker Deploy Action](https://github.com/HeyPuter/puter-worker-deploy-action), `PUTER_TOKEN`).
- Update: worker dibuat sekali, nama & URL tetap; kirim perubahan dengan **menimpa file sumbernya**, bukan bikin worker baru.
- Contoh pola: endpoint KV dengan **prefix wajib** (`myscope_`) agar tidak membaca data user lain secara membabi buta.
- Email dari worker: worker mengotorisasi, user pemanggil yang membayar (lihat [Email](puter-docs-email.md)).

## Notable quotes

> "Workers run server-side, which makes them a good fit for centralized application data and backend logic."

> "To keep a single, centralized store that every user reads from and writes to, use a Serverless Worker — its code can act on the worker owner's resources, giving all users one shared backend."

## What this changes

- Melengkapi [Puter](../entities/puter.md): worker = satu-satunya jalur data bersama; sekaligus wujud nyata "resource level-app di akun developer" yang disebut di [Puter.js Pricing](puter-puterjs-pricing.md).
- Tidak ada kontradiksi.

## Related

- [Puter](../entities/puter.md)
- [Puter docs — Cloud Storage (FS)](puter-docs-cloud-storage.md)
- [Puter docs — Key-Value Store](puter-docs-key-value-store.md)
- [Puter docs — Email](puter-docs-email.md)
- [Puter docs — CLI](puter-docs-cli.md)
