---
title: Codex
type: entity
created: 2026-10-08
updated: 2026-10-08
sources: [openai-coding-agents, openai-learn-models, openai-learn-pricing, openai-learn-quickstart, openai-learn-import, openai-learn-use-chatgpt, deepseek-integrate-codex]
tags: [openai, codex, coding-agent]
---

# Codex

**Codex** adalah coding agent OpenAI yang tersedia **di ChatGPT (desktop/web), IDE extension, dan CLI** — satu akun ChatGPT untuk semuanya ([halaman produk](../sources/openai-coding-agents.md)). Fokus: menyelesaikan PR, refactor, review kode, automasi; **multi-agent** (agen paralel dengan computer/browser tools untuk verifikasi); **cloud environments** per repo (lanjut saat laptop ditutup); review PR otomatis.

## Yang diketahui dari wiki

- **Model**: GPT-6 Astra/6.1 Sol/Sol/Luna (bukan di Chat); **GPT-5.5 pensiun dari Codex 14 Okt 2026** → pengganti GPT-6 Sol/Luna ([models](../sources/openai-learn-models.md)).
- **Plan & usage**: Free/Go/Plus/Pro/Business/Edu/Enterprise; **Work & Codex berbagi usage**; estimasi pesan lokal/5 jam Plus (Astra 5–45; 6.1 Sol 15–160; Luna 350–3.000); API key = tarif API tanpa fitur cloud ([pricing](../sources/openai-learn-pricing.md)).
- **Ultrafast** (Pro $500 & Enterprise/Edu eligible): hingga 8× lebih cepat; billing 8×/6× ([pricing](../sources/openai-learn-pricing.md)).
- **Impor**: Codex CLI `/import` dari Claude Code/Cursor (≤50 chat/30 hari) ([import](../sources/openai-learn-import.md)).
- **Share snapshot** (read-only, macOS; workspace = anggota terautentikasi) ([use](../sources/openai-learn-use-chatgpt.md)).
- **Ekosistem lain**: Codex app-server jadi runtime plugin di [OpenClaw](openclaw.md) & [DeepSeek Harness](deepseek-harness.md); integrasi resmi [DeepSeek](deepseek.md) via Responses API ([sumber](../sources/deepseek-integrate-codex.md)); "Quick chat" di Codex = chat ChatGPT web/mobile.
- **Harga Business**: IDR 337.000/user/bulan (2+ seat, tahunan) ([produk](../sources/openai-coding-agents.md)).

## Open questions

- Detail harga Codex per plan vs credit — ringkas di klip.
- Codex SDK & fitur enterprise (Compliance API untuk agen) belum di-ingest.

## Related

- Sumber: [AI Coding Agents](../sources/openai-coding-agents.md) · [Learn — Models](../sources/openai-learn-models.md) · [Learn — Pricing](../sources/openai-learn-pricing.md)
- [OpenAI](openai.md) · [Dots](dots.md)
- [OpenClaw](openclaw.md) · [DeepSeek](deepseek.md) · [Plugin ChatGPT & Codex](../concepts/chatgpt-plugins.md)
