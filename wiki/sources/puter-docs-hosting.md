---
title: "Puter docs — Hosting"
type: source
created: 2026-10-07
updated: 2026-10-07
sources: []
tags: [puter, hosting, api]
---

# Puter docs — Hosting

- **Sumber**: Puter.js documentation — halaman *Hosting*
- **Penulis**: Puter Technologies Inc.
- **URL**: <https://docs.puter.com/Hosting/>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-07
- **Berkas mentah**: `raw/2026/oktober/07/puter docs. Hosting.md`

## TL;DR

API hosting **programatik**: create/list/update/get/delete kepemilikan subdomain `*.puter.site` — menunjuk sebuah direktori (di file system Puter) untuk disajikan sebagai situs statis. Cocok untuk website builder, static site generator, atau tool deploy.

## Key points

- **Fungsi**: `puter.hosting.create(subdomain, dirName)` → situs live di `https://<subdomain>.puter.site`; `list()`, `update(subdomain, newDir)` (pindah root), `get(subdomain)`, `delete(subdomain)`.
- Bisa membuat situs kosong (`.`) lalu mengisinya nanti; mengubah root situs = satu panggilan `update`.
- Use case yang disebut dokumen: website builder, static site generator, dan deployment tool yang butuh kontrol programatik atas hosting.

## Notable quotes

> "It is mainly used to expose files to the internet, where users can get their content from a public URL."

## What this changes

- Melengkapi [Puter](../entities/puter.md) dengan jalur hosting **API** (padanan programatik dari UI puter.com dan CLI — lihat [Deployments](puter-docs-deployments.md)).
- Tidak ada kontradiksi.

## Related

- [Puter](../entities/puter.md)
- [Puter docs — Deployments](puter-docs-deployments.md)
- [Puter docs — Site Configuration](puter-docs-site-configuration.md)
- [Puter docs — CLI](puter-docs-cli.md)
