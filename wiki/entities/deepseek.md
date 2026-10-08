---
title: DeepSeek
type: entity
created: 2026-10-08
updated: 2026-10-08
sources: [deepseek-models-pricing, deepseek-rate-limits, deepseek-first-api-call, deepseek-token-usage, deepseek-error-codes, deepseek-integrate-claude-code, deepseek-integrate-codex, deepseek-integrate-hermes, deepseek-integrate-openclaw, deepseek-integrate-opencode, deepseek-integrate-qoder, deepseek-integrate-reasonix, deepseek-integrate-workbuddy, awesome-deepseek-agent]
tags: [deepseek, api, model-provider, platform]
---

# DeepSeek

**DeepSeek** (DeepSeek AI) adalah lab & penyedia model yang menjual **API langsung** (OpenAI- dan Anthropic-compatible) untuk dua model: **`deepseek-flash`** (DeepSeek-V4.1-Flash; mendukung vision) dan **`deepseek-v4-pro`** (DeepSeek-V4-Pro-0813) — keduanya **konteks 1M**, max output 384K, thinking mode default ([models & pricing](../sources/deepseek-models-pricing.md), [first call](../sources/deepseek-first-api-call.md)). Model DeepSeek sendiri sudah lama muncul di katalog pihak ketiga wiki ([Token Harbor](../entities/token-harbor.md), [OpenCode Zen](../entities/opencode-zen.md), [Nous Portal](../entities/hermes-agent.md), [Tokenra](../entities/tokenra.md)); entitas ini mendokumentasikan **platform resminya**.

## Harga & kapasitas (resmi)

| per 1M token | Flash off-peak / peak | V4 Pro off-peak / peak |
| --- | --- | --- |
| Input cache hit | $0.003 / $0.006 | $0.022 / $0.044 |
| Input cache miss | $0.15 / $0.30 | $0.66 / $1.32 |
| Output | $0.60 / $1.20 | $1.98 / $3.96 |

- **Off-peak = setengah peak**; peak: 01:00–04:00 & 06:00–10:00 UTC, Sen–Jum (libur Tiongkok dikecualikan) ([pricing](../sources/deepseek-models-pricing.md)).
- **Konkurensi** (bukan RPM/TPM): Flash **2.500**, Pro **500** per akun; ekspansi gratis; **`user_id` isolation** untuk content-safety/KVCache/scheduling ([rate limit](../sources/deepseek-rate-limits.md)).
- API: base URL OpenAI `api.deepseek.com`, Anthropic `api.deepseek.com/anthropic`; fitur Responses API & Anthropic API native; FIM hanya non-thinking; error khas **402 saldo habis** ([errors](../sources/deepseek-error-codes.md)).
- Nama lama `deepseek-v4-flash`/`-vision-exp` diterima tetapi model pensiun (dilayani V4.1-Flash).

## Integrasi agent (resmi, "no code")

DeepSeek menyediakan panduan integrasi untuk banyak agent/coding tool ([awesome list](../sources/awesome-deepseek-agent.md)):
- **Claude Code** (env `ANTHROPIC_BASE_URL=…/anthropic`; mapping `claude-opus*`→Pro, `sonnet/haiku*`→Flash) ([sumber](../sources/deepseek-integrate-claude-code.md)).
- **Codex** (Responses API; skrip setup satu klik + `models.json`) ([sumber](../sources/deepseek-integrate-codex.md)).
- **[OpenClaw](../entities/openclaw.md)** (provider DeepSeek di onboarding) ([sumber](../sources/deepseek-integrate-openclaw.md)).
- **[Hermes Agent](../entities/hermes-agent.md)** (`hermes setup` → provider DeepSeek) ([sumber](../sources/deepseek-integrate-hermes.md)).
- **[OpenCode](../entities/opencode.md)** (`/connect` → deepseek; ≥v1.18.30) ([sumber](../sources/deepseek-integrate-opencode.md)).
- **Qoder** ([sumber](../sources/deepseek-integrate-qoder.md)) (built-in + custom key), **Reasonix** ([sumber](../sources/deepseek-integrate-reasonix.md)) (DeepSeek-native), **WorkBuddy/CodeBuddy** ([sumber](../sources/deepseek-integrate-workbuddy.md)) (models.json), + AstrBot, Cherry Studio, Cline, Crush, Deep Code, DeepSeek-TUI, Copilot (+CLI), Kilo Code, Langcli, LobeHub, nanobot, Oh My Pi, Pi, Qwen Code.

## Produk terkait

- **[DeepSeek Harness (DSH)](deepseek-harness.md)** — agent harness open-source (MIT) dari DeepSeek AI, developer preview ([first call](../sources/deepseek-first-api-call.md)).

## Open questions

- Harga pihak ketiga vs resmi (mis. Tokenra `deepseek-v4-flash` output $0.30 vs resmi off-peak $0.60) — perbedaan agregator belum dipetakan.
- Berapa lama nama lama `deepseek-v4-flash` akan terus dilayani.
- Kebijakan data untuk **platform API** (bukan DSH) tidak di-ingest — hanya kebijakan DSH.

## Related

- Sumber: [Models & Pricing](../sources/deepseek-models-pricing.md) · [Rate Limit](../sources/deepseek-rate-limits.md) · [Token & Token Usage](../sources/deepseek-token-usage.md) · [Awesome list](../sources/awesome-deepseek-agent.md)
- [DeepSeek Harness](deepseek-harness.md) · [Layanan Akses Model](../concepts/model-access-services.md)
- [OpenClaw](openclaw.md) · [Hermes Agent](hermes-agent.md) · [OpenCode](opencode.md)
- [Overview](../overview.md)
