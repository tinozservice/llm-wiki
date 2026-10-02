---
title: "Hostinger — Environment Variables"
type: source
created: 2026-10-02
updated: 2026-10-02
sources: []
tags: [hostinger, nodejs, env-vars]
---

# Hostinger — Environment Variables

- **Sumber**: Hostinger — dokumentasi Node.js, Environment Variables
- **Penulis**: tidak dicantumkan
- **URL**: <https://docs.hostinger.com/node.js/environment-variables>
- **Tanggal publikasi**: 2026-07-27; klip dibuat 2026-10-02
- **Berkas mentah**: `raw/2026/oktober/02/Hostinger Environment Variables node js Docs.md`

## TL;DR

Environment variable Hostinger disuntikkan ke **build dan runtime**, persist antar deployment. Bisa ditambah satu-satu atau bulk-import `.env`; nilai disimpan terenkripsi; menyimpan perubahan **redeploy aplikasi**. Batas: key `A–Z/0–9/_`, maks 255 karakter, unik, hingga **1.000 variabel** per app.

## Key points

- Dikelola saat onboarding atau **Environment variables** di dashboard.
- Bulk import `.env`: komentar dilewati, kutip sekeliling dihapus.
- Nilai di-mask (ada toggle show/hide); variabel system-managed (mis. dari wizard database) terkunci.
- Perubahan "staged" sampai save; navigasi keluar diperingatkan; save = redeploy (berlaku di build + runtime).
- Jangan commit secrets ke repo; variabel build-time (mis. `NEXT_PUBLIC_*`) harus diset sebelum build.

## Notable quotes

> "Variables are injected into both the build and the running app, and persist across deployments — set them once, not on every push."

> "Values are stored encrypted and written to a protected file on your hosting."

## What this changes

- Melengkapi [Hostinger](../entities/hostinger.md).
- Tidak ada kontradiksi.

## Related

- [Hostinger](../entities/hostinger.md)
- [Hostinger — Creating a Node.js App](hostinger-nodejs-creating-app.md)
- [Hostinger — Deployments](hostinger-nodejs-deployments.md)
