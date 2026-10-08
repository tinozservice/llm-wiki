---
title: "Anthropic docs — Claude Fable 5.1"
type: source
created: 2026-10-08
updated: 2026-10-08
sources: []
tags: [anthropic, claude, fable, model]
---

# Anthropic docs — Claude Fable 5.1

- **Sumber**: platform.claude.com — dokumentasi model *Claude Fable 5.1 overview* (klip juga memuat materi *Choosing a model* & *Model IDs and versioning*)
- **Penulis**: Anthropic
- **URL**: <https://platform.claude.com/docs/en/models/fable-5-1/overview>
- **Tanggal publikasi**: tidak dicantumkan (rilis disebut: **1 Sep 2026**); klip dibuat 2026-10-08
- **Berkas mentah**: `raw/2026/oktober/08/Claude Fable 5.1.md`

## TL;DR

**Claude Fable 5.1** — "Anthropic's most capable model open to all customers": **$10/$50 per 1M token** (sama dengan Fable 5), **cache read $0,25/M** (seperempat biaya Fable 5), untuk reasoning berat & kerja agentic long-horizon. **Claude Mythos 5.1** = kapabilitas & harga sama, hanya untuk organisasi terverifikasi. Fable 5.1 menambahkan perbaikan long-running coding, riset multistep, dan dokumen/spreadsheet/slide.

## Key points

- **Perubahan breaking dari Fable 5**: forced tool use error; thinking blocks terikat model yang membuatnya; mengedit turn sebelumnya membatalkan thinking blocks.
- **Fitur aditif**: per-message effort (beta), turn-scoped system messages (beta), progress updates antar tool call (`display: "updates"`, beta), harga cache read turun, **content provenance**.
- **Spesifikasi** (sama untuk Mythos 5.1): 1M konteks; 128K output; adaptive thinking always-on; default effort `high`; latensi "slower"; knowledge/training cutoff Jun 2026; platform lengkap (API, Bedrock, Google Cloud, Foundry, Claude Platform on AWS).
- **Lifecycle**: rilis 1 Sep 2026; retirement tidak lebih cepat dari 1 Sep 2027.
- **Model IDs** (bagian docs yang ikut terklip): sejak generasi 4.6, ID **tanpa tanggal** = snapshot tetap (bukan alias evergreen); ID pra-4.6 memakai tanggal (`claude-sonnet-4-5-20250929`); Bedrock `anthropic.claude-…`, Google Cloud `@YYYYMMDD`; infrastruktur serving (router, classifier) bisa berubah tanpa perubahan bobot.
- System card gabungan Fable 5.1 + Mythos 5.1 tersedia.

## Notable quotes

> "Claude Fable 5.1 extends Claude Fable 5 at the same input and output prices, with cache reads at a quarter of the cost."

## What this changes

- Melengkapi lineup resmi [Anthropic](../entities/anthropic.md) (tier tertinggi yang terbuka umum).
- Materi model IDs memperjelas konvensi penamaan model Anthropic di wiki.
- Tidak ada kontradiksi.

## Related

- [Anthropic](../entities/anthropic.md)
- [Mythos 5.1](anthropic-mythos-51.md) · [Pricing](anthropic-pricing.md) · [Choosing the right model](anthropic-choosing-model.md)
