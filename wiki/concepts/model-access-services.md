---
title: Layanan Akses Model
type: concept
created: 2026-10-01
updated: 2026-10-02
sources: [tokenharbor-pricing, opencode-go, opencode-zen-price-list, tokenharbor-docs-subscription, tokenharbor-docs-vs-openrouter]
tags: [pricing, subscription, per-token, model-access]
---

# Layanan Akses Model

**Layanan akses multi-model** adalah pola penjualan akses ke banyak model AI dari satu titik masuk — lewat langganan bulanan, tarif per token, atau keduanya — alih-alih berlangganan tiap penyedia model secara terpisah.

## Contoh di wiki

| Layanan | Model akses | Cara membatasi / menagih |
| --- | --- | --- |
| [Token Harbor](../entities/token-harbor.md) | Langganan pass: Free, Agent $1.99/bln (pertama $0.99), Office $9.99/bln, Frontier $99/bln + wallet pay-as-you-go | *Included usage* bernilai dolar pada harga per-token; boost hingga 2× untuk model terpilih; kelebihan → lanjut PAYG dari saldo dengan diskon 5–15% **bila toggle overage aktif**, jika tidak Pass jadi hard limit (lihat [sumber](../sources/tokenharbor-docs-subscription.md)) |
| [OpenRouter](https://openrouter.ai/) | Pay-as-you-go per token (gateway) | Gateway besar satu key untuk banyak model; endpoint OpenAI-compatible; menurut perbandingan versi Token Harbor, tidak menawarkan endpoint Anthropic native, free tier tetap, atau setup agent satu perintah (lihat [sumber](../sources/tokenharbor-docs-vs-openrouter.md)) |
| [OpenCode Go](../entities/opencode.md) | Langganan: Go $10/bln, Go Plus $40/bln | Batas per model: estimasi request per 5 jam + batas pemakaian bulanan (dalam dolar); kelebihan otomatis pay-as-you-go dari kredit bersama Go–Zen (per user, 2026-10-01; lihat [sumber](../sources/opencode-go.md)) |
| [OpenCode Zen](../entities/opencode-zen.md) | Pay-as-you-go per token (katalog console) | Harga per 1M token (input/output/cache read/cache write); 9 model gratis $0; model harus diaktifkan dulu; berbagi saldo kredit dengan Go (per user, 2026-10-01; lihat [sumber](../sources/opencode-zen-price-list.md)) |
| [Agnes](../entities/agnes.md) | Langganan Token Plan: Starter $4/bln, Plus $10/bln, Pro $50/bln (kartu promo $2/$5/$25) | Kuota request per jendela 5 jam bergulir + kuota mingguan; gambar 4.000/hari; video 500 detik/hari; RPM lebih tinggi (lihat [sumber](../sources/agnes-token-plan.md)) |
| [Groq](../entities/groq.md) | Free $0; Developer pay-per-token; Enterprise kustom | Rate limit per organisasi (RPM/RPD/TPM/TPD); billing progresif $1–$1.000 lalu bulanan (lihat [sumber](../sources/groqcloud-plans.md)) |
| [Novita](../entities/novita.md) | Pay-as-you-go per token + GPU/sandbox | Tier T1–T5 berdasar top-up menentukan RPM/TPM per model; batch inference diskon 50% (lihat [sumber](../sources/novita-model-libraries.md)) |
| [Sail Research](../entities/sail-research.md) | Per token dengan *completion windows*; plan Pro $100/bln | Harga tergantung window (Default/Balanced/Flex); Sailbox per vCPU/RAM/jam (lihat [sumber](../sources/sailresearch-pricing.md)) |
| [Manus](../entities/manus.md) | Langganan kredit: 4.000/8.000/40.000 kredit per bulan | Kredit tugas + 300 refresh credits/hari; 20 concurrent & scheduled tasks (lihat [sumber](../sources/manus-plans-pricing.md)) |
| [Inception Labs](../entities/inception-labs.md) | Free; Developer pay-per-token; Enterprise kustom | Akses model *diffusion LLM* Mercury (2.5, Voice, Router); diskon peluncuran 80%/50%; tersedia lewat API, AWS Bedrock, Azure Foundry, dan model router (lihat [sumber](../sources/inception-models.md)) |
| [Cerebras](../entities/cerebras.md) | Free Trial (kredit $5); Developer pay-as-you-go; Enterprise kustom | Model Shared Inference tercepat (~3.000 t/s); rate limit per model; kapabilitas reasoning/structured/tools/image (lihat [sumber](../sources/cerebras-pricing.md)) |
| [Tokenra](../entities/tokenra.md) | Pay-as-you-go per token (gateway) | 37 model; varian diskon (`-50off`/`-discounted`); gratis/anonymous (`union-alpha`, `space-bunny-alpha`); image per request; video per 1M unit (lihat [sumber](../sources/tokenra-model-square-page-1.md)) |

## Kesamaan dan perbedaan

- **Kesamaan**: satu katalog besar model lintas keluarga; ditujukan untuk pemakaian agentik/otomasi; masing-masing menyediakan jalur gratis — Token Harbor lewat free allowance bulanan berotasi, OpenCode lewat 9 model $0 di Zen dan model gratis terbatas di Go.
- **Kontinuitas berbeda**: Token Harbor lanjut lewat saldo berdiskon **hanya jika toggle overage aktif** — jika tidak, Pass berhenti di batas jendela; OpenCode Go beralih otomatis ke pay-as-you-go dari kredit bersama setelah batasnya habis (per user, 2026-10-01; lihat [docs Subscription](../sources/tokenharbor-docs-subscription.md)).
- **Tumpang tindih Token Harbor ↔ OpenCode**: GPT-6 Luna, Qwen3.8 Max, GLM-5.3, GLM-5.3-Flash, Qwen3.8 Flash, DeepSeek V4 Flash, DeepSeek V4.1 Flash, dan MiMo V2.6 Flash muncul di ketiga katalog.
- **Tumpang tindih Go ↔ Zen**: sebagian besar lineup Go juga ada di katalog Zen (Kimi K3, Grok 4.7/4.6, DeepSeek V4 Pro, Qwen3.8 Flash/Max, GLM-5.3/5.3-Flash, GPT-5.6/6 Luna, MiniMax, MiMo-V2.6-Flash, Muse Spark, Space Bunny Free, LongCat 2.5 Preview Free, dan lain-lain).
- **Skema berbeda**: langganan berbasis nilai (Token Harbor) vs langganan berbasis batas per model (Go) vs tarif per token (Zen/Token Harbor).
- **Harga sebagian identik**: banyak model yang sama berharga per-token identik di Token Harbor dan OpenCode Zen (mis. Claude Opus 5.5, Claude Fable 5.1, GPT-6 Astra, Kimi K3, Grok 4.7, Qwen3.8 Max, GLM-5.3), tetapi tidak semua — GPT-5.6 Terra ($2·$12 vs $2.50·$15) dan Gemini 3.8 Flash ($0.75·$3.75 vs $1.50·$7.50) lebih murah di Token Harbor (perbandingan awal dari [katalog Token Harbor](../sources/tokenharbor-models-value.md) dan [daftar Zen](../sources/opencode-zen-price-list.md)).
- **Keterkaitan (per user, 2026-10-01)**: kredit OpenCode berasal dari *top up* dan menyatu antara Go dan Zen; saat batas Go habis, pemakaian otomatis dialihkan ke pay-as-you-go dari saldo yang sama.
- **Paritas harga meluas**: Novita dan Sail Research juga menjual model yang sama dengan harga yang sering identik dengan Token Harbor/Zen (mis. DeepSeek V4.1 Flash, GLM-5.3, Kimi K3, Qwen3.8 Flash) — dengan variasi dari tarif off-peak, batch, atau completion window.
- **Cache menjadi lapisan biaya**: Token Harbor menerapkan 3 lapis cache (exact 5 menit $0, semantic $0, upstream ≥1024 token s.d. 90% off); Agnes menagih cached input 10% harga input; Zen/Novita/Inception mencantumkan tarif cache read per model; Groq tidak menghitung cached token ke rate limit (lihat [Prompt Caching](prompt-caching.md)).
- **Dimensi baru — latensi vs harga**: Sail memperkenalkan *completion windows* (Default/Balanced/Flex) sebagai sumbu harga; Groq menonjolkan kecepatan token (gpt-oss-20b ~1.000 t/s).
- **Teknologi berbeda**: Inception Labs menjual *diffusion LLM* (dLLM) yang diklaim 5× lebih cepat dari LLM autoregresif; Mercury Voice menargetkan latensi percakapan (TTFAT p50 320 ms).
- **Kecepatan sebagai produk**: Cerebras mengklaim ~3.000 t/s (GPT OSS 120B) dan Groq ~1.000 t/s (gpt-oss-20b) — kecepatan token menjadi pembeda utama, bukan hanya harga.
- **Model "anonymous"/gratis** muncul sebagai taktik akuisisi: `union-alpha`/`space-bunny-alpha` (Tokenra), `Space Bunny Free` (OpenCode Zen).
- **Akses multimodal & media**: Agnes menjual kuota gabungan teks/gambar/video; Novita juga menyediakan image/video/audio/search API di samping model teks.

## Pertanyaan terbuka

- Harga efektif per beban kerja: langganan (Go/Token Harbor) vs per token (Zen)? Perbandingan bisa mulai dihitung, tapi basis estimasi request di halaman Go tidak dijelaskan dan harga antar layanan belum tentu sama.
- Seberapa luas kesamaan harga Token Harbor ↔ Zen? Perbandingan awal: banyak yang identik, beberapa berbeda; perlu pengecekan menyeluruh.
- Apakah harga yang identik antar penyedia mencerminkan harga upstream yang sama? Belum ada sumber.
- OpenRouter baru dikenal dari halaman perbandingan Token Harbor; butuh sumber independen untuk penilaian yang seimbang.

## Related

- [Token Harbor](../entities/token-harbor.md)
- [OpenCode](../entities/opencode.md)
- [OpenCode Zen](../entities/opencode-zen.md)
- [Agnes](../entities/agnes.md)
- [Groq](../entities/groq.md)
- [Manus](../entities/manus.md)
- [Novita](../entities/novita.md)
- [Sail Research](../entities/sail-research.md)
- [Inception Labs](../entities/inception-labs.md)
- [Cerebras](../entities/cerebras.md)
- [Tokenra](../entities/tokenra.md)
- [Prompt Caching](prompt-caching.md)
- [Overview](../overview.md)
