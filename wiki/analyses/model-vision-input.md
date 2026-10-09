---
title: Model dengan Input Gambar (Vision)
type: analysis
created: 2026-10-10
updated: 2026-10-10
sources: [anthropic-models-overview, anthropic-opus, openai-dev-models, openai-dev-gpt-6-luna, deepseek-models-pricing, deepseek-integrate-codex, deepseek-token-usage, cerebras-image-inputs, cerebras-qwen-38-27b, sailresearch-models, opencode-zen-price-list, tokenra-model-square-page-1, puter-ai-gateway, puter-docs-ai, groq-mcp-server, agnes-model-pricing, vyceai-integrations]
tags: [vision, multimodal, input-gambar, perbandingan]
---

# Model dengan Input Gambar (Vision)

## Pertanyaan

Model apa saja di wiki yang punya **input gambar (vision)** — bukan model yang menghasilkan gambar. (per user, 2026-10-10)

## Jawaban singkat

Wiki mendokumentasikan **12 baris model/platform** dengan input gambar yang eksplisit, tersebar di lima penyedia model langsung (Anthropic, OpenAI, DeepSeek, Cerebras, Sail Research), dua katalog gateway (OpenCode Zen, Tokenra), dan dua platform kapabilitas (Puter, Groq). Semua bukti adalah **dokumentasi vendor**, bukan benchmark independen.

Penting dibedakan: **vision input** (menerima gambar untuk dianalisis) ≠ **image generation** (menghasilkan gambar dari teks) — Agnes, Grok Imagine 2, Puter `txt2img`, dan Seedance masuk kategori kedua dan **tidak dihitung** di daftar ini.

## Model dengan input gambar

| # | Model | Penyedia / katalog | Bukti (dokumentasi) | Catatan |
| --- | --- | --- | --- | --- |
| 1 | Claude Fable 5.1, Opus 5.5, Sonnet 5.5, Haiku 5.5 | [Anthropic](../entities/anthropic.md) | "input teks+gambar → teks, mendukung **vision** & tool use" — [models overview](../sources/anthropic-models-overview.md) | Semua 1M ctx / 128K out; Opus 5.5 juga vision + computer use ([Opus](../sources/anthropic-opus.md)) |
| 2 | GPT-6 Astra, GPT-6.1 Sol, GPT-6 Luna | [OpenAI](../entities/openai.md) | "text+image input, output text … **vision**" — [API models](../sources/openai-dev-models.md) | Flagship; Luna $0.10/$0.50, konteks 1,05M ([Luna](../sources/openai-dev-gpt-6-luna.md)) |
| 3 | `deepseek-flash` (V4.1-Flash) | [DeepSeek](../entities/deepseek.md) | "DeepSeek-V4.1-Flash; **mendukung vision**" ([entitas](../entities/deepseek.md)); skrip Codex opsi 1 "menerima input gambar" ([Codex](../sources/deepseek-integrate-codex.md)); ada estimasi token gambar ([token usage](../sources/deepseek-token-usage.md)) | V4 Pro **tidak** dinyatakan vision |
| 4 | `qwen-3.8-27b` | [Cerebras](../entities/cerebras.md) | Image inputs **Public Preview**: base64 data URI, 2–10 gambar/request, maks 10 MiB, PNG/JPEG — [Image Inputs](../sources/cerebras-image-inputs.md) | Model lain via Dedicated Inference; "excels at vision-language understanding" ([Qwen 3.8 27B](../sources/cerebras-qwen-38-27b.md)) |
| 5 | Kimi K3 | [Sail Research](../entities/sail-research.md) | Anotasi model: "coding, agentic, **vision**, long context" — [Sail models](../sources/sailresearch-models.md) | 1M ctx; 2.8T params (104B aktif) |
| 6 | Kimi-K2.6 | [Sail Research](../entities/sail-research.md) | Anotasi: "coding, agentic, **vision**" | 262K ctx |
| 7 | Gemma 4 31B IT | [Sail Research](../entities/sail-research.md) | Anotasi: "**vision**, multilingual, chat" | Gemma 4 **12B IT tidak** vision |
| 8 | Qwen3.6 35B A3B | [Sail Research](../entities/sail-research.md) | Anotasi: "coding, agentic, **vision** (flex-only)" | Hanya tier flex |
| 9 | `deepseek-v4-flash-vision-exp` | [OpenCode Zen](../entities/opencode-zen.md) | Nama model vision eksperimental, $0.14/$0.28 ([katalog Zen](../sources/opencode-zen-price-list.md)) | DeepSeek resmi menyebut nama ini **pensiun** (dilayani V4.1-Flash) ([pricing resmi](../sources/deepseek-models-pricing.md)) |
| 10 | `deepseek-v4.1-flash` | [Tokenra](../entities/tokenra.md) | "interim build … **native multimodal**" (beta) — [Model Square](../sources/tokenra-model-square-page-1.md) | Deskripsi vendor Tokenra |

Dua **platform** menyediakan vision sebagai kapabilitas, tanpa naming model spesifik di wiki:

| Platform | Kapabilitas | Bukti |
| --- | --- | --- |
| [Puter](../entities/puter.md) | **Vision analysis** + OCR (`img2txt`) lewat AI Gateway 500+ model | [AI Gateway](../sources/puter-ai-gateway.md), [docs AI](../sources/puter-docs-ai.md) (OCR: [puter-dev-ocr](../sources/puter-dev-ocr.md)) |
| [Groq](../entities/groq.md) | Tool **Vision** via MCP server (`groq_vision.sh`) | [Groq MCP Server](../sources/groq-mcp-server.md) |

## Bukan vision input: model penghasil gambar

Model berikut menerima teks (dan sebagian **gambar referensi** untuk image-to-image), tetapi **menghasilkan** gambar/video — bukan menganalisis gambar sebagai input pemahaman:

| Model | Jenis | Bukti |
| --- | --- | --- |
| `agnes-image-2.0/2.1/2.5-flash` | Image generation (referensi gambar ke-4+ ditagih $0.003) | [Agnes — Model Pricing](../sources/agnes-model-pricing.md) |
| Grok Imagine 2.0 | Image generation ($0.50/gambar) | [VyceAI — Integrations](../sources/vyceai-integrations.md) |
| Puter `txt2img` (40+ model: Nano Banana, GPT Image, FLUX) | Image generation | [puter-dev-image-generation](../sources/puter-dev-image-generation.md) |
| Seedance (Tokenra) / Puter `txt2vid` (Sora 2, Veo 3.0) | Video generation | [Tokenra page 2](../sources/tokenra-model-square-page-2.md), [puter-dev-video-generation](../sources/puter-dev-video-generation.md) |

## Gap: belum terdokumentasi

- **Katalog agregator tidak menyatakan modalitas input per baris**: model yang vision-capable di penyedia asalnya (mis. DeepSeek V4.1 Flash, Kimi K3, Claude, GPT) dijual di [Token Harbor](../entities/token-harbor.md)/[katalognya](../entities/token-harbor-model-catalog.md), [OpenCode Go](../entities/opencode.md), [Nous Portal](../entities/hermes-agent.md), [VyceAI](../entities/vyceai.md), [Novita](../entities/novita.md) — tetapi halaman wiki-nya tidak menyatakan dukungan gambar.
- **Grok 4.6/4.7, Gemini 3.x, MiMo V2.6, GLM-5.3, Qwen3.8 (selain 27B), LongCat, dll.** — modalitas input tidak dinyatakan di halaman katalog yang di-ingest.
- **Groq** juga menjual `Qwen3.8-27B` (model yang multimodal di Cerebras), tetapi dokumentasi Groq di wiki tidak menyatakan dukungan gambarnya — kemungkinan gap dokumentasi, bukan ketiadaan kemampuan.

## Caveats

- Semua klaim berasal dari **dokumentasi vendor** (klip 1–8 Okt 2026); tidak ada verifikasi independen, dan dukungan vision bisa berubah tanpa tercatat di wiki.
- Kemampuan model yang sama bisa dibatasi oleh deployment: Cerebras membuka image inputs hanya untuk `qwen-3.8-27b` Shared Inference (model lain via Dedicated); gateway bisa punya batasan sendiri.
- Nama model berbeda antar katalog (mis. `deepseek-v4-flash-vision-exp` vs `deepseek-v4.1-flash`) — paritas kemampuan tidak otomatis.
- "Vision" tidak selalu berarti analisis gambar penuh (bisa terbatas: OCR/ekstraksi, maksimum ukuran, format PNG/JPEG, jumlah gambar per request).

## Related

- Entitas: [Anthropic](../entities/anthropic.md) · [OpenAI](../entities/openai.md) · [DeepSeek](../entities/deepseek.md) · [Cerebras](../entities/cerebras.md) · [Sail Research](../entities/sail-research.md) · [OpenCode Zen](../entities/opencode-zen.md) · [Tokenra](../entities/tokenra.md) · [Puter](../entities/puter.md) · [Groq](../entities/groq.md)
- Sumber kunci: [Cerebras — Image Inputs](../sources/cerebras-image-inputs.md) · [Anthropic — Models overview](../sources/anthropic-models-overview.md) · [OpenAI Dev — API Models](../sources/openai-dev-models.md) · [Sail Research — Models](../sources/sailresearch-models.md)
- [Layanan Akses Model](../concepts/model-access-services.md) · [Throughput Model Tercepat](throughput-model-tercepat.md)
