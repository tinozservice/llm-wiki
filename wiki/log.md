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

## [2026-10-04] query | Kapasitas token Qwen3.7 Flash di Agent Pass
- Pertanyaan pengguna: dengan Agent Pass Token Harbor, berapa token input/output yang bisa didapat untuk Qwen3.7 Flash.
- Jawaban: estimasi 25,6k+ request @ 10K input + 1K output → **±256 juta token input + ±25,6 juta token output per bulan ($10)**; ±64 jt + ±6,4 jt per jendela 7 hari; blended turunan ≈ $0,0355/1M token; Office ≈ ±897 jt/±89,7 jt, Frontier ≈ ±4,62 M/±461,5 jt (skala estimasi).
- Diperbarui: `wiki/analyses/perhitungan-limit-agent-pass.md` (bagian 4 baru + renumber), `wiki/index.md`.
- Catatan: harga per-token Qwen3.7 Flash tidak dipublikasikan di katalog wiki; lineup drift dokumen 2 Okt dicatat sebagai open question.

## [2026-10-07] ingest | Puter — Batch A: fondasi platform (10 dari 50 klip)
- 50 klip Puter (puter.com) diarsipkan ke `raw/2026/oktober/07/` (semua `created: 2026-10-07`); di-ingest bertahap dalam 4 batch.
- **Batch A (10 klip)**: landing konsumen; *The Backend for AI-Generated Apps*; docs Getting Started; docs Puter.js; tutorial Getting Started; docs AI; AI Gateway; docs User-Pays; Puter.js Pricing; Rate Limits & Quotas.
- Dibuat: 10 halaman sumber, entitas `wiki/entities/puter.md`, konsep `wiki/concepts/user-pays-model.md`.
- Diperbarui: `wiki/concepts/model-access-services.md` (baris Puter + catatan skema keempat), `wiki/overview.md` (domain baru), `wiki/index.md`.
- Tidak ada kontradiksi. Klaim vendor (90% fewer tokens, 12× code, 97% fewer mistakes, 80K+ developer) dicatat sebagai klaim, belum diverifikasi.
- Open question: nominal dolar free allowance bulanan user tidak dipublikasikan di klip (hanya "shown in the dashboard").
- Antre: Batch B (17 klip docs platform), Batch C (13 klip API developer), Batch D (10 tutorial, termasuk 2 transkrip video besar).

## [2026-10-07] ingest | Puter — Batch B: docs platform (17 klip)
- 17 halaman docs di-ingest dari `raw/2026/oktober/07/`: Apps, Auth, CLI, Cloud Storage (FS), Deployments, Email, Events, Framework Integrations, Hosting, Key-Value Store, MCP Server, Networking, Peer, Security and Permissions, Serverless Workers, Site Configuration, Supported Platforms.
- Dibuat: 17 halaman sumber; entitas `wiki/entities/puter.md` diperluas dengan bagian *Layanan backend & tooling* (storage, KV, events, workers, hosting, apps/auth/email, networking, peer, MCP, CLI, keamanan, platform).
- Temuan penting: MCP server Puter memuat contoh konfigurasi **OpenCode** — titik sambung dengan entitas OpenCode; sandbox default per app (`~/AppData/<app-id>/` + KV terpisah); data lintas user hanya via Serverless Worker.
- Catatan angka klaim: "60.000+ aplikasi live" (Supported Platforms) vs "130K+ apps powered" (halaman backend) — kemungkinan metrik berbeda, dicatat tanpa ditimpa.
- Diperbarui: `wiki/index.md` (+17 entri), `wiki/overview.md` (27/50 klip), entitas `puter`.
- Tidak ada kontradiksi.
- Antre: Batch C (13 klip API developer), Batch D (10 tutorial, termasuk 2 transkrip video besar).

## [2026-10-07] ingest | Puter — Batch C: halaman API developer (13 klip)
- 13 halaman produk developer di-ingest dari `raw/2026/oktober/07/`: Cloud Storage, Networking, NoSQL, Peer, Workers, Auth, Hosting (static), Image Generation, OCR, Speech to Text, Text to Speech, Video Generation, Voice Changer.
- Dibuat: 13 halaman sumber; entitas `wiki/entities/puter.md` diperluas (provider/model AI konkret per kemampuan; detail arsitektur networking; trade-off auth).
- Temuan: (1) arsitektur networking = tunnel WebSocket + protokol **Wisp** + TLS **rustls-WASM** — relay tidak melihat trafik terdekripsi; (2) **trade-off eksplisit** model auth: Puter memegang lapisan akun (tanpa sign-up flow/field kustom); (3) model AI konkret: `gpt-image-1.5`, `gemini-3-pro-image`, `sora-2`, `veo-3.0-fast`, GPT-4o Transcribe (+diarization/SRT), AWS Polly/OpenAI/ElevenLabs (TTS), Textract/Mistral (OCR), ElevenLabs (voice conversion).
- Diperbarui: `wiki/index.md` (+13 entri), `wiki/overview.md` (40/50 klip), entitas `puter`.
- Tidak ada kontradiksi.
- Antre: Batch D (10 tutorial, termasuk 2 transkrip video besar).

## [2026-10-07] ingest | Puter — Batch D: tutorial (10 klip) — ingest 50/50 SELESAI
- 10 tutorial di-ingest dari `raw/2026/oktober/07/`: Free LLM API, Claude, OpenAI, OpenRouter, Chatbot, KV Store guide, RAG (Stampy), MCP, + 2 kursus video JS Mastery (ATS resume analyzer; Roomify 2D→3D).
- Dua transkrip video (≈26k & 30k kata) diringkas dari metadata + daftar bab + intro; ditandai di halaman sumber masing-masing.
- Informasi baru: keluarga GPT-6 (Astra/Sol/Luna + Pro; konteks 1.050.000 token; Pro berharga sama); `claude-opus-5-fast` (2,5× cepat dari Opus 5, 2× harga); GPT Image 2.5 Flare/Sunburst; daftar ±190 model OpenRouter; pola lanjutan KV (TTL, cursor, agregat, version tracking); pola RAG dengan function calling; alur build+deploy via MCP.
- Catatan angka: "400+ model" (tutorial) vs "500+" (docs/backend) — tidak konsisten, dicatat sebagai open question.
- Koneksi lintas domain: `gpt-image-2.5-flare`/GPT-6 Luna juga di katalog Tokenra/Token Harbor/OpenCode Zen; `inception/mercury-2` muncul di daftar model OpenRouter.
- Diperbarui: entitas `puter` (status 50/50 + keluarga GPT-6 + catatan angka), `wiki/index.md` (+10), `wiki/overview.md` (124 sumber; domain Puter selesai), `README.md` (status repo).
- Tidak ada kontradiksi keras. Ingest 50 klip Puter selesai (4 batch, 4 commit).

## [2026-10-07] query | Perbandingan GPT-6 Luna antar penyedia
- Pertanyaan pengguna: "kalau ingin memakai GPT-6 Luna, penyedia mana yang lebih baik?" — kandidat dari wiki: Token Harbor, OpenCode Go, OpenCode Zen, Puter.
- Dibuat: `wiki/analyses/perbandingan-gpt-6-luna.md` — tabel harga/kuota, analisis rasio pass vs langganan vs per-token, peran cache pada beban konteks besar, rekomendasi per skenario, caveats.
- Diperbarui: `wiki/index.md` (+1 analisis); koreksi klaim koneksi katalog di `wiki/sources/puter-tutorial-openai.md` (GPT-6 Luna bukan di katalog Tokenra; hanya `gpt-image-2.5-flare`/`sunburst`).
- Temuan: rasio terbaik Token Harbor Agent ($1.99 → nilai $10; ≈6,6k request Luna/bulan); Go unggul untuk multi-model flat (4.230 req/5 jam, cap $15); Zen satu-satunya dengan tarif cache eksplisit untuk Luna (cache read $0.01/M); Puter $0 developer via user-pays (tarif per model tidak dipublikasikan).
- Tidak ada kontradiksi.

## [2026-10-07] ingest | VyceAI — API proxy (8 klip)
- 8 klip VyceAI (vyceai.com) diarsipkan ke `raw/2026/oktober/07/` (created 2026-10-07) dan di-ingest: Models free & paid, Pricing monthly & yearly, Daily Rewards, Referrals, Integrations, System Status.
- Dibuat: 8 halaman sumber + entitas `wiki/entities/vyceai.md`.
- Diperbarui: `wiki/analyses/perbandingan-gpt-6-luna.md` (+baris VyceAI: Luna $2/$2, offline saat klip), `wiki/concepts/model-access-services.md` (+baris & skema "langganan + reward harian"), `wiki/overview.md` (132 sumber), `wiki/index.md`, `README.md`.
- Temuan: paritas harga dengan OpenCode Zen untuk banyak model (Sonnet 4.6, Astra, Sol, Terra, Grok 4.6) — indikasi upstream serupa; pengecualian DeepSeek (V4 Pro lebih murah di VyceAI, V4 Flash lebih mahal). "Unlimited" DeepSeek V4.1 & Agnes 3.0 Flash untuk Lite/Pro + reward harian $10–30 + bonus $100–500/bulan.
- Catatan keandalan (dari status page pihak pertama): uptime 96,7%, degraded saat klip, `gpt-6-luna` offline, Grok 4.6 maintenance.
- Inkonsistensi internal klip: rate limit 60/120 vs 120/300 req/min; "12/7 days for max bonus"; deskripsi Luna "flagship" vs posisi tier murah di sumber lain.
- Tidak ada kontradiksi lintas-wiki.
- Tidak ada kontradiksi lintas-wiki.

## [2026-10-08] ingest | Exabytes — batch hosting/domain/bizapp (19 klip)
- 19 klip exabytes.co.id diarsipkan ke `raw/2026/oktober/08/` (created 2026-10-08) dan di-ingest: landing "GROW AI", web hosting cPanel 17 AI, WP 17 AI (halaman produk + fitur), VPS Linux NVMe, VPS Windows SSD, NVMe VPS Hermes/OpenClaw/n8n, dedicated Linux & Windows, Windows hosting ASP.NET, domain .ID / domain murah / AI Domain Generator, Office 365, Google Workspace, Heylink, Lark.
- Dibuat: **19 halaman sumber** + **3 entitas**: `exabytes` (provider hosting ke-4), `openclaw` dan `hermes-agent` (agent self-hosted yang kini muncul lintas provider: Exabytes, Hostinger, DomaiNesia).
- Diperbarui: `concepts/web-hosting.md` (provider ke-4; tren VPS-agent & reseller bizapp), entitas `hostinger`/`rumahweb`/`domainesia` (cross-link pembanding), `overview.md` (151 sumber; 4 provider hosting), `index.md` (+19 sumber, +3 entitas), `README.md`. **Maintenance**: frontmatter `sources` di `overview.md` dilengkapi dari 84 → 151 slug (basi sejak batch Puter B).
- Temuan: (1) Exabytes **membundel agent AI langsung di paket VPS** (Hermes MIT/Nous Research, OpenClaw, n8n — seri M1–M6 Rp194.000–2.980.000/bulan) — pola baru di domain hosting; (2) lini **reseller bizapp** satu pintu (Microsoft 365, Google Workspace, Heylink, Lark); (3) server di NEX DC Jakarta Tier-3, ISO 27001:2013 + 9001:2015.
- Catatan angka (dicatat, tidak ditimpa): klaim uptime inkonsisten antar halaman (99,5%/99,8%/99,9%/99,99%); harga OpenClaw FAQ "Rp150.000-an" vs tabel Rp194.000; teks promo usang "berlaku sampai 31 Desember 2018" di halaman Windows Dedicated; staf runtime lawas (Node.js 12.4, Python 2.7) di fitur WP hosting.
- Tidak ada kontradiksi lintas-wiki.

## [2026-10-08] ingest | Jev / TypeSafe — 20 klip (docs resmi + OpenRouter)
- 20 klip diarsipkan ke `raw/2026/oktober/08/` (created 2026-10-08): 18 halaman docs.typesafe.ai (Introduction, System One, Models, Quick start, AI primer, State, Confidence, API, How to build, Use cases, jaggedness Jev 1.13, Coding agents, Agent skill, Primitives, Choice, Score, Noul, Advanced structure) + 2 halaman OpenRouter (Jev 1.13; daftar model "decisions"). **4 klip OpenClaw di `raw/` di-skip atas permintaan pengguna** (masih dikumpulkan).
- Menjawab pertanyaan pengguna "adakah pertanyaan terbuka pada model Jev?": **Jev = model keputusan TypeSafe, model pertama kelas System One** (bukan LLM chatbot); anomali output $0.00 di Zen **bukan anomali** — output memang gratis ($0.042/M input); `jev-1.13`/`jev-1.13-free` (Zen) serta `jev-latest`/`jev-router` (Tokenra) kini terjelaskan.
- Dibuat: **20 halaman sumber** + entitas `typesafe`, `jev` + konsep `decision-models`.
- Diperbarui: `entities/opencode-zen.md` (resolusi Jev + catatan harga), `entities/tokenra.md` (`jev-*`), `entities/inception-labs.md` (+Mercury Decide), `concepts/model-access-services.md` (kategori decisions), `analyses/perbandingan-gpt-6-luna.md` (+catatan GPT-6 Luna Decisions), `overview.md` (171 sumber; frontmatter sources 151→171), `index.md` (+20 sumber, +2 entitas, +1 konsep), `README.md`.
- Temuan besar: kategori **"decisions"** di OpenRouter — 10+ vendor model keputusan (GPT-6 Luna Decisions, Solar Decide, Decider, d1, Clef, Tev1, Mercury Decide, Span-01, Kev 4B) banyak memakai schema `/v1/systemone` yang sama; output gratis; TypeSafe transparan soal batas (literal, lemah aritmetika/tanggal, bias urutan opsi Choice).
- Catatan angka (dicatat, tidak ditimpa): OpenRouter menulis konteks Jev "32K" vs docs "64k/32k"; Zen $0.04 vs resmi $0.042; Tokenra output `jev-latest` $0.042 vs resmi $0.
- Tidak ada kontradiksi lintas-wiki.

## [2026-10-08] ingest | OpenClaw & Hermes Agent — 27 klip (docs, blog, OpenRouter)
- 27 klip diarsipkan ke `raw/2026/oktober/08/` (created 2026-10-08): 24 berkas OpenClaw (landing, install, integrations, ecosystem, 13 halaman docs, 6 blog, 1 transkrip YT) + 2 Hermes (landing, cookbook OpenRouter) + 1 cookbook OpenRouter untuk OpenClaw. `raw/` root kini bersih (koleksi OpenClaw lengkap).
- Menjawab open questions lama: OpenClaw = platform agen **MIT** dari **OpenClaw Foundation 501(c)(3)** (riwayat nama Clawdbot→Moltbot→OpenClaw; Peter Steinberger; 346k+ bintang; tanpa tier berbayar); Hermes = **Nous Research** (venture; laporan $75M pada valuasi $1,5B; Nous Portal $20–200/bln).
- Dibuat: **27 halaman sumber** + konsep `self-hosted-agent-platforms`; `entities/openclaw` ditulis ulang penuh; `entities/hermes-agent` diperluas; `concepts/decision-models` (+adopsi OpenClaw plugin-first: adapter TypeSafe mendukung Jev hosted & Kev lokal); `entities/opencode` (+dukungan Zen/Go di onboarding OpenClaw); `entities/exabytes` & `concepts/web-hosting` (cross-link).
- Temuan besar: (1) **Microsoft Autopilot** (dulu Scout) dibangun di atas OpenClaw + kontribusi upstream dua arah; (2) **OpenClaw Enterprise (OCE)** = proyek open source terpisah (dihibahkan OpenAI ke Foundation; dikembangkan bersama Red Hat/NVIDIA; gratis); (3) audit keamanan Trail of Bits via OpenAI Patch the Planet (27 advisory; 0 Critical) — semua diperbaiki; (4) **OpenClaw mengadopsi decision models secara plugin-first**; (5) OpenClaw 2.0: 933 kontributor, 16k+ PR.
- Catatan bias: dokumen "OpenClaw vs Hermes" adalah sudut pandang vendor; klaim adopsi (bintang/pengguna) mayoritas dari vendor/komunitas — dicatat sebagai klaim, bukan verifikasi independen.
- Diperbarui: `overview.md` (198 sumber; **empat domain** — platform agen self-hosted 27; frontmatter sources 171→198), `index.md` (+27 sumber, +1 konsep, refresh entitas openclaw/hermes), `README.md`.
- Tidak ada kontradiksi keras; nuansa "no enterprise edition" vs rilis OCE dijelaskan di entitas OpenClaw.
## [2026-10-08] ingest | Hermes Agent & Nous Portal — 11 klip (10 halaman; 1 duplikat)
- 11 klip diarsipkan ke `raw/2026/oktober/08/` (created 2026-10-08): Business, Cloud, API Docs, Manage Subscription, Models (350), Privacy, Terms, Releases, Beranda Nous Research, README GitHub, + **1 re-clip identik** dari landing yang sudah di-ingest (`Hermes Agent. The Agent That Grows With You.md`) — **tidak dibuat halaman duplikat**; dicatat di sini.
- Dibuat: **10 halaman sumber** baru; `entities/hermes-agent` ditulis ulang (Business/Enterprise, Cloud, Portal plans/kredit, API x402, Privacy/Terms, Series B, Hermes Index, migrasi `hermes claw migrate` dari OpenClaw); `concepts/self-hosted-agent-platforms` (+7 backend, Series B, Cloud/Business); `concepts/model-access-services` (+baris Nous Portal, skema kredit portal + x402 USDC).
- Temuan: (1) **Series B Nous Research** (7 Okt 2026; investor NVIDIA/M12/Samsung Next/Robot Ventures/USV/YC/Menlo Ventures) — lanjutan laporan Juli $75M/$1,5B; (2) **Nous Portal**: kredit +10% (Plus $22/Super $110/Ultra $220; rollover cap $10/$50/$100), 350 model, Hermes Index (Opus 5.5 memimpin); (3) **x402: bayar-per-request dengan Solana USDC tanpa akun/API key** di API Nous; (4) **Privacy Mode & ToS §12.3** mengonfirmasi langsung penggunaan data untuk training (opt-out prospective) — menguatkan klaim dokumen OpenClaw vs Hermes; (5) migrasi dua arah OpenClaw↔Hermes (`hermes claw migrate` / "Import from Hermes").
- Catatan angka: "200+" (portal) vs "300+" (README) model — dicatat, tidak ditimpa.
- Diperbarui: `overview.md` (208 sumber; domain 4 = 37; frontmatter 198→208), `index.md` (+10 sumber, refresh entitas hermes), `README.md`.
- Tidak ada kontradiksi keras.