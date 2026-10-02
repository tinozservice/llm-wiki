---
title: "Hostinger — Deployments"
type: source
created: 2026-10-02
updated: 2026-10-02
sources: []
tags: [hostinger, nodejs, deployments]
---

# Hostinger — Deployments

- **Sumber**: Hostinger — dokumentasi Node.js, Deployments
- **Penulis**: tidak dicantumkan
- **URL**: <https://docs.hostinger.com/node.js/deployments>
- **Tanggal publikasi**: 2026-09-23; klip dibuat 2026-10-02
- **Berkas mentah**: `raw/2026/oktober/02/Hostinger Deployments node js Docs.md`

## TL;DR

Setiap build Node.js tercatat di halaman **Deployments**: riwayat (branch/commit atau file arsip, waktu, status), detail per deployment, redeploy, AI analysis untuk build gagal, dan pengaturan yang berlaku untuk build berikutnya. Build yang sedang melayani trafik ditandai **Current**.

## Key points

- Status: Building / Completed / Build failed; tabel searchable + paginated.
- Detail: state, durasi, source (repo/branch/commit/author atau file), konfigurasi, build log penuh (polling beberapa detik).
- **Redeploy**: Git → pull kode terbaru; Arsip → "Use previous files" (dari `hbuilds/last-source`) atau upload baru.
- Satu deployment per situs; tombol lain nonaktif sampai selesai. Tidak ada rollback per-commit.
- Build gagal → AI analysis (diagnosis + solusi) + **Fix and redeploy**.
- Sukses → `hbuilds/versions/{build-id}` baru + symlink `current`; output statis disinkronkan ke `public_html`.

## Notable quotes

> "Only one deployment runs at a time per site — buttons are disabled with 'Another deployment is still running' until it finishes."

## What this changes

- Melengkapi [Hostinger](../entities/hostinger.md).
- Tidak ada kontradiksi.

## Related

- [Hostinger](../entities/hostinger.md)
- [Hostinger — GitHub](hostinger-nodejs-github.md)
- [Hostinger — File Structure](hostinger-nodejs-file-structure.md)
