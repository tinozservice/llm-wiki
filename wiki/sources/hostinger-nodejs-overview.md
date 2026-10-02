---
title: "Hostinger — Node.js Hosting Overview"
type: source
created: 2026-10-02
updated: 2026-10-02
sources: []
tags: [hostinger, nodejs, hosting]
---

# Hostinger — Node.js Hosting Overview

- **Sumber**: Hostinger — dokumentasi Node.js, Overview
- **Penulis**: tidak dicantumkan
- **URL**: <https://docs.hostinger.com/node.js/overview>
- **Tanggal publikasi**: 2026-09-23; klip dibuat 2026-10-02
- **Berkas mentah**: `raw/2026/oktober/02/Hostinger Node.js Hosting Overview _ Hostinger Documentation.md`

## TL;DR

Hostinger menyediakan **managed Node.js hosting** (di hPanel disebut **Web Apps**) untuk full-stack app dan API tanpa mengelola server. Alur: kirim kode (GitHub/arsip/Connector) → konfigurasi → build → run. Proses berjalan **on-demand** (dihentikan saat idle, start otomatis saat ada request) dan restart otomatis bila crash.

## Key points

- **Sumber build**: GitHub (auto-deploy tiap push), arsip (`.zip/.tar/.tar.gz/.tgz`), atau Hostinger Connector (VS Code, Cursor, Claude Code).
- **Node.js**: versi 18, 20 (LTS), 22 (LTS), 24; LTS disarankan untuk produksi.
- **Framework**: Next.js, Nuxt, Express, NestJS, Fastify, Hono, Nitro, React Router, Astro, SvelteKit, Gatsby, dll. — auto-detect dari `package.json`.
- **Entry file** wajib untuk server app (Express, NestJS, Fastify, Hono; SSR Nuxt/Nitro/React Router/Astro/SvelteKit) — ekstensi `.js/.mjs/.cjs`. Frontend statis dan Next.js tidak perlu (Next selalu server mode, ditangani Hostinger).
- API tersedia untuk memulai build secara programatik.

## Notable quotes

> "Node.js apps on Hostinger run on demand. After a period without incoming traffic, your app's process is stopped automatically to free up server resources."

## What this changes

- Memulai domain **web hosting** di wiki; entitas [Hostinger](../entities/hostinger.md) dibuat.
- Tidak ada kontradiksi.

## Related

- [Hostinger](../entities/hostinger.md)
- [Hostinger — Creating a Node.js App](hostinger-nodejs-creating-app.md)
- [Hostinger — Supported Frameworks](hostinger-nodejs-frameworks.md)
