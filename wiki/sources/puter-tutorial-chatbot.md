---
title: "How to Add an AI Chatbot to Your Website (tutorial)"
type: source
created: 2026-10-07
updated: 2026-10-07
sources: []
tags: [puter, tutorial, chatbot]
---

# How to Add an AI Chatbot to Your Website (tutorial)

- **Sumber**: Puter developer — tutorial *How to Add an AI Chatbot to Your Website*
- **Penulis**: Reynaldi Chernando; Puter Technologies Inc.
- **URL**: <https://developer.puter.com/tutorials/add-ai-chatbot-to-your-website/>
- **Tanggal publikasi**: 2026-05-04; klip dibuat 2026-10-07
- **Berkas mentah**: `raw/2026/oktober/07/puter developer tutorial. How to Add an AI Chatbot to Your Website.md`

## TL;DR

Tutorial praktis: menambahkan widget chatbot ke situs apa pun dalam ~200 baris JavaScript murni (tanpa framework/build step). Chatbot membaca **konten halaman sebagai konteks**, menjawab pertanyaan visitor secara streaming, dan user menanggung biayanya.

## Key points

- **Cara kerja**: tombol mengapung di kanan bawah → panel chat → visitor sign in akun Puter saat pesan pertama → skrip membaca `document.body.innerText` (dipotong **8.000 karakter pertama**) sebagai system prompt → `puter.ai.chat(conversation, false, { model: "gpt-5.4-nano", stream: true })` → jawaban mengalir ke panel.
- System prompt-nya menekankan "service mode": jawab seperlunya, tanpa ringkasan tak diminta, hanya dari konten halaman; output teks polos (tanpa markdown).
- Riwayat percakapan disimpan di array `conversation` agar follow-up nyambung.
- Model contoh `gpt-5.4-nano` (cepat & murah) bisa diganti ke "400+ model" Puter.
- Klaim biaya: developer $0; "new accounts get free credits, so most visitors can use the chatbot without paying anything either".

## Notable quotes

> "The chatbot uses the visible text on your page as context."

## What this changes

- Sumber pertama yang **mengkuantisasi** pola "page-as-context": 8.000 karakter innerText → praktis untuk wiki ini (bandingkan analisis beban konteks Token Harbor).
- Memperkuat klaim user-pays dari sisi UX (free credits untuk visitor baru).
- Tidak ada kontradiksi.

## Related

- [Puter](../entities/puter.md)
- [User-Pays Model](../concepts/user-pays-model.md)
- [Puter tutorial — Building an AI-Powered RAG Application](puter-tutorial-rag.md)
