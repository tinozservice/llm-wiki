---
title: "Anthropic docs — Claude Mythos 5.1"
type: source
created: 2026-10-08
updated: 2026-10-08
sources: []
tags: [anthropic, claude, mythos, model, safeguards]
---

# Anthropic docs — Claude Mythos 5.1

- **Sumber**: platform.claude.com — dokumentasi model *Claude Mythos 5.1 overview* (klip juga memuat materi *Model IDs and versioning*)
- **Penulis**: Anthropic
- **URL**: <https://platform.claude.com/docs/en/models/mythos-5-1/overview>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-08
- **Berkas mentah**: `raw/2026/oktober/08/Claude Mythos 5.1.md`

## TL;DR

**Claude Mythos 5.1** adalah **model yang sama dengan Fable 5.1** (spesifikasi & harga identik: $10/$50, cache read $0,25/M, 1M konteks, 128K output, adaptive thinking) tetapi **hanya tersedia untuk organisasi terverifikasi** lewat program seperti **Cyber Verification Program** (dan Life Sciences Verification Program di [halaman Mythos](anthropic-mythos.md)). Akses: ajukan lewat program yang sesuai atau tim akun Anthropic/AWS/Google Cloud.

## Key points

- Spesifikasi lengkap sama dengan [Fable 5.1](anthropic-fable-51.md): 1M / 128K / adaptive always-on / effort `high` / latensi "slower".
- **Model IDs** (bagian docs yang ikut terklip): ID dateless generasi 4.6+ adalah **snapshot tetap**, bukan pointer evergreen; alias hanya berlaku untuk model pra-4.6; setiap ID punya jadwal deprecation sendiri; serving infrastructure dapat berubah (router, classifier, sampling) tanpa perubahan bobot.
- System card gabungan Fable 5.1 & Mythos 5.1.

## Notable quotes

> "Claude Mythos 5.1 is available only to organizations verified through Anthropic's verification programs."

## What this changes

- Melengkapi [Anthropic](../entities/anthropic.md): Mythos = tier "verified-only" (dual-use cyber/bio).
- Tidak ada kontradiksi.

## Related

- [Anthropic](../entities/anthropic.md)
- [Fable 5.1](anthropic-fable-51.md) · [Claude Mythos (halaman produk)](anthropic-mythos.md)
