---
title: "Anthropic docs — Models overview"
type: source
created: 2026-10-08
updated: 2026-10-08
sources: []
tags: [anthropic, claude, models, docs]
---

# Anthropic docs — Models overview

- **Sumber**: platform.claude.com — dokumentasi *Models overview*
- **Penulis**: Anthropic
- **URL**: <https://platform.claude.com/docs/en/models/overview>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-08
- **Berkas mentah**: `raw/2026/oktober/08/Claude. Models overview.md`

## TL;DR

Perbandingan resmi lineup Claude saat ini: **[Fable 5.1](anthropic-fable-51.md) $10/$50 · [Opus 5.5](anthropic-opus.md) $4/$20 · [Sonnet 5.5](anthropic-sonnet.md) $2/$10 · [Haiku 5.5](anthropic-haiku-55.md) dari $0.10/$0.50** — semuanya konteks **1M**, output maks **128K**, knowledge cutoff **Jun 2026**, input teks+gambar → teks, mendukung vision & tool use. Saran resmi: mulai dari **Opus 5.5** untuk sebagian besar workload; Fable 5.1 untuk reasoning berat/long-horizon agentic.

## Key points

- **Thinking & effort**: Fable 5.1 & Opus 5.5 *adaptive thinking (always on)*; Sonnet 5.5 & Haiku 5.5 *adaptive*. Default effort: Fable `high`, Opus 5.5 `medium`, Sonnet 5.5 `high`, Haiku 5.5 `medium`.
- **API ID**: `claude-fable-5-1`, `claude-opus-5-5`, `claude-sonnet-5-5`, `claude-haiku-5-5`.
- **Models API**: bisa query `max_input_tokens`, `max_tokens`, dan objek `capabilities`; ada field `line` untuk mengelompokkan keluarga (mis. `opus`) — jangan disimpulkan dari `id`.
- **Capabilities API**: `thinking.types.disabled` (apakah thinking bisa dimatikan), `server_tools.web_search` / `server_tools.code_execution`, dan `code_execution` terpisah (apakah kode dapat memanggil tool lain — programmatic tool calling).
- Sistem multibahasa, long-context, honesty, dan image processing jadi keunggulan yang diklaim.

## Notable quotes

> "If you're unsure which model to use, start with Claude Opus 5.5 for most workloads. Use Claude Fable 5.1 for demanding reasoning and long-horizon agentic work."

## What this changes

- Tabel resmi lineup untuk [Anthropic](../entities/anthropic.md) — melengkapi harga agregator yang sudah ada di wiki.
- Tidak ada kontradiksi; harga Opus 5.5 $4/$20 & Sonnet 5.5 $2/$10 konsisten dengan listing Token Harbor/Nous Portal.

## Related

- [Anthropic](../entities/anthropic.md)
- [Fable 5.1](anthropic-fable-51.md) · [Opus](anthropic-opus.md) · [Sonnet](anthropic-sonnet.md) · [Haiku 5.5](anthropic-haiku-55.md)
- [Choosing the right model](anthropic-choosing-model.md) · [Pricing](anthropic-pricing.md)
