---
title: "Cerebras — Structured Outputs"
type: source
created: 2026-10-01
updated: 2026-10-01
sources: []
tags: [cerebras, structured-outputs, capabilities]
---

# Cerebras — Structured Outputs

- **Sumber**: Cerebras — panduan Structured Outputs
- **Penulis**: tidak dicantumkan
- **URL**: <https://inference-docs.cerebras.ai/capabilities/structured-outputs>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-01
- **Berkas mentah**: `raw/2026/oktober/01/cerebras Structured Outputs.md`

## TL;DR

Structured Outputs membatasi respons model ke JSON Schema; dengan `strict: true` Cerebras melakukan **constrained decoding tingkat token** sehingga output dijamin sesuai skema (subset JSON Schema yang didukung). Mendukung `$ref`/`$defs`, enum, `anyOf` non-root, dan pembuatan skema via Pydantic/Zod; JSON mode (`json_object`) tersedia tapi tidak menegakkan skema.

## Key points

- Model pendukung: `qwen-3.8-27b`, `gpt-oss-120b` (Shared), `kimi-k2.7-code` (trials), `gemma-4-31b` (Dedicated) — semuanya text/JSON object/JSON Schema/strict.
- Aturan skema strict: root harus object; wajib `additionalProperties: false` di setiap object; array wajib punya `items`; tidak ada union di root.
- Batas: teks skema maksimum 5.000 karakter; kedalaman maksimal 10; maksimum 500 properti; 500 nilai enum total; enum >250 nilai dibatasi 7.500 karakter.
- Tidak didukung: skema rekursif, `$ref` eksternal, `$anchor`, `oneOf`/`allOf`/`not`, `patternProperties`/`unevaluatedProperties`, `pattern`, `format`, `minItems`/`maxItems`, `nullable: true`, conditional/dependent schemas. `minLength`/`maxLength` bergantung model (Qwen strict tools tidak mendukung).
- Jangan gabungkan `tools` dan `response_format` kecuali didokumentasikan model.
- Kunci output JSON mengikuti urutan definisi skema.

## Notable quotes

> "Structured Outputs constrains model responses to a JSON schema so applications can process generated data reliably."

> "We recommend using structured outputs with `strict` set to `true` instead of JSON mode whenever possible."

## What this changes

- Melengkapi entitas [Cerebras](../entities/cerebras.md).
- Standar kapabilitas API yang bisa dibandingkan dengan penyedia lain di wiki.
- Tidak ada kontradiksi.

## Related

- [Cerebras](../entities/cerebras.md)
- [Cerebras — Tool Calling](cerebras-tool-calling.md)
- [Cerebras — Reasoning](cerebras-reasoning.md)
