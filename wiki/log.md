---
title: Log
type: meta
created: 2026-10-01
updated: 2026-10-07
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

## [2026-10-01] ingest | Inception Labs — Mercury (3 klip)
- Tiga sumber di-ingest dari `raw/2026/oktober/01/`: `inceptionlabs Models.md`, `Introducing Mercury Voice.md`, `Research – Inception.md` (dipindahkan ke arsip tanggal sebelum ingest).
- Dibuat: 3 halaman sumber + entitas `inception-labs`.
- Diperbarui: `wiki/concepts/model-access-services.md` (baris Inception + catatan dLLM), `wiki/overview.md`, `wiki/index.md`.
- Tidak ada kontradiksi keras; dicatat inkonsistensi ringan di sumber (10M vs 100M token gratis; TTFT <170 ms vs TTFAT 320 ms).

## [2026-10-01] ingest | Cerebras Inference (11 klip)
- Sebelas sumber di-ingest dari `raw/2026/oktober/01/` (dokumentasi Cerebras: getting started, katalog, pemilihan model, harga, limit, dua halaman model, reasoning, structured outputs, tool calling, image inputs).
- Dibuat: 11 halaman sumber + entitas `cerebras`.
- Diperbarui: `wiki/concepts/model-access-services.md` (baris + catatan kecepatan), `wiki/entities/inception-labs.md` (referensi silang), `wiki/overview.md`, `wiki/index.md`.
- Tidak ada kontradiksi. Data baru: GPT OSS 120B ~3.000 t/s; Qwen 3.8 27B ~1.850 t/s; harga $0.35/$0.75 dan $0.99/$1.49; peta migrasi Claude/GPT/Gemini → open-source.

## [2026-10-01] schema | Arsip raw/ per tanggal
- `raw/` dirapikan menjadi arsip per tahun/bulan/tanggal; 22 file sumber dipindahkan ke `raw/2026/oktober/01/` (nama bulan Bahasa Indonesia).
- `AGENTS.md` diperbarui: bagian *Raw archive layout*, layout pohon, quick start, tabel layer, dan hard rule `raw/` (konten tetap immutable; LLM hanya boleh memindahkan ke arsip tanggal).
- `.opencode/skills/wiki-ingest/SKILL.md` diperbarui: aturan *archive first* + path arsip lengkap di citation.
- Semua halaman sumber diperbarui ke path arsip `raw/2026/oktober/01/...` (22 file).
- Path mentah di entri log lama dibiarkan sebagai catatan historis.

## [2026-10-02] query | Perhitungan limit Agent Pass & beban konteks besar
- Pertanyaan pengguna: cara perhitungan limit Agent Pass; contoh DeepSeek V4.1 Flash (1.000+500 token; 3.000 [1.500 miss + 1.500 hit] + 200 token); dampak konteks tumbuh 50k token/turn.
- Dibuat: `wiki/analyses/perhitungan-limit-agent-pass.md` — mekanisme usage value, contoh hitungan, verifikasi rumus estimasi, dan analisis beban konteks besar. Semua angka dolar adalah perhitungan turunan dari tarif katalog, bukan angka penerbit.
- Diperbarui: `wiki/entities/token-harbor.md` (open question tarif cache + tautan analisis), `wiki/index.md`.
- Temuan: tarif cache read tidak dipublikasikan Token Harbor; rumus estimasi cocok untuk V4.1 Flash/GPT-6 Luna/GLM 5.3 Flash (Qwen3.8 Flash menyimpang); konteks tumbuh 50k/turn menghabiskan $10 hanya dalam ~36 turn tanpa cache (dengan cache read $0.01/M ≈ 170 turn — asumsi).

## [2026-10-02] ingest | Token Harbor docs (9 klip)
- Sembilan klip dokumentasi di-ingest dari arsip `raw/2026/oktober/02/` (Subscription, Credits & top-ups, Rewards, Rate limits, Prompt caching on Claude, Models, Web chat limits, How we measure speed, vs OpenRouter).
- Dibuat: 9 halaman sumber + konsep baru `wiki/concepts/prompt-caching.md`.
- Diperbarui: `wiki/entities/token-harbor.md` (wallet/rewards, rate limit, cache, toggle overage, free allowance rolling 7×24), `wiki/entities/th-rudder.md` (kuota web chat), `wiki/entities/token-harbor-model-catalog.md` (catatan lineup drift), `wiki/concepts/model-access-services.md` (baris OpenRouter + dimensi cache), `wiki/analyses/perhitungan-limit-agent-pass.md` (koreksi toggle + cache terdokumentasi), `wiki/overview.md`, `wiki/index.md`.
- Klarifikasi/koreksi: "Nothing stops at the limit" hanya berlaku bila toggle overage aktif; free allowance tidak ditambah/direset pass (route `:free` terpisah); lineup dokumen 2 Okt memakai versi model berbeda dari katalog 1 Okt (dicatat, tidak ditimpa).
- Open questions terjawab: kuota harian TH-Rudder (gambar 10, search 200), rate limit akun berbayar, tarif cache (Claude 0,1×/1,25×; upstream ~90% off). Sisa: besar free allowance dalam dolar; off-peak pada pass; perlakuan cache tepatnya pada metering pass.

## [2026-10-02] ingest | Web hosting: Hostinger, Rumahweb, DomaiNesia (22 klip)
- 22 sumber di-ingest dari arsip `raw/2026/oktober/02/` (Hostinger 15, Rumahweb 5, DomaiNesia 2) — domain baru di luar LLM/API.
- Dibuat: 22 halaman sumber, 3 entitas (`hostinger`, `rumahweb`, `domainesia`), konsep `wiki/concepts/web-hosting.md`.
- Diperbarui: `wiki/index.md`, `wiki/overview.md`.
- Tidak ada kontradiksi. Catatan: 9 klip Token Harbor docs yang tiba bersamaan sudah di-ingest lebih dulu oleh sesi paralel (commit `3fb935a`); draf duplikat slug dihapus agar satu sumber tetap satu halaman.

## [2026-10-03] ingest | Tokenra & DomaiNesia lanjutan (7 klip)
- 7 sumber di-ingest dari arsip `raw/2026/oktober/03/`: katalog Tokenra ("Model Square" hal. 1–2) + 5 halaman produk DomaiNesia (Cloud VPS Lite, Cloud VPS Turbo, Managed VPS, Object Storage, Dedicated Server).
- Dibuat: 7 halaman sumber + entitas `tokenra`; entitas `domainesia` diperluas (VPS Lite/Turbo/Managed, object storage, dedicated + GPU L4).
- Diperbarui: `wiki/concepts/model-access-services.md` (+Tokenra, +catatan model anonymous), `wiki/concepts/web-hosting.md`, `wiki/index.md`, `wiki/overview.md`.
- Tidak ada kontradiksi. Catatan: harga Tokenra untuk model yang sama cenderung lebih murah karena varian diskon eksplisit; asal model alpha/anonymous (union-alpha, omen-alpha, ox-alpha) belum jelas.
- Catatan tambahan: frontmatter file `raw/` lama (01–02 Okt) dinormalisasi manual oleh pengguna via Obsidian (kutip dihapus, `author` ditambahkan); konten sumber tidak berubah.

## [2026-10-07] ingest | Puter — Batch A: fondasi platform (10 dari 50 klip)
- 50 klip Puter (puter.com) diarsipkan ke `raw/2026/oktober/07/` (semua `created: 2026-10-07`); di-ingest bertahap dalam 4 batch.
- **Batch A (10 klip)**: landing konsumen; *The Backend for AI-Generated Apps*; docs Getting Started; docs Puter.js; tutorial Getting Started; docs AI; AI Gateway; docs User-Pays; Puter.js Pricing; Rate Limits & Quotas.
- Dibuat: 10 halaman sumber, entitas `wiki/entities/puter.md`, konsep `wiki/concepts/user-pays-model.md`.
- Diperbarui: `wiki/concepts/model-access-services.md` (baris Puter + catatan skema keempat), `wiki/overview.md` (domain baru), `wiki/index.md`.
- Tidak ada kontradiksi. Klaim vendor (90% fewer tokens, 12× code, 97% fewer mistakes, 80K+ developer) dicatat sebagai klaim, belum diverifikasi.
- Open question: nominal dolar free allowance bulanan user tidak dipublikasikan di klip (hanya "shown in the dashboard").
- Antre: Batch B (17 klip docs platform), Batch C (13 klip API developer), Batch D (10 tutorial, termasuk 2 transkrip video besar).
