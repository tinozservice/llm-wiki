---
title: "Getting Started with Puter.js (tutorial)"
type: source
created: 2026-10-07
updated: 2026-10-07
sources: []
tags: [puter, puterjs, tutorial]
---

# Getting Started with Puter.js (tutorial)

- **Sumber**: Puter developer — tutorial *Getting Started with Puter.js*
- **Penulis**: Nariman Jelveh; Puter Technologies Inc.
- **URL**: <https://developer.puter.com/tutorials/getting-started-with-puterjs/>
- **Tanggal publikasi**: 2026-05-18; klip dibuat 2026-10-07
- **Berkas mentah**: `raw/2026/oktober/07/puter developer tutorial. Getting Started with Puter.js.md`

## TL;DR

Tutorial langkah demi langkah: pasang Puter.js (npm atau CDN), lalu langsung pakai — enam contoh resmi memperlihatkan GPT, cloud storage, key-value store, autentikasi otomatis, text-to-speech, dan OCR. Tanpa server, tanpa konfigurasi.

## Key points

- **Instalasi**: `npm install @heyputer/puter.js` + `import { puter } from '@heyputer/puter.js'`; atau CDN `<script src="https://js.puter.com/v2/"></script>` → objek global `puter`.
- **Contoh 1 — GPT**: `puter.ai.chat(prompt, { model: 'openai/gpt-5.4-nano' }).then(puter.print)`.
- **Contoh 2 — cloud storage**: `puter.fs.write('hello.txt', ...)` lalu `puter.fs.read('hello.txt')`.
- **Contoh 3 — key-value store**: `puter.kv.set('user_preference', 'dark_mode')` / `puter.kv.get(...)`.
- **Contoh 4 — autentikasi otomatis**: app bisa dibangun seolah user sudah sign in; Puter memunculkan prompt sign-in saat akses layanan; eksplisit via `puter.auth.isSignedIn()`, `signIn()`, `getUser()`.
- **Contoh 5 — text-to-speech**: `puter.ai.txt2speech(text, { voice: 'Joanna', engine: 'neural', language: 'en-US' })`.
- **Contoh 6 — OCR**: `puter.ai.img2txt(urlGambar)`.
- Posisi produk: Puter **pionir model user-pays**; Puter.js 100% gratis untuk app dan open source; cocok dengan Codex, Claude Code, **OpenCode**, Cursor, Replit, Lovable, Bolt.new.
- Fitur lain yang disebut: hosting situs statis (playground), generate gambar dengan AI.

## Notable quotes

> "Puter is the pioneer of the 'User-Pays' model, which allows developers to incorporate AI capabilities into their applications while users cover their own usage costs."

> "Puter.js handles authentication automatically. When your code tries to access any cloud services, the user will be prompted to sign in with their Puter.com account if they haven't already."

## What this changes

- Sumber kedua (setelah halaman indeks docs) yang menyebut **OpenCode** sebagai tool yang kompatibel dengan Puter.js.
- Dibuat: [Puter](../entities/puter.md) — melengkapi bagian "Puter.js".
- Tidak ada kontradiksi.

## Related

- [Puter](../entities/puter.md)
- [Puter — Getting Started](puter-docs-getting-started.md)
- [Puter.js Documentation (indeks)](puter-docs-puterjs.md)
- [Puter docs — AI](puter-docs-ai.md)
