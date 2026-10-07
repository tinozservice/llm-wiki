---
title: "Puter docs — Apps"
type: source
created: 2026-10-07
updated: 2026-10-07
sources: []
tags: [puter, apps, api]
---

# Puter docs — Apps

- **Sumber**: Puter.js documentation — halaman *Apps*
- **Penulis**: Puter Technologies Inc.
- **URL**: <https://docs.puter.com/Apps/>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-07
- **Berkas mentah**: `raw/2026/oktober/07/puter docs. Apps.md`

## TL;DR

API untuk mengelola aplikasi di ekosistem Puter: buat app yang menunjuk ke sebuah URL, daftar, ubah, ambil info, dan hapus — semuanya dari Puter.js.

## Key points

- **Fungsi**: `puter.apps.create(name, url)`, `list()`, `update(name, {title, ...})`, `get(name)`, `delete(name)`, dan `checkName()` untuk cek ketersediaan nama.
- App = entri yang dapat diluncurkan (memiliki `uid`, `name`, `title`) menunjuk ke sebuah URL.
- Contoh resmi memakai `puter.randName()` untuk nama acak (aman dari tabrakan) lalu cleanup `delete()`.
- Halaman ini melengkapi konsep **app sebagai unit identitas** di Puter (lihat juga [Puter docs — Security and Permissions](puter-docs-security.md) tentang sandbox per-app).

## Notable quotes

> "The Apps API allows you to create, manage, and interact with applications in the Puter ecosystem."

## What this changes

- Memperluas [Puter](../entities/puter.md): registry aplikasi adalah bagian platform (dipakai juga oleh events handler, CLI `puter app`, dan MCP `apps_*`).
- Tidak ada kontradiksi.

## Related

- [Puter](../entities/puter.md)
- [Puter docs — Security and Permissions](puter-docs-security.md)
- [Puter docs — CLI](puter-docs-cli.md)
- [Puter docs — MCP Server](puter-docs-mcp-server.md)
