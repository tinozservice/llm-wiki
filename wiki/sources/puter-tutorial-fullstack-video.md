---
title: "Build and Deploy a Full-Stack AI App (video course)"
type: source
created: 2026-10-07
updated: 2026-10-07
sources: []
tags: [puter, tutorial, video, react, workers]
---

# Build and Deploy a Full-Stack AI App (video course)

- **Sumber**: YouTube (JavaScript Mastery) — kursus video *Build and Deploy a Full-Stack AI App (Completely Free)* (Roomify)
- **Penulis**: JavaScript Mastery (Adrian); dipromosikan bersama Puter Technologies Inc.
- **URL**: <https://www.youtube.com/watch?v=JiwTGGGIhDs>
- **Tanggal publikasi**: 2026-02-13; klip dibuat 2026-10-07
- **Berkas mentah**: `raw/2026/oktober/07/puter developer tutorial YT. Build and Deploy a Full-Stack AI App (Completely Free).md`

> **Catatan**: berkas mentah adalah **transkrip video ≈30.000 kata** (durasi ~3 jam). Ringkasan ini disusun dari metadata, daftar bab (timestamp), dan bagian intro — bukan pembacaan penuh transkrip.

## TL;DR

Kursus video membangun **Roomify** — SaaS visualisasi arsitektur dengan React + TypeScript + **Puter.js**: ubah denah 2D menjadi render 3D fotorealistis, dengan hosting media permanen, galeri proyek, fitur banding, dan feed komunitas. Menampilkan penggunaan **serverless workers** dan KV dalam aplikasi nyata.

## Key points

- **Fitur yang dibangun** (dari intro): visualisasi 2D→3D instan; **persistent media hosting** dengan URL publik permanen; galeri proyek pribadi; **side-by-side comparison** (karya sumber vs render AI); **community feed** (share satu klik); toggle public/private; kepemilikan data yang jelas (metadata + user ID); alur "export ke dunia nyata".
- **Susunan bab** (dari timestamp): Introduction → Project Setup → Navbar → Authentication → Homepage → Upload Files → Project Architecture → Hosting Images → Create Project → **Generate 3D Design** → **Worker in Action** → Display Data → Compare Designs → **Deployment**.
- Narasi pembuka menyerang "infrastructure tax": tanpa S3, database terpisah, server backend, kartu kredit, atau manajemen API key — semua digantikan Puter.js (storage + database + AI + workers).
- Model AI disebut "from Claude to Gemini"; showcase komunitas dan deploy gratis dengan user-pays.

## Notable quotes

> "What if you could skip all that and build a production-grade AI application with instant access to powerful models … without a single external subscription, no credit card on file, and zero API key management."

## What this changes

- Demonstrasi lander penggunaan **workers + KV + hosting media** (fitur yang didokumentasikan di [docs Workers](puter-docs-serverless-workers.md) & [docs KV](puter-docs-key-value-store.md)) di aplikasi produksi.
- Sumber kedua (bersama [kursus ATS](puter-tutorial-ats-video.md)) membuktikan peran komunitas/kursus pihak ketiga dalam ekosistem Puter.
- Tidak ada kontradiksi.

## Related

- [Puter](../entities/puter.md)
- [Puter docs — Serverless Workers](puter-docs-serverless-workers.md)
- [Puter docs — Hosting](puter-docs-hosting.md)
- [Puter tutorial — Build and Deploy a Full AI-Powered ATS (video)](puter-tutorial-ats-video.md)
