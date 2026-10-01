---
title: "Introducing Mercury Voice"
type: source
created: 2026-10-01
updated: 2026-10-01
sources: []
tags: [inceptionlabs, mercury, voice, dllm]
---

# Introducing Mercury Voice

- **Sumber**: Inception Labs — blog peluncuran Mercury Voice
- **Penulis**: Firas Trabelsi, Yanis Miraoui, Samar Khanna, Xinyu Zhao, Gokul Gunasekaran, Emily Liu, Kenan Hasanaliyev
- **URL**: <https://www.inceptionlabs.ai/blog/introducing-mercury-voice>
- **Tanggal publikasi**: 2026-09-29 (klip dibuat 2026-10-01)
- **Berkas mentah**: `raw/2026/oktober/01/Introducing Mercury Voice.md`

## TL;DR

Mercury Voice — dLLM khusus **voice agent** — kini **GA untuk pelanggan enterprise**. Klaim utamanya: **TTFAT (time to first answer token) median 320 ms** (p95 750 ms) pada prompt customer-service nyata, **5,9× lebih cepat dari GPT-6 Luna** (tanpa reasoning), sambil mengalahkan Gemma 4 31B, GPT-6 Luna, GLM-5.3-Flash, dan Qwen3.5-397B pada komposit benchmark agentic & percakapan. Harga $0.40/$1.50 per 1M token, diskon peluncuran 50% menjadi $0.20/$0.75 — sekitar **$0.009 per menit percakapan** (~5× lebih murah dari GPT-4.1).

## Key points

- **Speed**: TTFAT p50 320 ms, p95 750 ms; p95-nya lebih cepat dari *median* hampir semua model yang diuji (kecuali GPT-OSS-120B low di Cerebras).
- **Quality**: unggul di komposit τ³-bench Telecom/Retail/Airline, IFBench, dan BFCL v4; "dua kali lebih cepat dari model tercepat berikutnya" pada plot kualitas vs latensi.
- **Reasoning effort**: tiga setelan (low, medium, high).
- **Context**: 128K token, output hingga 50K token.
- **Harga**: $0.40/$1.50 per 1M; diskon peluncuran $0.20/$0.75; ~$0.009/menit; ~5× lebih murah dari GPT-4.1 ($0.045/menit).
- **Akses**: enterprise via Inception API (OpenAI-compatible), siap dipasang di LiveKit, Pipecat, Vapi, Retell, atau framework sendiri.
- Testimoni pelanggan: Audivi AI (drive-thru ordering), Altur (voice agent finansial), OpenCall (agen telepon; latensi respons median ~170 ms di beban produksi mereka).
- *Catatan metrik*: halaman model menyebut TTFT <170ms; blog ini memakai TTFAT 320ms; OpenCall melaporkan latensi respons ~170ms — metrik/pengukuran berbeda, bukan kontradiksi langsung.

## Notable quotes

> "Mercury Voice is a diffusion LLM (dLLM) tuned to power voice agents. It reasons, calls tools, and follows long system prompts while keeping latency low enough for natural conversation."

> "For voice applications to feel natural, the agent has to respond within about 500 ms of the caller finishing; any longer and the pause feels awkward."

> "At launch, Mercury Voice is 50% off: $0.20 per million input and $0.75 per million output."

## What this changes

- Melengkapi entitas [Inception Labs](../entities/inception-labs.md) dan halaman [Models](inception-models.md).
- Memberi data pembanding langsung untuk model di wiki: GPT-6 Luna (OpenCode/Token Harbor), GLM-5.3-Flash, Qwen3.5-397B, Gemma 4 31B, serta GPT-OSS-120B di Cerebras.
- Tidak ada kontradiksi; metrik latensi dicatat terpisah.

## Related

- [Inception Labs](../entities/inception-labs.md)
- [Inception Labs — Models](inception-models.md)
- [Research – Inception](inception-enterprise.md)
