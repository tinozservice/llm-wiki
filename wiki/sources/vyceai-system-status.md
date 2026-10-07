---
title: "VyceAI — System Status"
type: source
created: 2026-10-07
updated: 2026-10-07
sources: []
tags: [vyceai, status, telemetry, uptime]
---

# VyceAI — System Status

- **Sumber**: VyceAI dashboard-v2 — tab *System Status*
- **Penulis**: Vyce AI
- **URL**: <https://vyceai.com/dashboard-v2>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-07
- **Berkas mentah**: `raw/2026/oktober/07/vyceai System Status.md`

## TL;DR

Halaman telemetri VyceAI saat klip: status keseluruhan **"Degraded performance"** — respons 9,95 s (elevated), **uptime 96,7%** (autonomous failover aktif), **11/13 endpoint online** (85%). Daftar endpoint mengungkap **13 model** beserta harga dan latensi, termasuk `gpt-6-luna` yang **offline**.

## Key points

- Ringkasan: Response time 9,95 s (rolling 5 menit) · Uptime **96,7%** · Models Health **11/13 (85%) online** · "Multi-region proxy clusters".
- **Direktori endpoint** (harga per 1M; status saat klip):
  - Agnes 3.0 Flash `agnes-3.0-flash` $0.05/$0.15 — online (24.635 ms)
  - Claude Sonnet 4.6 `claude-sonnet-4-6` $3/$15 — online (6.170 ms, success rate 100%)
  - Claude Sonnet 4.6 Pro `claude-sonnet-4-6-pro` $3/$15 — online
  - DeepSeek V4 Flash `deepseek-v4-flash` $0.22/$0.66 — online (2.750 ms)
  - DeepSeek V4.1 Flash `deepseek-v4.1` $0.15/$0.6 — online (6.588 ms)
  - DeepSeek V4 Flash Lr `deepseek-v4-flash-lr` $0.15/$0.6 — online (380 ms)
  - DeepSeek V4 Pro `deepseek-v4-pro` $0.5/$2 — online (380 ms)
  - **GPT 6 Luna `gpt-6-luna` $2/$2 — OFFLINE** (632 ms)
  - GPT 5.6 Sol `gpt-5.6-sol` $4/$20 — online (380 ms)
  - GPT 6 Astra `gpt-astra` $10/$50 — online (380 ms)
  - GPT 5.6 Terra `gpt-5.6-terra` $2.5/$15 — online (6.434 ms)
  - Grok 4.6 `grok-4.6` $2/$6 — **maintenance**
  - Grok Imagine 2.0 `grok-imagine-2` $0.5/$0 (per gambar) — online
- Model "core production" menyorot Claude Sonnet 4.6 dan DeepSeek V4 Flash (success rate 100% pada jendela 5 menit).
- Catatan: harga sebagian model berbeda dari halaman Models (mis. V4.1 Flash di sini `$0.15/$0.6`, sama; tetapi DeepSeek V4 Flash Lr tambahan muncul dengan harga lebih murah dari V4 Flash).

## Notable quotes

> "Degraded performance … Autonomous failover active"

## What this changes

- **Bukti keandalan pihak pertama**: uptime 96,7% dan Luna offline saat klip — penting untuk evaluasi [VyceAI](../entities/vyceai.md) (bandingkan PageType status Go/Zen/Token Harbor yang belum terdokumentasi).
- Melengkapi daftar harga lintas penyedia: beberapa harga identik [OpenCode Zen](../entities/opencode-zen.md) (Sonnet 4.6 $3/$15; Sol $4/$20; Astra $10/$50; Terra $2.5/$15; Grok 4.6 $2/$6), sementara DeepSeek V4 Pro lebih murah ($0.5/$2 vs $1.74/$3.84).
- Memperbarui [Perbandingan GPT-6 Luna](../analyses/perbandingan-gpt-6-luna.md): `gpt-6-luna` di VyceAI = $2/$2, offline saat klip.
- Tidak ada kontradiksi.

## Related

- [VyceAI](../entities/vyceai.md)
- [VyceAI — Models (Paid Plan view)](vyceai-models-paid-plan.md)
- [OpenCode Zen](../entities/opencode-zen.md)
- [Perbandingan GPT-6 Luna Antar Penyedia](../analyses/perbandingan-gpt-6-luna.md)
