---
title: "How to Use Puter.js Key-Value Store API (tutorial)"
type: source
created: 2026-10-07
updated: 2026-10-07
sources: []
tags: [puter, tutorial, kv, design-patterns]
---

# How to Use Puter.js Key-Value Store API (tutorial)

- **Sumber**: Puter developer — tutorial *How to Use Puter.js Key-Value Store API*
- **Penulis**: Reynaldi Chernando; Puter Technologies Inc.
- **URL**: <https://developer.puter.com/tutorials/kv-guide/>
- **Tanggal publikasi**: 2026-05-18; klip dibuat 2026-10-07
- **Berkas mentah**: `raw/2026/oktober/07/puter developer tutorial. How to Use Puter.js Key-Value Store API.md`

## TL;DR

Panduan desain KV paling dalam di wiki: dari CRUD & counter atomik sampai pola produksi — desain key sebagai filter, embed vs key terpisah, update parsial (dot notation), TTL, pagination cursor, agregat pra-hitung, dan version tracking. Intinya: **desain key dari cara data akan dibaca**.

## Key points

- **Dasar**: `set` = upsert; `incr`/`decr` atomik (aman concurrent); nilai bisa objek/array bertingkat.
- **Desain key**: prefix adalah filter → `user:42:post:*`; encode filter ke key (`order:active:100`) agar read instan, tukar dengan delete+create saat status berubah.
- **Embed vs key terpisah**: embed jika selalu dibaca bersama (order+items); pisah jika anak sering diakses/diubah sendiri — join di kode app.
- **Many-to-many**: tulis dua arah (`student:5:course:*` & `course:cs101:student:*`) — duplikasi sebagai trade-off read tanpa join.
- **Update parsial**: `update()` dot notation (`'stats.score': 25`), `add()` append array, `remove()` hapus field — tanpa read-modify-write.
- **List & pagination**: glob prefix (`list('user:42:post:*', true)` untuk key+value); cursor (`list({ limit: 10 })` → `cursor`).
- **Sorting lexicographic**: ISO timestamp otomatis benar; angka wajib zero-pad (`item:001`) atau `item:10` mendahului `item:2`; trik range query: `list('log:2025-03*')`.
- **TTL**: `expire(key, detik)` / `expireAt(key, ts)`; habis → `get()` = null tanpa cleanup; `flush()` = reset penuh store app; **soft delete** via flag `deleted`.
- **Pola lanjutan**: parallel reads (`Promise.all`), **agregat pra-hitung** (`incr` counter postcount), version tracking optimistik (`version` di nilai).
- Konteks: KV cocok untuk AI coding (satu script tag, tanpa credential yang bocor); data terisolasi per app per user.

## Notable quotes

> "With KV, it's the other way around: you start with how you want to read your data, and design your keys around that. Your key naming convention becomes your filter."

## What this changes

- Menjadikan [docs KV](puter-docs-key-value-store.md) sebagai referensi API dan tutorial ini sebagai **referensi pola** — memperkuat bagian KV di [Puter](../entities/puter.md).
- Konsep yang dapat dipakai lintas penyedia: desain key-as-filter & agregat pra-hitung adalah pola umum KV-store (bandingkan pola Redis/DynamoDB yang disebut di klip lain).
- Tidak ada kontradiksi.

## Related

- [Puter](../entities/puter.md)
- [Puter docs — Key-Value Store](puter-docs-key-value-store.md)
- [Puter developer — NoSQL Database Without the Setup](puter-dev-nosql.md)
- [Puter tutorial — Building an AI-Powered RAG Application](puter-tutorial-rag.md)
