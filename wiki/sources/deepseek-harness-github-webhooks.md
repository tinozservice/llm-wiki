---
title: "DeepSeek Harness — Review Sessions dari GitHub Webhooks"
type: source
created: 2026-10-08
updated: 2026-10-08
sources: []
tags: [deepseek-harness, dsh, github, webhook]
---

# DeepSeek Harness — Review Sessions dari GitHub Webhooks

- **Sumber**: deepseek-harness.github.io/en/guide/github-review
- **Penulis**: DeepSeek Harness
- **URL**: <https://deepseek-harness.github.io/deepseek-harness/en/guide/github-review>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-08
- **Berkas mentah**: `raw/2026/oktober/08/DeepSeek Harness Docs. Create review Sessions from GitHub webhooks.md`

## TL;DR

Overlay opt-in yang menambahkan endpoint GitHub ber-tanda tangan ke `dsh web`: saat PR berubah dari draft → **ready for review**, rule membuat **Session review read-only** dengan prompt yang menyertakan head SHA + field PR terpilih (dilabeli "untrusted metadata"; mutasi file/branch/PR dilarang). Listener default `127.0.0.1:3081` (Web UI utama tetap 3080).

## Key points

- Prasyarat: checkout lokal (Workspace), `DSH_GITHUB_WEBHOOK_SECRET` (high-entropy), TLS reverse proxy/tunnel, langganan webhook event "Pull requests" (`application/json`).
- Rule menerima hanya source `primary-github`, repo `deepseek-harness/deepseek-harness`, event `pull_request`, action `ready_for_review`; preset agen `standard` + permission `read-only`.
- Respons HTTP lebih lemah dari outcome agent: `202` = signature & JSON diterima + rule call dijadwalkan — bukan berarti Session dibuat.
- Ekstensi programatik (`run()` = JS terpercaya): query policy service internal; map repo → path lokal.
- Semantik delivery: runtime webhook tidak menyimpan state; delivery berulang bisa membuat Session ganda; crash kehilangan rule call yang belum admitted.

## Notable quotes

> "The webhook secret authenticates inbound GitHub data only. It grants neither rule code nor the created Agent outbound GitHub access."

## What this changes

- Entitas [DeepSeek Harness](../entities/deepseek-harness.md) (otomasi webhook).
- Tidak ada kontradiksi.

## Related

- [DeepSeek Harness](../entities/deepseek-harness.md)
- [DeepSeek Harness — Architecture](deepseek-harness-architecture.md)
