---
title: VyceAI
type: entity
created: 2026-10-07
updated: 2026-10-07
sources: [vyceai-models-free-plan, vyceai-models-paid-plan, vyceai-pricing-monthly, vyceai-pricing-yearly, vyceai-daily-rewards, vyceai-referrals, vyceai-integrations, vyceai-system-status]
tags: [vyceai, proxy, api-gateway, subscription, rewards]
---

# VyceAI

**VyceAI** (vyceai.com) adalah **API proxy multi-model** yang memposisikan diri "Affordable AI API Proxy": endpoint **kompatibel OpenAI & Anthropic** (`https://vyceai.com/v1`), satu API key untuk ~10–13 model frontier (GPT, Claude, DeepSeek, Agnes, Grok), dengan skema **langganan + kredit reward harian + bonus bulanan** ([pricing](../sources/vyceai-pricing-monthly.md), [integrations](../sources/vyceai-integrations.md), [system status](../sources/vyceai-system-status.md)).

> [!info] Status ingest
> Halaman ini disusun dari 8 klip dashboard-v2 (7 Okt 2026): Models (free & paid), Pricing (bulanan & tahunan), Daily Rewards, Referrals, Integrations, System Status.

## Katalog model (13 endpoint)

Harga per 1M token (kecuali disebut lain); status saat klip 7 Okt ([direktori](../sources/vyceai-system-status.md), [paid](../sources/vyceai-models-paid-plan.md), [free](../sources/vyceai-models-free-plan.md)):

| Model | ID | Harga in/out | Konteks | Status saat klip |
| --- | --- | --- | --- | --- |
| GPT 6 Luna | `gpt-6-luna` | **$2/$2** | 270K | **offline** |
| GPT 6 Astra | `gpt-astra` | $10/$50 | 270K | online; gratis 25M token/hari utk Lite/Pro |
| GPT 5.6 Sol | `gpt-5.6-sol` | $4/$20 | 270K | online; kuota 50M/hari |
| GPT 5.6 Terra | `gpt-5.6-terra` | $2.5/$15 | 256K | online |
| Claude Sonnet 4.6 (+Pro) | `claude-sonnet-4-6` | $3/$15 | 270K | online (success 100%) |
| DeepSeek V4 Pro | `deepseek-v4-pro` | $0.5/$2 | 1M | online |
| DeepSeek V4.1 Flash | `deepseek-v4.1` | $0.15/$0.6 | 270K | online; **unlimited utk Lite/Pro** |
| DeepSeek V4 Flash (+Lr) | `deepseek-v4-flash` | $0.22/$0.66 ($0.15/$0.6 utk Lr) | 270K | online |
| Agnes 3.0 Flash | `agnes-3.0-flash` | $0.05/$0.15 | 512K | online; **unlimited utk Lite/Pro** |
| Grok 4.6 | `grok-4.6` | $2/$6 | 500K | maintenance |
| Grok Imagine 2.0 | `grok-imagine-2` | $0.50/gambar | — | online |

- **Paritas harga dengan [OpenCode Zen](opencode-zen.md)** untuk banyak model (Sonnet 4.6 $3/$15; Astra $10/$50; Sol $4/$20; Terra $2.5/$15; Grok 4.6 $2/$6) — indikasi katalog/upstream serupa; pengecualian: DeepSeek V4 Pro jauh lebih murah di VyceAI ($0.5/$2 vs $1.74/$3.84), sedangkan V4 Flash lebih mahal ($0.22/$0.66 vs $0.14/$0.28).
- **GPT-6 Luna** dijual $2/$2 — di atas Token Harbor/Zen ($0.10/$0.50) — dan offline saat klip; vendor menyebutnya "flagship running in Codex", berbeda dari posisi tier murah di sumber lain ([perbandingan](../analyses/perbandingan-gpt-6-luna.md)).

## Paket & ekonomi

| Paket | Harga | Sorotan |
| --- | --- | --- |
| Free | $0 | Akses semua model; **$10 reward harian**; kredit via referral |
| Lite | **$5/bln** ($48/tahun ≈ $4/bln) | Unlimited DeepSeek V4.1 & Agnes; Astra 25M token/hari; Sol 50M/hari; **$100 bonus/bulan**; **$25 reward harian**; priority routing |
| Pro | **$20/bln** ($192/tahun ≈ $16/bln) | + **$500 bonus/bulan**; **$30 reward harian**; 300 req/min; 2× parallel request; early access |

- **Reward harian**: klaim 1×/24 jam (reset tengah malam UTC) dengan **streak** — nilai Free ≈ **$300/bulan** kredit ([daily rewards](../sources/vyceai-daily-rewards.md)).
- **Referral**: $10 untuk kedua pihak ([referrals](../sources/vyceai-referrals.md)).
- **Pembayaran**: checkout kripto otomatis via NOWPayments; aktivasi 30 hari instan.
- **Inkonsistensi internal klip**: rate limit fair-use tertulis "Lite 60 / Pro 120 req/min" vs daftar fitur "Lite 120 req/min" & "Pro 300 req/min overall" — dicatat, belum teresolusi.

## Keandalan

- Saat klip: **"Degraded performance"** — respons 9,95 s; **uptime 96,7%**; failover otomatis; **11/13 endpoint online**; Luna offline; Grok 4.6 maintenance ([status](../sources/vyceai-system-status.md)).

## Integrasi

- Base URL OpenAI: ganti `https://api.openai.com` → `https://vyceai.com/v1`; endpoint `POST /v1/chat/completions`, `POST /v1/messages` (Anthropic), `POST /v1/images/generations` (Grok Imagine 2), `GET /v1/models`, `GET /v1/me`.
- **OpenCode custom provider**: Provider ID `vyceai`, Base URL `https://vyceai.com/v1` (Settings → Providers → Add Custom Provider) — juga Cursor/Continue ([integrations](../sources/vyceai-integrations.md)).

## Open questions

- Siapa operator di balik VyceAI dan dari mana upstream modelnya (proxy pihak ketiga; bukan pemegang lisensi model yang jelas)?
- Keberlanjutan ekonomi: reward $10–30/hari + bonus $100–500/bulan — apakah bertahan, dan apa syarat pemakaian (fair-use) sebenarnya?
- Rate limit mana yang benar (60/120 atau 120/300 req/min)?
- Apakah harga GPT-6 Luna ($2/$2) dan statusnya (offline) bersifat sementara?
- Apakah paritas harga dengan Zen mencerminkan upstream yang sama? (pola serupa terlihat antar katalog lain di wiki)

## Related

- [Layanan Akses Model](../concepts/model-access-services.md)
- [Perbandingan GPT-6 Luna Antar Penyedia](../analyses/perbandingan-gpt-6-luna.md)
- [OpenCode](opencode.md) · [OpenCode Zen](opencode-zen.md)
- [Agnes](agnes.md) — model Agnes 3.0 Flash diekspos lewat VyceAI.
- [Overview](../overview.md)
