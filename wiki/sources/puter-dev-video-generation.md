---
title: "Puter developer — Video Generation API"
type: source
created: 2026-10-07
updated: 2026-10-07
sources: []
tags: [puter, ai, video-generation]
---

# Puter developer — Video Generation API

- **Sumber**: Puter developer — halaman produk *Video Generation*
- **Penulis**: Puter Technologies Inc.
- **URL**: <https://developer.puter.com/video-generation/>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-07
- **Berkas mentah**: `raw/2026/oktober/07/puter developer. Video Generation API.md`

## TL;DR

Halaman produk video generation: `puter.ai.txt2vid()` dengan **OpenAI Sora** dan **Google Veo** (plus model lain) — satu API, tanpa key/server, user-pays. Render nyata butuh beberapa menit; test mode instan.

## Key points

- Contoh model: `sora-2`, `veo-3.0-fast`; ganti provider satu parameter.
- **Test mode**: `txt2vid(prompt, true)` mengembalikan video contoh tanpa memakai kredit — penting untuk pengembangan.
- **Waktu render**: "Real renders can take a couple of minutes"; promise resolve saat video siap — UI harus tetap responsif (spinner).
- Biaya: tiap generasi sukses memakai kredit AI user, **sesuai model, durasi, dan resolusi**.
- Use case: platform konten, tool sosial media, otomasi marketing, konten edukasi, trailer game.

## Notable quotes

> "Each successful generation consumes the user's AI credits in accordance with the model, duration, and resolution requested."

## What this changes

- Melengkapi [docs AI](puter-docs-ai.md): model video konkret (Sora 2, Veo 3.0 Fast) + ekspektasi latensi render.
- Perbandingan lintas layanan: bandingkan dengan video model di katalog lain (mis. Seedance di Tokenra/Token Harbor) — belum ada analisis, dicatat sebagai potensi.
- Tidak ada kontradiksi.

## Related

- [Puter](../entities/puter.md)
- [Puter docs — AI](puter-docs-ai.md)
- [Puter — AI Gateway](puter-ai-gateway.md)
