---
title: Prompt Caching
type: concept
created: 2026-10-02
updated: 2026-10-08
sources: [tokenharbor-docs-prompt-caching, tokenharbor-docs-models, tokenharbor-docs-credits, opencode-zen-price-list, agnes-model-pricing, groq-rate-limits, inception-models, novita-model-libraries, anthropic-pricing]
tags: [caching, pricing, latency, api]
---

# Prompt Caching

**Prompt caching** adalah mekanisme menyimpan (sebagian) prompt yang sudah diproses agar turn berikutnya tidak membayar penuh untuk prefix yang sama. Pada aplikasi agentik dan chat panjang, prefix percakapan dikirim ulang setiap turn — cache membuat bagian itu dibaca dengan tarif jauh lebih murah, dan kadang tidak dihitung sama sekali.

## Implementasi per layanan

| Layanan | Mekanisme | Tarif / perlakuan |
| --- | --- | --- |
| [Token Harbor](../entities/token-harbor.md) | 3 lapis: **upstream** (vendor cache, prefix ≥1024 token, badge `Upstream cache`), **semantic** (pertanyaan sama/mirip), **exact** (identik dalam 5 menit) | upstream ~90% off bagian input ter-cache; semantic & exact **$0**; untuk Claude: read **0,1×** (0,025× Fable 5.1), write **1,25×**, auto-mark; header `X-TH-Cache-Control` (lihat [sumber](../sources/tokenharbor-docs-prompt-caching.md), [docs Models](../sources/tokenharbor-docs-models.md)) |
| [OpenCode Zen](../entities/opencode-zen.md) | Kolom harga **cache read** & **cache write** per model | contoh DeepSeek V4.1 Flash: input $0.30/M vs cache read $0.01/M (≈3%); banyak model lain "—" |
| [Agnes](../entities/agnes.md) | Cached input dihitung terpisah | **10% harga input reguler**; model flash: cached $0 |
| [Groq](../entities/groq.md) | Prompt caching | Token cached **tidak dihitung** ke rate limit |
| [Cerebras](../entities/cerebras.md) | Prompt caching (embedding efemeral per organisasi) | Limit "uncached tokens" dipisah dari total token |
| [Inception Labs](../entities/inception-labs.md) | Cached input | Mercury 2.5: input $0.04 vs cached $0.004 (**10%**) |
| [Novita](../entities/novita.md) | Cache Read per model | contoh DeepSeek V4.1 Flash: $0.006/M (input $0.3/M) |
| [Anthropic](../entities/anthropic.md) (langsung) | Automatic caching (1 field `cache_control`) atau breakpoint eksplisit | write 1,25× (5m) / 2× (1h); read 0,1× standar, **0,05×** Opus/Sonnet 5.5, **0,025×** Fable/Mythos 5.1; minimum cacheable 512 token; menumpuk dengan batch (−50%) & US-only (1,1×) ([Pricing](../sources/anthropic-pricing.md)) |

## Pola yang terlihat

- **Cache read ≈ 10% harga input** adalah pola umum (Agnes, Inception, Claude via Token Harbor), tetapi **model frontier terbaru bisa lebih murah**: Anthropic resmi menetapkan 0,05× (Opus/Sonnet 5.5) dan 0,025× (Fable/Mythos 5.1) — tren diskon cache membesar di kelas atas. Token Harbor menyebut "up to 90% off" untuk upstream cache.
- **Cache write bisa lebih mahal** (Claude: 1,25×) — caching request sekali-jalan justru rugi.
- Sebagian layanan memakai cache sebagai **pengurang rate limit**, bukan hanya diskon (Groq; Cerebras memisahkan kuota uncached).
- Token Harbor otomatis memasang cache mark pada Claude bila klien tidak melakukannya — nilai tambah gateway (lihat [Prompt caching on Claude](../sources/tokenharbor-docs-prompt-caching.md)).

## Implikasi

- Untuk percakapan panjang/agentik, tarif efektif input bisa turun drastis dibanding harga katalog — penting saat menghitung biaya beban besar (lihat [Perhitungan Limit Agent Pass & Beban Konteks Besar](../analyses/perhitungan-limit-agent-pass.md)).
- Perbandingan harga antar penyedia perlu memperhatikan **tarif cache**, bukan hanya input/output.

## Open questions

- Apakah diskon cache sepenuhnya diteruskan ke penghitungan *usage value* pass Token Harbor? (Dokumentasi menghitung biaya dari token upstream; implikasinya kuat, tapi tidak dinyatakan eksplisit untuk pass.)
- Tarif cache efektif per model non-Claude di Token Harbor (dokumen hanya menyebut "up to 90% off" + badge per model).
- Rasio cache read **tidak seragam**: 10% umum (Agnes, Inception, Claude standar), 5% (Opus/Sonnet 5.5 resmi), 2,5% (Fable/Mythos 5.1 resmi), 3% (Zen DeepSeek) — bandingkan per model, bukan per vendor.

## Related

- [Token Harbor](../entities/token-harbor.md)
- [Token Harbor — Prompt caching on Claude](../sources/tokenharbor-docs-prompt-caching.md)
- [Token Harbor — Models](../sources/tokenharbor-docs-models.md)
- [OpenCode Zen](../entities/opencode-zen.md)
- [Agnes](../entities/agnes.md)
- [Groq](../entities/groq.md)
- [Anthropic](../entities/anthropic.md) — tarif caching resmi per model.
- [Layanan Akses Model](model-access-services.md)
