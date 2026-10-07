---
title: "Building an AI-Powered RAG Application (tutorial)"
type: source
created: 2026-10-07
updated: 2026-10-07
sources: []
tags: [puter, tutorial, rag, function-calling]
---

# Building an AI-Powered RAG Application (tutorial)

- **Sumber**: Puter developer — tutorial *Building an AI-Powered RAG Application with Puter.js*
- **Penulis**: Reynaldi Chernando; Puter Technologies Inc.
- **URL**: <https://developer.puter.com/tutorials/build-ai-rag-application-with-puter-js/>
- **Tanggal publikasi**: 2026-06-11; klip dibuat 2026-10-07
- **Berkas mentah**: `raw/2026/oktober/07/puter developer tutorial. Building an AI-Powered RAG Application with Puter.js.md`

## TL;DR

Tutorial membangun **"Stampy"** — aplikasi RAG untuk "mengobrol dengan situs web mana pun", sepenuhnya serverless: crawl sitemap via `puter.net.fetch` (tanpa CORS), simpan dokumen di `puter.fs`, metadata situs di `puter.kv`, indeks pencarian **MiniSearch** di file, dan chat AI dengan **function calling** yang memutuskan kapan harus mencari dokumen.

## Key points

- **Tiga tahap**: (1) crawl & store — fetch sitemap, parse URL, ekstrak teks halaman → tulis ke FS; (2) indeks — MiniSearch (`fields: ["title","text"]`) diserialisasi ke `${hostname}/index.json` di FS; (3) chat — tool `search_documents` + `tools` ke `puter.ai.chat()`.
- **Pemisahan storage**: `puter.fs` untuk konten berat; `puter.kv` untuk metadata situs (daftar `websites` — id, hostname, sitemap URL, index path) — keduanya persist per akun user.
- **Alur function calling 2 langkah**: panggilan pertama dengan `tools` & `stream: false` → jika ada `tool_calls`, jalankan pencarian (top-5), kirim balik sebagai role `tool` → panggilan kedua dengan `stream: true` untuk jawaban final.
- Model contoh: `openrouter:google/gemini-3.5-flash-lite` — sintaks namespace `openrouter:` untuk model via OpenRouter.
- **Demo**: <https://stampy.puter.site/>; kode: [github.com/Puter-Apps/stampy](https://github.com/Puter-Apps/stampy).

## Notable quotes

> "Function calling works by giving the AI a list of 'tools' it can use. … the AI autonomously decides when to call them based on the conversation."

## What this changes

- Sumber pertama di wiki yang mendokumentasikan **pola RAG end-to-end** dengan komponen Puter (networking+FS+KV+AI) — berguna dibandingkan dengan konsep [Prompt Caching](../concepts/prompt-caching.md) untuk beban konteks berulang.
- Konfirmasi sintaks pemanggilan model lintas-provider via prefix (`openrouter:`).
- Tidak ada kontradiksi.

## Related

- [Puter](../entities/puter.md)
- [Puter tutorial — How to Add an AI Chatbot](puter-tutorial-chatbot.md)
- [Puter tutorial — How to Use Puter.js Key-Value Store API](puter-tutorial-kv-store.md)
- [Puter docs — Networking](puter-docs-networking.md)
