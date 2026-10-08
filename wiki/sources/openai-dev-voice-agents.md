---
title: "OpenAI Dev — Voice Agents (panduan)"
type: source
created: 2026-10-08
updated: 2026-10-08
sources: []
tags: [openai, api, voice]
---

# OpenAI Dev — Voice Agents (panduan)

- **Sumber**: developers.openai.com/api/docs/guides/voice-agents
- **Penulis**: OpenAI
- **URL**: <https://developers.openai.com/api/docs/guides/voice-agents>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-08
- **Berkas mentah**: `raw/2026/oktober/08/OpenAI Dev. Voice agents  OpenAI API.md`

## TL;DR

Tiga arsitektur voice agent: **GPT-Live** (full-duplex; live model menangani percakapan, backend terpisah untuk reasoning/tools — *client delegation* atau *responses delegation*), **Realtime API** (speech+reasoning+tool dalam satu sesi; `RealtimeAgent`/`RealtimeSession`), dan **chained pipeline** (STT → agent → TTS, tiap tahap dapat diperiksa/diganti).

## Key points

- GPT-Live: user bisa tetap berbicara saat backend bekerja; simpan prompt bicara di live model, aturan bisnis di backend.
- Evaluasi: uji percakapan **dan** task (mis. booking tersimpan); ukur task/tool outcomes, timing percakapan, speech/language, session reliability; **Crawl→Walk→Run** (synthetic → rekaman manusia → simulated caller multi-turn).
- Latensi: catat stage (delegation receipt → backend start → first result → tool → audio → playback); median & p95; acknowledgment dipisah dari jawaban.
- Voice agent tetap memakai building blocks agen yang sama (tools, running agents, orchestration, guardrails, observability).

## Notable quotes

> "GPT-Live can listen and speak at the same time, a capability called full duplex."

## What this changes

- Melengkapi [entitas OpenAI](../entities/openai.md) (voice stack: GPT-Live-1, Realtime, pipeline).
- Tidak ada kontradiksi.

## Related

- [OpenAI](../entities/openai.md)
- [OpenAI API — Pricing](openai-dev-pricing.md)
