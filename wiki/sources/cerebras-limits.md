---
title: "Cerebras — Cloud Limits"
type: source
created: 2026-10-01
updated: 2026-10-01
sources: []
tags: [cerebras, rate-limits]
---

# Cerebras — Cloud Limits

- **Sumber**: Cerebras Cloud — halaman Limits organisasi (dashboard)
- **Penulis**: tidak dicantumkan
- **URL**: <https://cloud.cerebras.ai/platform/org_redacted/project/prj_redacted/limits>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-01
- **Berkas mentah**: `raw/2026/oktober/01/Cerebras Cloud. limits.md`

## TL;DR

Snapshot limit organisasi pada klip: **qwen-3.8-27b** 450 request/menit (648.000/hari), 750K total token/menit (1,08 miliar/hari), 150K uncached token/menit (216 juta/hari), hingga 10 gambar/request; **gpt-oss-120b** 5 request/menit (2.400/hari), 90K total token/menit (3 juta/hari), 30K uncached token/menit (1 juta/hari). Limit dapat ditegakkan dalam interval lebih pendek (mis. 60 RPM → 1 request/detik).

## Key points

- Limit dihitung per model dengan kategori: Requests, Total tokens, Uncached tokens, Images.
- Konteks & output: qwen 131.072 context / 40.960 completion; gpt-oss 131.000 / 40.000.
- Limit bergantung organisasi/tier; halaman ini snapshot akun bersangkutan (bukan tabel tier umum).
- Untuk limit per tier, lihat halaman model masing-masing.

| Model | Requests | Total tokens | Uncached tokens | Gambar |
| --- | --- | --- | --- | --- |
| qwen-3.8-27b | 450/menit; 648K/hari | 750K/menit; 1,08B/hari | 150K/menit; 216M/hari | 10/request |
| gpt-oss-120b | 5/menit; 2,4K/hari | 90K/menit; 3M/hari | 30K/menit; 1M/hari | — |

## Notable quotes

> "You may experience rate limits over shorter time intervals. For example, a rate limit of 60 requests per minute (RPM) may be enforced as 1 requests per second."

## What this changes

- Melengkapi entitas [Cerebras](../entities/cerebras.md).
- Tidak ada kontradiksi; angka organisasi berbeda dari tabel tier di halaman model (Free Trial/Developer) — dicatat sebagai konteks berbeda.

## Related

- [Cerebras](../entities/cerebras.md)
- [Cerebras — OpenAI GPT OSS](cerebras-gpt-oss.md)
- [Cerebras — Qwen 3.8 27B](cerebras-qwen-38-27b.md)
