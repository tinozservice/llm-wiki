---
title: "OpenAI Dev — Model Selection (panduan)"
type: source
created: 2026-10-08
updated: 2026-10-08
sources: []
tags: [openai, api, panduan]
---

# OpenAI Dev — Model Selection (panduan)

- **Sumber**: developers.openai.com/api/docs/guides/model-selection
- **Penulis**: OpenAI
- **URL**: <https://developers.openai.com/api/docs/guides/model-selection>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-08
- **Berkas mentah**: `raw/2026/oktober/08/OpenAI Dev. Model selection  OpenAI API.md`

## TL;DR

Panduan memilih model + reasoning effort: **Luna** = paling hemat; **Astra** = paling kuat (default bila biaya/latensi bukan masalah); **GPT-6.1 Sol** = keseimbangan (pertimbangkan untuk proyek kompleks yang sensitif biaya). Tujuh kombinasi rujukan: Luna·low (edit kecil/ekstraksi) → Luna·xhigh → Sol·medium → Sol·xhigh → Astra·low → Astra·medium → Astra·xhigh (analisis berat).

## Key points

- "Experiment": frekuensi workflow, kecepatan yang dibutuhkan, cara output dipakai, kepentingan kualitas; bandingkan input sama dan pilih setelan paling ringan yang memenuhi standar.
- Halaman ini juga menyebut tips "make small edits to existing files" → lihat rekomendasi Sol.

## Notable quotes

> "If cost and latency aren't a concern, you can default to Astra."

## What this changes

- Melengkapi [entitas OpenAI](../entities/openai.md) (panduan internal OpenAI).
- Tidak ada kontradiksi.

## Related

- [OpenAI](../entities/openai.md)
- [OpenAI API — Models](openai-dev-models.md) · [Reasoning Models](openai-dev-reasoning-models.md)
