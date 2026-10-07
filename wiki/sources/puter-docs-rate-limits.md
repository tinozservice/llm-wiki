---
title: "Puter docs — Rate Limits and Quotas"
type: source
created: 2026-10-07
updated: 2026-10-07
sources: []
tags: [puter, rate-limits, quotas, reference]
---

# Puter docs — Rate Limits and Quotas

- **Sumber**: Puter.js documentation — halaman *Rate Limits and Quotas*
- **Penulis**: Puter Technologies Inc.
- **URL**: <https://docs.puter.com/rate-limits-and-quotas/>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-07
- **Berkas mentah**: `raw/2026/oktober/07/puter docs. Rate Limits and Quotas.md`

## TL;DR

Referensi lanjutan batas Puter: **tiga pemeriksaan independen** — usage credit (`402`), rate limit (`429`), dan storage quota (`413`). Semua dihitung terhadap **akun user** (bukan developer), mayoritas ber-scope *per user, per app*, dengan angka terpisah untuk paid / free / anonymous. Free storage 100 MiB; free AI 30 request/10 detik.

## Key points

- **Tiga pemeriksaan**:

  | Pemeriksaan | Membatasi | Reset | Error |
  | --- | --- | --- | --- |
  | Usage credit | biaya pemakaian (AI, egress, KV, storage ops, workers) | bulanan per plan | `402` `insufficient_funds` |
  | Rate limit | jumlah request per jendela | rolling 10 s / 1 min / 1 h | `429` `too_many_requests` |
  | Storage quota | byte tersimpan | saat file dihapus / upgrade | `413` `storage_limit_reached` |

- **Scope** (default): *per user, per app* — satu user di satu app punya budget sendiri; scope lain: per user (semua app), per app (semua user), per jaringan.
- **Usage credit**: allowance bulanan per akun; kredit beli tidak kedaluwarsa; biaya utama — **egress** (semua byte respons, "the one developers underestimate"), AI per model (`puter.ai.listModels()`, `GET /metering/allCosts`), operasi KV/storage. Request streaming yang putus ditagih estimasi; request tanpa output gratis; request mahal (chat/TTS/STT/voice) **mereservasi** biaya maksimum saat berjalan.
- **Rate limit AI**: 200 req/10 s (paid) · 30 (free) · 20 (anonymous); concurrent 20/3/2. Batas input: TTS 3.000 karakter; `speech2speech` 25 MiB; gambar dalam chat 5 MB; file chat 30 MB (Claude) / 5 MB (OpenAI).
- **Endpoint kompatibel OpenAI/Anthropic** (`/puterai/openai/v1/*`, `/puterai/anthropic/v1/messages`) **butuh plan berbayar** — akun free mendapat `402 subscription_required`; model yang sama tetap bisa diakses semua akun lewat `puter.ai.*` dan `/drivers/call`.
- **Tools server-side Claude dibatasi**: web search/fetch `max_uses` default 10 (cap 20); advisor default 3 (cap 10), `max_tokens` default 16.384 (cap 32.768).
- **Image generation** (per provider): xAI ≤5 referensi; Together dikecualikan (butuh third-party data sharing); Cloudflare — clamp dimensi/steps (FLUX.2 256–1920; Schnell fixed 1024×1024); Replicate ≤10 referensi, predictions kedaluwarsa 10 menit; BytePlus — referensi & rentang piksel per model.
- **OCR**: Textract 10 MB (JPEG/PNG/TIFF/PDF 1 halaman); Mistral 50 MB (PDF hingga 1.000 halaman); saldo harus menutup jumlah halaman potensial sebelum diproses.
- **Key-Value store**: 400 op/10 s (paid & free) · 200 anon; `list` 240/120/60 per menit; key ≤1 KB; value ≤400 KB; angka di luar ±(2⁵³−1) **di-clamp** (disimpan sebagai string jika butuh presisi); nesting path ≤31 level; ±140 path pendek per call.
- **Filesystem** (per menit, paid/free/anon): `read` 600/300/120; `write` 300/120/30; `stat` 1.200/600/300; mutasi 1.200/900/600 (+6.000/jam paid); uploads in progress 10.000 per user; satu batch ≤500 entri; signed-URL reads 3.000/menit per jaringan.
- **WebDAV**: 600 req/menit + 10 concurrent per jaringan; limit sign-in gagal per akun/jaringan (disarankan `-token` username + API token untuk mount lama).
- **Sites & workers, Apps, Profiles, Email, Sharing, Teams, Events**: rentang limit tersendiri; menonjol —
  - Profil user lain hanya terbaca saat user itu **berbayar**.
  - Email transactional butuh plan berbayar (600/menit; 10 penerima; lampiran ≤25 MB).
  - Share "anyone with the link" butuh plan berbayar; share baru ≤200/hari.
  - Teams: 1 tim per akun; kursi 4 (owner free) / 40 (owner paid); kursi tanpa plan = `org_seat_free` (setengah allowance).
  - Events: biaya delivery 10 µ¢ (broadcast) / 100 µ¢ (single) per event; langganan persisten 500 (paid) / 100 (free); suspensi `no_credit` saat saldo habis.
- **Networking / Peer / Live connections**: relay token 60/30/10 per menit; koneksi realtime 400/200/100 per akun (maks 150 dari satu origin); semua driver call ≤8.000/menit (penangkal looping).
- **Storage**: 100 MiB free (plan berbayar menambah); byte tersimpan; upload mereservasi ukuran deklarasinya (kedaluwarsa 15 menit–1 jam); `puter.fs.space()` → `{ capacity, used }`.
- **Penanganan error**: SDK otomatis menampilkan dialog upgrade untuk `insufficient_funds` / `subscription_required` / `storage_limit_reached`; app disarankan menangani `storage_limit_reached` (agar save tidak gagal diam-diam) dan backoff saat `429`; usage dicek via `puter.fs.space()` dan `puter.auth.getMonthlyUsage()`.

## Notable quotes

> "Credit doesn't buy rate-limit headroom, and an empty balance doesn't block reads that cost nothing."

> "Egress: every byte sent to a client, on all responses, not just file downloads. This is the one developers underestimate."

## What this changes

- Menegaskan sisi operasional **user-pays**: seluruh limit dihitung ke akun user → satu user berat tidak menghabiskan kuota app untuk user lain ([User-Pays Model](../concepts/user-pays-model.md)).
- Dibuat: [Puter](../entities/puter.md) — bagian "Batas & kuota" merangkum halaman ini.
- Open question baru: **nominal dolar free allowance bulanan** tidak dipublikasikan di klip (hanya "shown in the dashboard").
- Tidak ada kontradiksi.

## Related

- [Puter](../entities/puter.md)
- [User-Pays Model](../concepts/user-pays-model.md)
- [Puter docs — User-Pays Model](puter-docs-user-pays.md)
- [Puter.js Pricing — The User-Pays Model](puter-puterjs-pricing.md)
