---
title: "Puter docs — Framework Integrations"
type: source
created: 2026-10-07
updated: 2026-10-07
sources: []
tags: [puter, frameworks, integration]
---

# Puter docs — Framework Integrations

- **Sumber**: Puter.js documentation — halaman *Framework Integrations*
- **Penulis**: Puter Technologies Inc.
- **URL**: <https://docs.puter.com/frameworks/>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-07
- **Berkas mentah**: `raw/2026/oktober/07/puter docs. Framework Integrations.md`

## TL;DR

Puter.js **framework-agnostic** — pasang npm lalu import di komponen mana pun. Halaman ini memberi contoh untuk React, Next.js, Angular, Vue, Svelte, dan Astro, masing-masing dengan template repo.

## Key points

- Instalasi seragam: `npm install @heyputer/puter.js` → `import puter from "@heyputer/puter.js"`.
- **React**: pakai di `useEffect`/handler; template [HeyPuter/react](https://github.com/HeyPuter/react).
- **Next.js**: tambahkan `"use client"` (butuh API browser); Next.js ≤15 perlu Turbopack, versi 16+ sudah default; template [HeyPuter/next.js](https://github.com/HeyPuter/next.js).
- **Angular / Vue / Svelte / Astro**: import dan panggil dari komponen/script; masing-masing punya template repo resmi.
- Framework lain: pendekatan sama — asal mendukung **ES modules**.

## Notable quotes

> "Puter.js is designed to be framework-agnostic. This means you can use it with practically any web framework."

## What this changes

- Melengkapi [Puter](../entities/puter.md): jalur integrasi resmi per framework (selaras dengan klaim "works with any modern framework" di halaman backend).
- Tidak ada kontradiksi.

## Related

- [Puter](../entities/puter.md)
- [Puter docs — Supported Platforms](puter-docs-supported-platforms.md)
- [Puter docs — Getting Started](puter-docs-getting-started.md)
