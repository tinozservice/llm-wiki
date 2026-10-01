---
title: Log
type: meta
created: 2026-10-01
updated: 2026-10-01
sources: []
tags: [log]
---

# Log

Append-only record of every operation. Newest at the bottom.

Quick view: `grep "^## \[" wiki/log.md | tail -5`

## [2026-10-01] schema | Vault initialized
- Created `AGENTS.md` (schema), three workflow skills (`wiki-ingest`, `wiki-query`,
  `wiki-lint`), and the `raw/` + `wiki/` skeleton.

## [2026-10-01] ingest | One API for the world's leading AI models
- Sumber pertama di-ingest dari `raw/tokenharbor.ai-pricing-One API for the world's leading AI models.md`.
- Dibuat: `wiki/sources/tokenharbor-pricing.md`, `wiki/entities/token-harbor.md`.
- Diperbarui: `wiki/overview.md`, `wiki/index.md`.
- Tidak ada kontradiksi (wiki masih kosong). Halaman per model belum dibuat — informasi model masih terbatas pada tier dan estimasi request.
- Pertanyaan terbuka: besar free allowance, harga per-token, identitas TH-Rudder.

## [2026-10-01] ingest | Low cost coding models for everyone
- Sumber kedua di-ingest dari `raw/opencode-go-Low cost coding models for everyone.md` (halaman OpenCode Go).
- Dibuat: `wiki/sources/opencode-go.md`, `wiki/entities/opencode.md`, `wiki/concepts/multi-model-subscriptions.md`.
- Diperbarui: `wiki/entities/token-harbor.md` (referensi silang lineup), `wiki/overview.md`, `wiki/index.md`.
- Tidak ada kontradiksi. Catatan rekonstruksi: nilai tabel Go/Go Plus dipisah dari sel klip yang tergabung (asumsi urutan Go lalu Go Plus).
- Tumpang tindih lineup tercatat: 8 model yang sama muncul di Token Harbor dan OpenCode Go.

## [2026-10-01] ingest | OpenCode Console (daftar harga model Zen)
- Sumber ketiga di-ingest dari `raw/OpenCode ZEN Price.md` (katalog harga Zen, 81 model).
- Dibuat: `wiki/sources/opencode-zen-price-list.md`, `wiki/entities/opencode-zen.md`.
- Rename konsep: `wiki/concepts/multi-model-subscriptions.md` → `wiki/concepts/model-access-services.md` (diperluas mencakup akses per token); seluruh tautan masuk diperbarui.
- Diperbarui: `wiki/entities/opencode.md` (Zen teridentifikasi), `wiki/entities/token-harbor.md`, `wiki/sources/opencode-go.md`, `wiki/overview.md`, `wiki/index.md`.
- Tidak ada kontradiksi. Catatan: "Jev 1.13" mencantumkan output $0.00 di klip (belum diverifikasi).

## [2026-10-01] maintenance | Klarifikasi OpenCode: kredit top up menyatu Go–Zen
- Info dari pengguna (bukan sumber): saldo kredit berasal dari top up; menyatu antara Go dan Zen; bila batas Go habis, pemakaian dialihkan ke pay-as-you-go.
- Diperbarui: `wiki/entities/opencode.md`, `wiki/entities/opencode-zen.md`, `wiki/concepts/model-access-services.md`, `wiki/overview.md`, `wiki/index.md`.
- Pertanyaan tersisa: tarif persis pay-as-you-go; jendela batas Go (5 jam/bulanan di sumber vs "harian" menurut pengguna).

## [2026-10-01] ingest | Token Harbor model catalog (4 klip)
- Empat sumber di-ingest: `raw/model frontier token harbor.md`, `raw/model value token harbor.md`, `raw/model free token harbor.md`, `raw/model TH-Rudder token harbor.md`.
- Dibuat: 4 halaman sumber, `wiki/entities/token-harbor-model-catalog.md`, `wiki/entities/th-rudder.md`, `wiki/concepts/intelligence-index.md`.
- Diperbarui: `wiki/entities/token-harbor.md` (harga per-token, lineup gratis, TH-Rudder), `wiki/concepts/model-access-services.md` (paritas harga TH vs Zen), `wiki/overview.md`, `wiki/index.md`.
- Tidak ada kontradiksi. Qwen3.8 Flash kini juga "Free Limited time" — konsisten dengan lineup gratis yang berotasi.

## [2026-10-01] ingest | Token Harbor pass estimates (Frontier & Office)
- Dua sumber di-ingest: `raw/tokenharbor - frontier pass.md` dan `raw/tokenharbor - office pass.md`.
- Dibuat: `wiki/sources/tokenharbor-frontier-pass.md`, `wiki/sources/tokenharbor-office-pass.md`, `wiki/entities/token-harbor-pass-estimates.md`.
- Diperbarui: `wiki/entities/token-harbor.md` (bagian estimasi diringkas + tautan), `wiki/overview.md`, `wiki/index.md`.
- Tidak ada kontradiksi; estimasi konsisten proporsional dengan included usage ($10/$35/$180).

## [2026-10-01] ingest | Agnes, Groq, Manus, Novita & Sail Research (13 klip)
- 13 sumber di-ingest dari `raw/` (Agnes ×3, Groq ×5, Manus ×1, Novita ×2, Sail Research ×2).
- Dibuat: 13 halaman sumber + 5 entitas baru (`agnes`, `groq`, `manus`, `novita`, `sail-research`).
- Diperbarui: `wiki/concepts/model-access-services.md` (5 layanan baru + paritas harga meluas + dimensi latensi/harga), `wiki/overview.md`, `wiki/index.md`.
- Tidak ada kontradiksi. Catatan: harga Manus tidak tertangkap di klip (artefak slider); metadata params/context model (pertama di wiki) berasal dari Sail.

## [2026-10-01] schema | Arsip raw/ per tanggal
- `raw/` dirapikan menjadi arsip per tahun/bulan/tanggal; 22 file sumber dipindahkan ke `raw/2026/oktober/01/` (nama bulan Bahasa Indonesia).
- `AGENTS.md` diperbarui: bagian *Raw archive layout*, layout pohon, quick start, tabel layer, dan hard rule `raw/` (konten tetap immutable; LLM hanya boleh memindahkan ke arsip tanggal).
- `.opencode/skills/wiki-ingest/SKILL.md` diperbarui: aturan *archive first* + path arsip lengkap di citation.
- Semua halaman sumber diperbarui ke path arsip `raw/2026/oktober/01/...` (22 file).
- Path mentah di entri log lama dibiarkan sebagai catatan historis.
