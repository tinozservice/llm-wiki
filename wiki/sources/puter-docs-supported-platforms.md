---
title: "Puter docs — Supported Platforms"
type: source
created: 2026-10-07
updated: 2026-10-07
sources: []
tags: [puter, platforms, nodejs]
---

# Puter docs — Supported Platforms

- **Sumber**: Puter.js documentation — halaman *Supported Platforms*
- **Penulis**: Puter Technologies Inc.
- **URL**: <https://docs.puter.com/supported-platforms/>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-07
- **Berkas mentah**: `raw/2026/oktober/07/puter docs. Supported Platforms.md`

## TL;DR

Puter.js berjalan di mana pun ada JavaScript: **website** (NPM/CDN; ESM & CommonJS), **Puter Apps** (auth otomatis + integrasi desktop), **Node.js** (init dengan token), dan **Serverless Workers**. Konteks tanpa origin (`file://`, iframe sandbox tanpa `allow-same-origin`) tidak didukung.

## Key points

- **Website**: `npm install @heyputer/puter.js` (`import { puter }` / `import puter` / `require`) atau CDN `https://js.puter.com/v2/`; cocok dari static HTML sampai Next.js/Nuxt/SvelteKit.
- **Konteks tak didukung**: halaman dari disk (`file:///`) dan iframe tanpa `allow-same-origin` — browser tidak memberi origin; Puter.js menampilkan dialog "Unsupported Origin" dan `signIn()` gagal `unsupported_origin`. Solusi: sajikan lewat server (`http-server`/`python3 -m http.server`) atau tambahkan `allow-same-origin`.
- **Starter templates web**: Angular, React, Next.js, Vue.js, Vanilla JS.
- **Puter Apps**: berjalan di desktop OS Puter — auth otomatis, komunikasi antar-app, integrasi file system, integrasi cloud desktop; ekosistem mengklaim **60.000+ aplikasi live** (Notepad, File Explorer, Code Editor, dsb.).
- **Node.js**: `init(process.env.puterAuthToken)`; template Node+Express tersedia; `getAuthToken()` untuk tool CLI ber-browser.
- **Serverless Workers**: pakai Puter.js untuk AI/storage/KV dari endpoint HTTP worker.

## Notable quotes

> "Puter identifies your app by its origin, so a page the browser gives no origin to cannot be signed in."

> "The Puter ecosystem hosts over 60,000 live applications."

## What this changes

- Melengkapi [Puter](../entities/puter.md): matriks platform resmi (website/desktop/Node/worker) + syarat origin.
- **Catatan angka**: klaim "60.000+ aplikasi live" di sini vs "130K+ apps powered" di halaman [backend](puter-backend-for-ai-apps.md) — kemungkinan metrik berbeda (live di ekosistem vs total dibuat); dicatat, tidak ditimpa.
- Tidak ada kontradiksi.

## Related

- [Puter](../entities/puter.md)
- [Puter docs — Framework Integrations](puter-docs-framework-integrations.md)
- [Puter docs — Getting Started](puter-docs-getting-started.md)
- [Puter docs — Serverless Workers](puter-docs-serverless-workers.md)
