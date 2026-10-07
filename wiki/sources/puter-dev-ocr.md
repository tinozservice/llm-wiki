---
title: "Puter developer — OCR API"
type: source
created: 2026-10-07
updated: 2026-10-07
sources: []
tags: [puter, ai, ocr]
---

# Puter developer — OCR API

- **Sumber**: Puter developer — halaman produk *OCR*
- **Penulis**: Puter Technologies Inc.
- **URL**: <https://developer.puter.com/ocr/>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-07
- **Berkas mentah**: `raw/2026/oktober/07/puter developer. OCR API.md`

## TL;DR

Halaman produk OCR: ekstraksi teks dari gambar/PDF lewat satu API `puter.ai.img2txt()` — provider **AWS Textract** dan **Mistral OCR** dapat ditukar dengan satu parameter; tanpa key/server; user-pays.

## Key points

- Input: URL gambar, file yang di-upload, atau Blob; mendukung teks cetak, tulisan tangan, dan PDF multi-halaman.
- Opsi parameter: `provider` (`mistral`, `aws-textract`), `pages` (proses halaman PDF terpilih), `testMode`.
- Use case: digitalisasi dokumen, scan struk, kartu nama, pemroses formulir, screenshot, fitur aksesibilitas, arsip catatan tangan, terjemahan dari gambar.
- Batas input per provider tercatat di [Rate Limits and Quotas](puter-docs-rate-limits.md#ocr) (Textract 10 MB; Mistral 50 MB/1.000 halaman).

## Notable quotes

> "Switch providers by changing one parameter. … No vendor lock-in."

## What this changes

- Melengkapi [docs AI](puter-docs-ai.md) — menegaskan provider konkret OCR (Textract, Mistral).
- Tidak ada kontradiksi.

## Related

- [Puter](../entities/puter.md)
- [Puter docs — AI](puter-docs-ai.md)
- [Puter docs — Rate Limits and Quotas](puter-docs-rate-limits.md)
