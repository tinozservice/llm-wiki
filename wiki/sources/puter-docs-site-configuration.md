---
title: "Puter docs — Site Configuration"
type: source
created: 2026-10-07
updated: 2026-10-07
sources: []
tags: [puter, hosting, site-config]
---

# Puter docs — Site Configuration

- **Sumber**: Puter.js documentation — halaman *Site Configuration*
- **Penulis**: Puter Technologies Inc.
- **URL**: <https://docs.puter.com/site-config/>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-07
- **Berkas mentah**: `raw/2026/oktober/07/puter docs. Site Configuration.md`

## TL;DR

Situs yang di-host Puter bisa dikonfigurasi lewat file **`.puter_site_config`** di root direktori situs — saat ini hanya mengatur **halaman yang disajikan untuk request yang tidak cocok file** (404 kustom atau fallback SPA).

## Key points

- File opsional; tanpa itu, path tak dikenal mendapat 404 default Puter. File ini **tidak pernah disajikan** ke pengunjung.
- **SPA fallback**: map `404` → `/index.html` dengan `status: 200` — deep link, refresh, dan URL yang dibagikan bekerja dengan client-side router.
- **404 kustom**: map `404` → `/404.html` tanpa `status` (biarkan 404).
- **Referensi**: hanya key `errors`; `errors.<code>` harus 400–599 (baru `404` yang berlaku); `file` path absolut dari root situs; `status` opsional 200–599 (default = kode yang ditangani).
- **Catatan penting**: perubahan config ter-cache **60 detik**; config rusak (>64 KB / JSON invalid) **diabaikan** (situs tetap jalan, tapi gagal senyap); error page yang hilang → fallback 404 default; `..` di-strip (tidak bisa keluar root situs).
- **Tidak didukung**: redirect, rewrite URL, header kustom, clean URLs, cache-control, directory listing — tidak ada padanan untuk `_redirects`/`vercel.json`. Dua rewrite otomatis tanpa config: `/` dan path folder → `index.html` folder itu.

## Notable quotes

> "A broken config is ignored, not fatal. … Your site never goes down because of a bad config — but a typo also fails quietly."

## What this changes

- Melengkapi jalur hosting [Puter](../entities/puter.md) (padanan kecil dari `vercel.json` — bandingkan konsep [Hosting Web](../concepts/web-hosting.md)).
- Tidak ada kontradiksi.

## Related

- [Puter](../entities/puter.md)
- [Puter docs — Deployments](puter-docs-deployments.md)
- [Puter docs — Hosting](puter-docs-hosting.md)
