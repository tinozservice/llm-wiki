# LLM Wiki

Basis pengetahuan pribadi dengan pola **LLM Wiki**: sumber mentah yang dikurasi disimpan di `raw/`, lalu agen LLM menyusun dan memelihara wiki markdown ber-tautan di `wiki/`. Pengetahuan dikompilasi sekali dan dijaga tetap aktual — bukan diturunkan ulang dari potongan sumber setiap kali bertanya.

Vault ini dibuka dengan [Obsidian](https://obsidian.md) dan dioperasikan bersama agen LLM (OpenCode) yang mengikuti aturan di [`AGENTS.md`](AGENTS.md).

## Status saat ini (README diperbarui 2026-10-15)

- **315 sumber** ter-ingest dari arsip `raw/2026/oktober/01–14/`, dalam lima domain:
  - **Akses model AI (159 sumber)** — Token Harbor, OpenCode Go/Zen, Agnes, Groq (+legal cloud: Services Agreement & DPA), Manus, Novita, Sail Research, Inception Labs, Cerebras, Tokenra, VyceAI, **OpenRouter** (gateway), kelas **model keputusan** (TypeSafe/Jev dan ekosistem "decisions"), + platform **Anthropic/Claude** (11 klip: lineup resmi Fable/Mythos/Opus/Sonnet/Haiku, pricing API, plans, Claude Code) + **platform DeepSeek** (API resmi & panduan integrasi) + **platform OpenAI** (40+ klip: model GPT-6, ChatGPT/Codex/Dots, plugin, API & legal) + **Manus 2.0/Cue** (4 klip 12 Okt: Cascade/Cloud Computer/Studio, agen beridentitas sendiri, Privacy & Terms).
  - **Hosting web (46 sumber)** — Hostinger, Rumahweb, DomaiNesia, Exabytes.
  - **Platform pengembangan Puter (50 sumber)** — Puter.js: AI Gateway 500+ model, storage, KV, workers, hosting, MCP; model bisnis user-pays.
  - **Platform agen self-hosted (53 sumber)** — OpenClaw (OpenClaw Foundation, MIT), Hermes Agent (Nous Research; Nous Portal & Hermes Cloud; tutorial pemula pihak ketiga 14 Okt), DeepSeek Harness (DeepSeek AI, MIT).
  - **Solana & pembayaran agentik (7 sumber)** — Solana (network & tooling agen: MCP, skills, program examples) + **x402** (standar pembayaran HTTP 402; dipakai Nous Portal via Solana USDC).
- Isi wiki: **315 halaman sumber · 34 entitas · 11 konsep · 5 analisis** (ditambah `index.md`, `log.md`, dan `overview.md`).
- Pintu masuk: [`wiki/index.md`](wiki/index.md) (katalog) · [`wiki/overview.md`](wiki/overview.md) (sintesis top-level) · [`wiki/log.md`](wiki/log.md) (riwayat operasi).
- Repo: `github.com/tinozservice/llm-wiki` — branch `main`.

## Struktur

```text
raw/                  # sumber mentah — immutable, dikurasi manusia
├── assets/           # gambar hasil unduhan klip
└── 2026/oktober/01/  # arsip per tahun / bulan / tanggal
wiki/                 # dikelola penuh oleh LLM
├── index.md          # katalog konten (diperbarui tiap ingest)
├── log.md            # catatan kronologis (append-only)
├── overview.md       # sintesis top-level
├── sources/          # satu halaman per sumber mentah
├── entities/         # orang, organisasi, produk, tempat
├── concepts/         # ide, metode, istilah, teknologi
└── analyses/         # perbandingan & jawaban yang dibukukan
AGENTS.md             # schema & manual operasi
.opencode/skills/     # workflow: wiki-ingest · wiki-query · wiki-lint
```

## Cara pakai

1. **Tambah sumber** — taruh klip/artikel/dokumen di `raw/` (Obsidian Web Clipper sangat cocok).
2. **Ingest** — minta agen: `ingest raw/<file>` atau `ingest everything new`. Sumber diarsipkan ke `raw/<tahun>/<bulan>/<DD>/` lebih dulu; satu-satunya penulisan lain di `raw/` adalah redaksi keamanan (`AGENTS.md` → *Security edits*).
3. **Tanya** — ajukan pertanyaan; jawaban yang berharga dapat dibukukan ke `wiki/analyses/`.
4. **Rawat** — sesekali minta `lint the wiki` untuk mengecek kontradiksi, tautan rusak, halaman orphan, dan celah pengetahuan.

## Tiga workflow

| Skill | Yang dilakukan |
| --- | --- |
| [`wiki-ingest`](.opencode/skills/wiki-ingest/SKILL.md) | Arsipkan sumber → buat halaman sumber → perbarui entitas/konsep terkait → perbarui `index.md` + `log.md`. |
| [`wiki-query`](.opencode/skills/wiki-query/SKILL.md) | Jawab pertanyaan dari isi wiki dengan sitasi; tawarkan membukukan jawaban berharga. |
| [`wiki-lint`](.opencode/skills/wiki-lint/SKILL.md) | Audit kesehatan wiki: kontradiksi, klaim basi, halaman orphan, tautan rusak, knowledge gap. |

## Aturan inti

- `raw/` bersifat **immutable** — konten tidak pernah diedit kecuali **perbaikan keamanan** (redaksi data sensitif; lihat `AGENTS.md` → *Security edits*); LLM hanya boleh memindahkan file ke folder arsip tanggal.
- `wiki/` sepenuhnya milik LLM; prosa ditulis dalam **Bahasa Indonesia** (kutipan, judul, dan istilah teknis tetap aslinya).
- Setiap halaman wiki diawali frontmatter YAML (`title`, `type`, `created`, `updated`, `sources`, `tags`) dan diakhiri bagian `## Related`.
- Setiap klaim menyitir halaman sumbernya. Kontradiksi tidak pernah ditimpa diam-diam — selalu diberi callout dan dicatat di log.
- Pesan commit memakai awalan tipe: `ingest:`, `query:`, `lint:`, `schema:`, `maintenance:`, `chore:`.
- `.obsidian/` sengaja tidak di-track (pengaturan khusus per-komputer); begitu pula `.trash/` dan file junk OS.

## Bacaan lanjut

- Pertanyaan terbuka & arah pengembangan: [`wiki/overview.md`](wiki/overview.md)
- Aturan lengkap & cara berkontribusi: [`AGENTS.md`](AGENTS.md)
