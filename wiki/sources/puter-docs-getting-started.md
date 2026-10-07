---
title: "Puter — Getting Started"
type: source
created: 2026-10-07
updated: 2026-10-07
sources: []
tags: [puter, puterjs, getting-started]
---

# Puter — Getting Started

- **Sumber**: Puter.js documentation — halaman *Getting Started*
- **Penulis**: Puter Technologies Inc.
- **URL**: <https://docs.puter.com/getting-started/>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-07
- **Berkas mentah**: `raw/2026/oktober/07/puter docs. Getting Started.md`

## TL;DR

Cara mulai memakai Puter.js: lewat **npm** (`@heyputer/puter.js`) atau **CDN** (`https://js.puter.com/v2/`). Di Node.js perlu *auth token*; di browser tidak perlu apa pun selain menyajikan halaman lewat server — Puter mengidentifikasi aplikasi dari **origin**-nya.

## Key points

- **NPM**: `npm install @heyputer/puter.js` lalu `import { puter } from "@heyputer/puter.js";`
- **Node.js**: inisialisasi dengan token — `import { init } from "@heyputer/puter.js/src/init.cjs"; const puter = init(process.env.puterAuthToken);` — token bisa didapat via `getAuthToken()` (browser-based auth).
- **CDN** (satu baris): `<script src="https://js.puter.com/v2/"></script>` — lalu `puter` global tersedia.
- **Penting — halaman harus disajikan lewat server**: "Puter identifies your app by its origin, and a page opened straight from disk (`file:///`) has none." Contoh: `python3 -m http.server` lalu buka `http://localhost:8000`.
- Tersedia **starter templates** (tidak dirinci di klip).
- Langkah lanjut menurut dokumen: **Tutorials**, **Playground**, dan **Examples**.

## Notable quotes

> "Serve this page rather than double-clicking it. Puter identifies your app by its origin, and a page opened straight from disk (`file:///`) has none."

## What this changes

- Detail operasional penting untuk pemakaian: identitas aplikasi = origin → lokal pun harus via server; Node.js butuh token.
- Dibuat: [Puter](../entities/puter.md) — bagian "Puter.js".
- Tidak ada kontradiksi.

## Related

- [Puter](../entities/puter.md)
- [Puter.js Documentation](puter-docs-puterjs.md)
- [Getting Started with Puter.js (tutorial)](puter-tutorial-getting-started.md)
