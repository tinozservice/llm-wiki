---
title: Layanan Akses Model
type: concept
created: 2026-10-01
updated: 2026-10-01
sources: [tokenharbor-pricing, opencode-go, opencode-zen-price-list]
tags: [pricing, subscription, per-token, model-access]
---

# Layanan Akses Model

**Layanan akses multi-model** adalah pola penjualan akses ke banyak model AI dari satu titik masuk — lewat langganan bulanan, tarif per token, atau keduanya — alih-alih berlangganan tiap penyedia model secara terpisah.

## Contoh di wiki

| Layanan | Model akses | Cara membatasi / menagih |
| --- | --- | --- |
| [Token Harbor](../entities/token-harbor.md) | Langganan pass: Free, Agent $1.99/bln (pertama $0.99), Office $9.99/bln, Frontier $99/bln | *Included usage* bernilai dolar pada harga per-token; boost hingga 2× untuk model terpilih; kelebihan ditagih dari saldo dengan diskon 5–15% (lihat [sumber](../sources/tokenharbor-pricing.md)) |
| [OpenCode Go](../entities/opencode.md) | Langganan: Go $10/bln, Go Plus $40/bln | Batas per model: estimasi request per 5 jam + batas pemakaian bulanan (dalam dolar); kelebihan otomatis pay-as-you-go dari kredit bersama Go–Zen (per user, 2026-10-01; lihat [sumber](../sources/opencode-go.md)) |
| [OpenCode Zen](../entities/opencode-zen.md) | Pay-as-you-go per token (katalog console) | Harga per 1M token (input/output/cache read/cache write); 9 model gratis $0; model harus diaktifkan dulu; berbagi saldo kredit dengan Go (per user, 2026-10-01; lihat [sumber](../sources/opencode-zen-price-list.md)) |

## Kesamaan dan perbedaan

- **Kesamaan**: satu katalog besar model lintas keluarga; ditujukan untuk pemakaian agentik/otomasi; masing-masing menyediakan jalur gratis — Token Harbor lewat free allowance bulanan berotasi, OpenCode lewat 9 model $0 di Zen dan model gratis terbatas di Go.
- **Tidak ada batas keras**: Token Harbor tetap melayani lewat saldo dengan tarif diskon setelah jatah habis; OpenCode Go beralih ke pay-as-you-go dari kredit bersama setelah batasnya habis (per user, 2026-10-01).
- **Tumpang tindih Token Harbor ↔ OpenCode**: GPT-6 Luna, Qwen3.8 Max, GLM-5.3, GLM-5.3-Flash, Qwen3.8 Flash, DeepSeek V4 Flash, DeepSeek V4.1 Flash, dan MiMo V2.6 Flash muncul di ketiga katalog.
- **Tumpang tindih Go ↔ Zen**: sebagian besar lineup Go juga ada di katalog Zen (Kimi K3, Grok 4.7/4.6, DeepSeek V4 Pro, Qwen3.8 Flash/Max, GLM-5.3/5.3-Flash, GPT-5.6/6 Luna, MiniMax, MiMo-V2.6-Flash, Muse Spark, Space Bunny Free, LongCat 2.5 Preview Free, dan lain-lain).
- **Skema berbeda**: langganan berbasis nilai (Token Harbor) vs langganan berbasis batas per model (Go) vs tarif per token (Zen/Token Harbor).
- **Harga sebagian identik**: banyak model yang sama berharga per-token identik di Token Harbor dan OpenCode Zen (mis. Claude Opus 5.5, Claude Fable 5.1, GPT-6 Astra, Kimi K3, Grok 4.7, Qwen3.8 Max, GLM-5.3), tetapi tidak semua — GPT-5.6 Terra ($2·$12 vs $2.50·$15) dan Gemini 3.8 Flash ($0.75·$3.75 vs $1.50·$7.50) lebih murah di Token Harbor (perbandingan awal dari [katalog Token Harbor](../sources/tokenharbor-models-value.md) dan [daftar Zen](../sources/opencode-zen-price-list.md)).
- **Keterkaitan (per user, 2026-10-01)**: kredit OpenCode berasal dari *top up* dan menyatu antara Go dan Zen; saat batas Go habis, pemakaian otomatis dialihkan ke pay-as-you-go dari saldo yang sama.

## Pertanyaan terbuka

- Harga efektif per beban kerja: langganan (Go/Token Harbor) vs per token (Zen)? Perbandingan bisa mulai dihitung, tapi basis estimasi request di halaman Go tidak dijelaskan dan harga antar layanan belum tentu sama.
- Seberapa luas kesamaan harga Token Harbor ↔ Zen? Perbandingan awal: banyak yang identik, beberapa berbeda; perlu pengecekan menyeluruh.
- Apakah pola ini juga dipakai layanan lain? Butuh sumber tambahan.

## Related

- [Token Harbor](../entities/token-harbor.md)
- [OpenCode](../entities/opencode.md)
- [OpenCode Zen](../entities/opencode-zen.md)
- [Overview](../overview.md)
