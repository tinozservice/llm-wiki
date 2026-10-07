---
title: "Puter.js Documentation (indeks)"
type: source
created: 2026-10-07
updated: 2026-10-07
sources: []
tags: [puter, puterjs, docs]
---

# Puter.js Documentation (indeks)

- **Sumber**: Puter.js documentation — halaman indeks
- **Penulis**: Puter Technologies Inc.
- **URL**: <https://docs.puter.com/>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-07
- **Berkas mentah**: `raw/2026/oktober/07/puter docs. Puter.js Documentation.md`

## TL;DR

Halaman indeks dokumentasi Puter.js: satu `<script>` tag (atau npm) memberi akses ke **auth, cloud storage, database, dan AI (Claude, GPT, Gemini, dan 500+ model lain)** — tanpa API key dan tanpa infrastruktur. Developer membayar $0 karena tiap user menutup pemakaian sendiri.

## Key points

- **Kemampuan inti**: auth, cloud storage, database, AI 500+ model — semuanya dari frontend.
- **Dirancang untuk agen AI**: Claude Code, Codex, **OpenCode**, Lovable, Replit dapat menghasilkan aplikasi lengkap sekali jalan; API kecil & konsisten; referensi lengkap dipublikasikan sebagai [`llms.txt`](https://docs.puter.com/llms.txt).
- **Model bisnis**: "you as the developer pay nothing since each user of your app covers their own Cloud and AI usage"; berlaku untuk 1 atau 1 juta user (lihat [User-Pays Model](../concepts/user-pays-model.md)).
- **Privasi (klaim)**: powered by Puter, cloud OS open source dengan fokus privasi — tidak memakai teknologi tracking, tidak memonetisasi/mengumpulkan data pribadi.
- **Contoh kode di halaman ini**:
  - `puter.fs.write/read` — tulis & baca file di cloud.
  - `puter.kv.set/get` — simpan preferensi user di key-value store.
  - `puter.ai.chat(prompt, { model: "gpt-5.6-luna" })` — chat dengan model.
  - Analisis gambar (vision) dan `txt2img` dengan `testMode`.
  - Streaming respons (`gemini-3.5-flash-lite`, `stream: true`).
  - Hosting situs statis: `puter.hosting.create(subdomain, dir)` → `https://<subdomain>.puter.site`.
  - `puter.auth.signIn()` dan `puter.net.fetch()` (tanpa batasan CORS).

## Notable quotes

> "Puter.js gives you access to auth, cloud storage, databases, and AI (Claude, GPT, Gemini, and 500+ other models) with no API keys and no infrastructure setup."

> "Whether your app has 1 user or 1 million users, it costs you zero to run."

## What this changes

- Menyebut **OpenCode** sebagai salah satu AI coding tool yang didukung Puter.js — titik sambung dengan [OpenCode](../entities/opencode.md).
- Dibuat: [Puter](../entities/puter.md); [Getting Started](puter-docs-getting-started.md) melengkapi detail instalasi.
- Tidak ada kontradiksi.

## Related

- [Puter](../entities/puter.md)
- [Puter — The Backend for AI-Generated Apps](puter-backend-for-ai-apps.md)
- [Puter docs — AI](puter-docs-ai.md)
- [User-Pays Model](../concepts/user-pays-model.md)
- [OpenCode](../entities/opencode.md)
