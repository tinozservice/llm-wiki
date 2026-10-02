---
title: "Hostinger — Build Settings"
type: source
created: 2026-10-02
updated: 2026-10-02
sources: []
tags: [hostinger, nodejs, build]
---

# Hostinger — Build Settings

- **Sumber**: Hostinger — dokumentasi Node.js, Build Settings
- **Penulis**: tidak dicantumkan
- **URL**: <https://docs.hostinger.com/node.js/build-settings>
- **Tanggal publikasi**: 2026-09-23; klip dibuat 2026-10-02
- **Berkas mentah**: `raw/2026/oktober/02/hostinger node.js Build Settings _ Hostinger Documentation.md`

## TL;DR

Referensi lengkap konfigurasi build Node.js di Hostinger: Node version (default **22**), application type, root directory (monorepo), build script, output directory (nilai umum per framework), entry file (relatif root vs output), package manager, source type, archive path, auto-detect, dan batas build.

## Key points

- Node: 18/20/22/24; proyek dengan versi <18 dibangun di Node 18.
- **Output directory** khas: Next `.next`; Nuxt/Nitro `.output`/`dist`; Astro `dist`; SvelteKit `build`/`dist`; CRA/React Router `build`; Gatsby `public`; Angular `dist/<project>`; NestJS `dist`; Express/Fastify/Hono kosong (seluruh root termasuk `node_modules`).
- **Entry file**: Express/Fastify/Hono/React Router/Other relatif root (`server.js`); NestJS/Astro/SvelteKit/Nuxt/Nitro relatif output (`main.js`); Next diabaikan. Jangan ulangi nama output directory (mis. `dist/main.js` salah).
- Entry kosong = deploy sebagai situs statis (Astro, SvelteKit, Nuxt, Nitro, React Router).
- Package manager auto-detect dari lockfile; archive path menerima `.zip/.tar/.tar.gz/.tgz/.gz/.7z`.
- **Batas build**: satu deployment per situs (antrean hingga 20); install dependensi dan build script masing-masing maks **15 menit**; log 10 build terakhir disimpan.
- Auto-detect via hPanel atau API (Get Build Settings from Archive/Repository).

## Notable quotes

> "Don't repeat the output directory in the entry file."

## What this changes

- Melengkapi [Hostinger](../entities/hostinger.md) (referensi teknis build).
- Tidak ada kontradiksi.

## Related

- [Hostinger](../entities/hostinger.md)
- [Hostinger — Creating a Node.js App](hostinger-nodejs-creating-app.md)
- [Hostinger — Supported Frameworks](hostinger-nodejs-frameworks.md)
