---
title: "Token Harbor docs — Models"
type: source
created: 2026-10-02
updated: 2026-10-02
sources: []
tags: [token-harbor, models, billing, cache]
---

# Token Harbor docs — Models

- **Sumber**: Token Harbor — dokumentasi, halaman *Models*
- **Penulis**: Token Harbor
- **URL**: <https://tokenharbor.ai/docs/api/models>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-02
- **Berkas mentah**: `raw/2026/oktober/02/Token Harbor docs Models.md`

## TL;DR

Katalog model live ada di `/models`; tagihan murni **per token** memakai harga publik vendor + markup per model (default **0%**), tanpa fee per turn. Ada **tiga lapis cache** yang memotong biaya nyata: upstream (≥1024 token, ~90% off), semantic ($0), dan exact 5 menit ($0). Token dihitung dari laporan upstream; panggilan langsung diteruskan byte-for-byte. Token Harbor **tidak pernah memotong (truncate) percakapan**.

## Key points

- **Rumus billing**:
  `cost = (input_tokens × upstream_in_per_1m + output_tokens × upstream_out_per_1m) / 1.000.000 × (1 + markup_pct / 100)`
  dengan `markup_pct` default 0%, tanpa diskon volume dan tanpa fee per turn.
- **Sumber token**: dari usage report provider upstream; panggilan direct ke model id tertentu meneruskan `system` + `messages` byte-for-byte — dibebani persis token yang dikirim + token yang dihasilkan.
- **Tiga lapis cache**: upstream (prefix berulang ≥1024 token, badge `Upstream cache`, hemat ~90% bagian input yang ter-cache); semantic (pertanyaan sama/sangat mirip, 100%/$0); exact (model + messages + sampling sama dalam 5 menit, 100%/$0).
- **Kontrol cache per request**: header `X-TH-Cache-Control: bypass` (lewati lookup, tetap menulis cache) dan `force-refresh` (lewati lookup & write); response dari cache menandai `X-TH-Cache-Layer: exact|semantic`.
- **Transparansi**: `/models` menampilkan harga live, tanggal rilis, knowledge cutoff; `/v1/models` versi JSON; `/dashboard/usage` 100 request terakhir (token in/out, biaya, cache layer) + ekspor CSV.
- **Context limit**: tidak ada truncation — request diteruskan apa adanya; error `context_length_exceeded` dari upstream diteruskan verbatim.

## Notable quotes

> "cost = (input_tokens × upstream_in_per_1m + output_tokens × upstream_out_per_1m) / 1,000,000 × (1 + markup_pct / 100)"

> "We never truncate your conversation. Each request goes straight to the upstream; if the upstream refuses with `context_length_exceeded`, that error is forwarded verbatim."

## What this changes

- **Menjawab "metode resmi" harga**: per-token passthrough + markup 0% — memperkuat verifikasi rumus estimasi pass di [analysis](../analyses/perhitungan-limit-agent-pass.md) dan [Estimasi Request per Pass](../entities/token-harbor-pass-estimates.md).
- Cache sebagai fitur billing lintas lapisan (detail Claude di [Prompt caching on Claude](tokenharbor-docs-prompt-caching.md); sintesis di [Prompt Caching](../concepts/prompt-caching.md)).
- Halaman diperbarui: [Token Harbor](../entities/token-harbor.md), [Katalog Model Token Harbor](../entities/token-harbor-model-catalog.md).

## Related

- [Token Harbor](../entities/token-harbor.md)
- [Token Harbor — Credits & top-ups](tokenharbor-docs-credits.md)
- [Token Harbor — Prompt caching on Claude](tokenharbor-docs-prompt-caching.md)
- [Prompt Caching](../concepts/prompt-caching.md)
- [Katalog Model Token Harbor](../entities/token-harbor-model-catalog.md)
