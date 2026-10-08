---
title: "Claude Opus (halaman produk) — Opus 5.5"
type: source
created: 2026-10-08
updated: 2026-10-08
sources: []
tags: [anthropic, claude, opus, model]
---

# Claude Opus (halaman produk) — Opus 5.5

- **Sumber**: anthropic.com — halaman model *Claude Opus*
- **Penulis**: Anthropic
- **URL**: <https://www.anthropic.com/claude/opus>
- **Tanggal publikasi**: tidak dicantumkan (rilis Opus 5.5: 22 Sep 2026); klip dibuat 2026-10-08
- **Berkas mentah**: `raw/2026/oktober/08/Claude Opus.md`

## TL;DR

**Claude Opus 5.5** (rilis 22 Sep 2026): **$4/$20 per 1M token**, **cache read $0.20/M** (60% lebih murah dari Opus 5), **Fast mode $8/$40** (hingga 2,5× lebih cepat, di Claude Code & Platform), dan biaya kerja khas ±**40% lebih murah dari Opus 5**. Posisi: Opus "daily driver" untuk coding & knowledge work — agent multi-jam, refactor besar, computer use. Tersedia di Pro/Max/Team/Enterprise dan Claude Platform + AWS/Google Cloud/Microsoft Foundry.

## Key points

- **Harga & efisiensi**: $4/$20; "costs 40% less to run than Opus 5 for typical workloads billed by token"; cache read $0.20/M; US-only inference 1,1×.
- **Fast mode**: $8/$40; "up to 2.5x faster speed"; hanya Claude API (first-party), tidak di AWS/partner cloud ([pricing](anthropic-pricing.md)).
- **Kemampuan**: agentic coding (root cause dulu, verifikasi berjalan), orkestrasi subagent + memori lintas sesi, dokumen/slide/spreadsheet siap pakai, analisis finansial, vision & computer use.
- **Safeguards**: kelas pertama Opus dengan safeguard seperti Fable 5.1 (cybersecurity, biologi, anti-distillation).
- **Benchmark**: catatan 18 jam unattended (pelanggan); Terminal-Bench 4.0 dengan pembanding GPT-6 Astra & GPT-5.6 Sol (per laporan OpenAI); hasil safeguard diperiksa terpisah.
- Lineage di halaman: Opus 5 (Jul 2026), Opus 4.8 (Mei 2026), 4.7, 4.6.

## Notable quotes

> "Pricing for Opus 5.5 will cost an estimated 40% less to run than Opus 5 for typical workloads billed by token."

## What this changes

- Konfirmasi resmi harga & Fast mode untuk [Anthropic](../entities/anthropic.md); konsisten dengan listing [Token Harbor](../entities/token-harbor.md)/[Nous Portal](../entities/hermes-agent.md) ($4/$20) dan varian `claude-opus-5-fast` ([Puter](../sources/puter-tutorial-claude.md): 2,5× cepat, 2× harga).
- Tidak ada kontradiksi.

## Related

- [Anthropic](../entities/anthropic.md)
- [Pricing](anthropic-pricing.md) · [Models overview](anthropic-models-overview.md)
