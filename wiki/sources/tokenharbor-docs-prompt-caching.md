---
title: "Token Harbor docs — Prompt caching on Claude"
type: source
created: 2026-10-02
updated: 2026-10-02
sources: []
tags: [token-harbor, cache, claude, api]
---

# Token Harbor docs — Prompt caching on Claude

- **Sumber**: Token Harbor — dokumentasi, halaman *Prompt caching on Claude*
- **Penulis**: Token Harbor
- **URL**: <https://tokenharbor.ai/docs/api/prompt-caching>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-02
- **Berkas mentah**: `raw/2026/oktober/02/Token Harbor docs Prompt caching on Claude.md`

## TL;DR

Claude tidak meng-cache otomatis — perlu *mark* pada batas prefix yang bisa dipakai ulang. **Token Harbor menambahkan mark itu sendiri** bila request tidak membawanya, di kedua endpoint (`/v1/chat/completions` dan `/v1/messages`) dan web chat. Token sebelum mark ditagih **0,1×** pada turn berikutnya (**0,025×** di Claude Fable 5.1); cache *write* 1,25×. Entri cache hidup 5 menit dan diperbarui setiap hit.

## Key points

- **Mekanisme**: bagian prompt sebelum mark = prefix yang dipakai ulang; turn berikutnya membaca dari cache dengan harga **sepersepuluh** (Fable 5.1: seperdua puluh lima). Menulis cache baru berbiaya **1,25×**, jadi menandai request sekali-jalan justru merugikan.
- **Auto-mark Token Harbor**: dipasang hanya bila reuse hampir pasti — request membawa *tools*, atau percakapan sudah ≥3 pesan, dan prefix reusable >±1.200 token. Berlaku di kedua endpoint + web chat; klien tidak perlu diubah.
- **Mark milik pengguna tidak pernah diutak-atik**: satu `cache_control` di mana pun (tool/system/message) dan request sepenuhnya dikendalikan pengguna.
- **Cakupan Claude**: tools & system prompt selalu; history percakapan **tergantung koneksi** (tidak semua koneksi meng-cache sama banyak) — ini lantai, bukan janji. Untuk kepastian history, pasang mark sendiri.
- **Cara memasang mark sendiri**: satu `cache_control: {type: "ephemeral"}` pada content block terakhir tiap request; pertahankan mark lama saat percakapan tumbuh. `/v1/chat/completions` meneruskan `cache_control` meski bukan field OpenAI.
- **Batas Anthropic**: maksimum **4 mark** per request (tools+system+messages), dan pencarian cache mundur maksimum **20 content block** — turn agentik yang menghasilkan >20 block bisa melewati mark sebelumnya; solusinya mark kedua di tengah.
- **Verifikasi**: response memuat `cache_creation_input_tokens` (ditulis, 1,25×) dan `cache_read_input_tokens` (dibaca, 0,1×; 0,025× Fable 5.1). Kalau `cache_read` mentok sementara input tumbuh → hanya prefix statis yang ter-cache.
- **TTL**: 5 menit, di-refresh tiap hit.
- **Catatan perbandingan**: rasio cache antar gateway hanya apple-to-apple bila request-nya sama; klien Anthropic-native memasang mark sendiri, mode OpenAI-compat tidak.

## Notable quotes

> "When your request carries no cache marks of its own, we add one."

> "Everything before that mark is billed at a tenth on later turns — a twenty-fifth on Claude Fable 5.1."

> "Cached entries live for 5 minutes, refreshed on each hit."

## What this changes

- Menjawab (untuk Claude) open question tarif cache Token Harbor: read 0,1× / write 1,25×, plus kebijakan auto-mark.
- Melengkapi lapisan cache platform (upstream/exact/semantic) yang disebut di [Credits & top-ups](tokenharbor-docs-credits.md) dan [Models](tokenharbor-docs-models.md).
- Halaman diperbarui: [Token Harbor](../entities/token-harbor.md), [Prompt Caching](../concepts/prompt-caching.md) (baru), [Perhitungan Limit Agent Pass](../analyses/perhitungan-limit-agent-pass.md).

## Related

- [Token Harbor](../entities/token-harbor.md)
- [Token Harbor — Models](tokenharbor-docs-models.md)
- [Token Harbor — Credits & top-ups](tokenharbor-docs-credits.md)
- [Prompt Caching](../concepts/prompt-caching.md)
- [OpenCode Zen](../entities/opencode-zen.md)
