---
title: "Free, Unlimited OpenRouter API (tutorial)"
type: source
created: 2026-10-07
updated: 2026-10-07
sources: []
tags: [puter, tutorial, openrouter, models]
---

# Free, Unlimited OpenRouter API (tutorial)

- **Sumber**: Puter developer — tutorial *Free, Unlimited OpenRouter API*
- **Penulis**: Nariman Jelveh; Reynaldi Chernando; Puter Technologies Inc.
- **URL**: <https://developer.puter.com/tutorials/free-unlimited-openrouter-api/>
- **Tanggal publikasi**: 2026-09-01; klip dibuat 2026-10-07
- **Berkas mentah**: `raw/2026/oktober/07/puter developer tutorial. Free, Unlimited OpenRouter API.md`

## TL;DR

Tutorial mengakses **koleksi model OpenRouter melalui Puter.js** (tanpa key OpenRouter): contoh GLM 5.3, GPT-OSS 120B streaming, sampai UI pemilih model. Menyertakan daftar ±190 model yang diekspos — dari Gemma 4, Llama 4, Kimi K2.5, MiniMax M2.7, sampai Mercury-2.

## Key points

- **Contoh**: `z-ai/glm-5.3` (text gen), `openai/gpt-oss-120b` (streaming cerita), **model selector UI** (Gemma 4 31B IT, Llama 4 Scout, GPT-OSS 120B, GLM 5.3).
- **Daftar model OpenRouter via Puter** (cuplikan): Google Gemma 4 (+`:free`), Llama 3.x/4, MiniMax M1–M2.7, Mistral, Kimi K2/K2.5, **`inception/mercury-2`**, NVIDIA Nemotron 3, Qwen 3.5/3.6, Grok 4.1/4.20, GLM 4.5–5.3 (+flash/turbo), Perplexity Sonar, GPT-5.4/5.5, GPT Image/Audio, gpt-oss.
- **Perbandingan lisensi gratis**: OpenRouter `:free` = 20 req/menit & 1.000/hari (setelah daftar) — "once your app starts getting real traffic you may find those limits come up fast"; via Puter tidak ada cap harian, biaya ke user.
- Model dipanggil dengan prefix provider: pola `z-ai/...`, `openai/...`, dan contoh lain di wiki memakai `openrouter:<model>` (lihat [RAG](puter-tutorial-rag.md)).

## Notable quotes

> "With Puter.js, there's no API key to manage and no daily request cap to hit."

## What this changes

- **Koneksi lintas domain**: `inception/mercury-2` menghubungkan daftar ini dengan [Inception Labs](../entities/inception-labs.md) (dLLM Mercury) — model yang sama dapat diakses lewat jalur berbeda.
- Memperkaya perbandingan katalog: OpenRouter yang sebelumnya hanya dikenal dari halaman Token Harbor kini punya daftar model konkret.
- Tidak ada kontradiksi.

## Related

- [Puter](../entities/puter.md)
- [Puter tutorial — Free LLM API](puter-tutorial-free-llm-api.md)
- [Inception Labs](../entities/inception-labs.md)
- [Layanan Akses Model](../concepts/model-access-services.md)
