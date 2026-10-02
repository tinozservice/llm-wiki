---
title: "Hostinger — File Structure (Node.js)"
type: source
created: 2026-10-02
updated: 2026-10-02
sources: []
tags: [hostinger, nodejs, filesystem]
---

# Hostinger — File Structure (Node.js)

- **Sumber**: Hostinger — dokumentasi Node.js, File Structure
- **Penulis**: tidak dicantumkan
- **URL**: <https://docs.hostinger.com/node.js/file-structure>
- **Tanggal publikasi**: 2026-09-23; klip dibuat 2026-10-02
- **Berkas mentah**: `raw/2026/oktober/02/hostinger File Structure node.js _ Hostinger Documentation.md`

## TL;DR

Struktur file app Node.js Hostinger berpusat pada direktori **`hbuilds/`** yang dikelola otomatis: `versions/{build-id}` berisi build, `current` adalah symlink ke build hidup, dan `public_html` disinkronkan dari build. **Jangan edit file di `hbuilds/` atau `public_html`** — semuanya ditimpa saat deployment.

## Key points

- Layout: `source/` (work copy, dihapus setelah sukses), `last-source/` (untuk "Use previous files"), `config/` (env, package.json, lockfile), `logs/`, `versions/{build-id}/`, `current` symlink.
- Lokasi live: server app `hbuilds/current/nodejs`; output statis `public_html`.
- Deployment sukses membuat `versions/{build-id}` baru dan memindahkan `current`; build gagal tidak mengubahnya.
- App lama (pra-`hbuilds`) masih dari `nodejs` + `.builds`; deployment berikutnya memindahkannya.
- Timestamp file = waktu edit di arsip, bukan waktu deploy; verifikasi lewat halaman Deployments.
- Hanya build live yang disimpan; rollback = push kode lama atau upload arsip lama.

## Notable quotes

> "Files in `hbuilds/` and `public_html` are overwritten on every deployment. Direct edits via File Manager, FTP, or SSH are not supported — change your source and redeploy."

## What this changes

- Melengkapi [Hostinger](../entities/hostinger.md).
- Tidak ada kontradiksi.

## Related

- [Hostinger](../entities/hostinger.md)
- [Hostinger — Deployments](hostinger-nodejs-deployments.md)
- [Hostinger — Build Settings](hostinger-nodejs-build-settings.md)
