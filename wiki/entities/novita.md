---
title: Novita
type: entity
created: 2026-10-01
updated: 2026-10-01
sources: [novita-model-libraries, novita-rate-limits]
tags: [novita, api, pricing, rate-limits]
---

# Novita

**Novita AI** adalah platform API dengan **200+ model**, GPU on-demand, dan agent sandbox dalam satu API — "Free to start" ([sumber harga](../sources/novita-model-libraries.md)).

## Model & harga

- Katalog lintas vendor: DeepSeek, GLM/Z.ai, Kimi, Qwen, Meta, Google, MiniMax, NVIDIA, OpenAI (gpt-oss), Tencent (Hy), Xiaomi (MiMo), Baidu, Ling, dan lainnya.
- Harga model besar umumnya **sama dengan penyedia lain** untuk model yang sama (DeepSeek V4.1 Flash $0.3/$1.2; GLM 5.3 $1.4/$4.4; Kimi K3 $3/$15; Qwen3.8 Flash $0.15/$0.47; MiMo V2.6 Flash $0.14/$0.28).
- Model murah menonjol: Llama 3.1 8B $0.02/$0.05; GPT OSS 120B $0.05/$0.25; Nemotron 3 Nano $0.05/$0.2; MiMo V2.6 Flash $0.14/$0.28.
- **Gratis**: Ling 3.1 Flash, Ling 3.0 Flash Sante.
- **Batch inference**: diskon perkenalan 50% untuk input & output model yang didukung.
- Modalitas lain: embeddings, image ($0.02/gambar), video (per detik; Kling/Wan/MiniMax), audio (TTS per 1M karakter), AI Search (EXA/Tavily per request).

## Rate limits

- Diukur **per model** (RPM + TPM), naik lewat tier berdasarkan top-up:
  - T1 ≤$50; T2 $50–$500; T3 $500–$3.000; T4 $3.000–$10.000; T5 ≥$10.000 (dalam 3 bulan terakhir).
- RPM mayoritas model: 30 / 100 / 1.000 / 3.000 / 6.000 (T1→T5); TPM umumnya 50M.
- Pengecualian: `tencent/hy3` lebih rendah (30–1.000 RPM; 5M–20M TPM).
- 429 saat limit terlampaui.

## Open questions

- Tier ditentukan "top-up" — apakah saldo kredit prabayar, dan bagaimana interplay dengan pay-as-you-go?
- Berapa jumlah model persisnya di katalog? Sumber menyebut "200+".
- Apakah harga sama persis dengan sumber lain karena memang harga pasar, atau kebetulan?

## Related

- [Novita — Model Libraries & GPU Cloud (sumber)](../sources/novita-model-libraries.md)
- [Novita — Rate Limits (sumber)](../sources/novita-rate-limits.md)
- [Layanan Akses Model](../concepts/model-access-services.md)
- [Overview](../overview.md)
