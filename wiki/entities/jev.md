---
title: Jev
type: entity
created: 2026-10-08
updated: 2026-10-08
sources: [typesafe-docs-introduction, typesafe-docs-models, typesafe-docs-jaggedness-jev-113, typesafe-docs-coding-agents, openrouter-jev-113, openrouter-decisions-models]
tags: [jev, typesafe, model, decision-models, system-one]
---

# Jev

**Jev** adalah model unggulan **[TypeSafe](typesafe.md)** dan **model pertama kelas System One** — model keputusan terstruktur, bukan LLM penghasil teks. Versi saat ini: **Jev 1.13** (`jev-1.13.0`). Menggantikan pertanyaan lama wiki "Apa itu Jev?" yang muncul dari katalog [OpenCode Zen](opencode-zen.md) & [Tokenra](tokenra.md) ([Introduction](../sources/typesafe-docs-introduction.md), [Models](../sources/typesafe-docs-models.md)).

## Spesifikasi (jev-1.13.0)

- **Input**: teks saja (string / JSON object / array teks); gambar/audio/video belum. Bahasa utama Inggris; bahasa lain (termasuk CJK) berakurasi lebih rendah.
- **Output**: `choice` + probabilitas + confidence; `score` (bisa pecahan) + legend + probabilitas + confidence; `noul` 0–1. **Tidak menghasilkan teks.**
- **Harga**: **$0.042 per 1M token input ($42/Btok); output token GRATIS** — di [OpenCode Zen](opencode-zen.md) terdaftar $0.04/M, di OpenRouter rata-rata tertimbang $0.04183/M.
- **Konteks**: 64k token/request (state + semua pertanyaan), 32k untuk state + pertanyaan terpanjang. OpenRouter menulis "32K" (kemungkinan penyederhanaan).
- **Rate limit**: 100K token/detik & 80 request/detik — **dinamis** ("menyesuaikan selagi kesepakatan GPU besar berjalan"); enterprise kustom.
- **Alias**: `jev-latest` (stabil; default SDK) dan `jev-preview` (keduanya kini → `jev-1.13.0`).
- **Kustomisasi**: tanpa fine-tuning/LoRA per akun; bobot sama untuk semua; adaptasi domain lewat state/instructions/criteria. Tidak dilatih pada data pelanggan; ZDR untuk enterprise.
- **Keluarga**: **Jev Router** (merutekan tiap request ke model & reasoning effort terbaik; konteks 1M; "runs on Jev") dan **Jev Latest** (redirect ke model terbaru keluarga Jev) ([OpenRouter](../sources/openrouter-jev-113.md)).

## Batas kemampuan (resmi)

Literal (menjawab yang ditulis, bukan yang dimaksud); lemah pada aritmetika/counting/tanggal (pindahkan ke kode); rentan indireksi & state besar tak relevan; bisa dipengaruhi konten adversarial; **cenderung memilih opsi Choice pertama** (uji dengan reorder); tidak bisa generasi teks ([jaggedness](../sources/typesafe-docs-jaggedness-jev-113.md)).

## Penting: Jev bukan pengganti LLM coding agent

TypeSafe menegaskan tidak ada setting `model: "jev-latest"` untuk mengubah Claude Code/Cursor/opencode dsb. menjadi "agen Jev". Pola benar: kode yang ditulis agen memanggil Jev untuk routing, klasifikasi, scoring, guardrail ([coding agents](../sources/typesafe-docs-coding-agents.md)). Ini mengoreksi kesan dari katalog pihak ketiga yang mendaftar Jev sebagai model biasa.

## Ketersediaan di wiki

- **OpenCode Zen**: `jev-1.13` ($0.04 in / $0.00 out — kini terkonfirmasi bukan anomali) dan `jev-1.13-free` ($0/$0) ([Zen](opencode-zen.md)).
- **Tokenra**: `jev-latest` ($0.042/$0.042 — output terdaftar berbeda dari resmi $0; catatan) dan `jev-router` ($0, anonymous — kemungkinan Jev Router; varian resminya di OpenRouter) ([Tokenra](tokenra.md)).
- **OpenRouter**: satu provider, latensi 0.18 s, uptime 100% (3 hari); volume 63,7B token prompt ([OpenRouter](../sources/openrouter-jev-113.md)).

## Open questions

- Nomor versi sebelumnya (jev-1.0–1.12) tidak didokumentasikan di klip.
- Apakah `jev-1.13-free` (Zen) dan `jev-router` gratis (Tokenra) adalah kuota resmi TypeSafe atau subsidi penyedia.
- Selisih harga input Zen $0.04 vs resmi $0.042; selisih listing output Tokenra ($0.042) vs resmi ($0) — kemungkinan tampilan agregator, belum dikonfirmasi.
- Fitur "Jev Lab" (OpenRouter) belum dijelajahi.

## Related

- [TypeSafe](typesafe.md) — perusahaan induk.
- [Model Keputusan](../concepts/decision-models.md) — kelas model & ekosistemnya.
- [OpenCode Zen](opencode-zen.md) · [Tokenra](tokenra.md)
- [TypeSafe — Models (sumber)](../sources/typesafe-docs-models.md) · [OpenRouter — Jev 1.13 (sumber)](../sources/openrouter-jev-113.md)
