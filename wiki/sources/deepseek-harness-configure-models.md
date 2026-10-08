---
title: "DeepSeek Harness — Configure Models"
type: source
created: 2026-10-08
updated: 2026-10-08
sources: []
tags: [deepseek-harness, dsh, models, config]
---

# DeepSeek Harness — Configure Models

- **Sumber**: deepseek-harness.github.io/en/guide/providers
- **Penulis**: DeepSeek Harness
- **URL**: <https://deepseek-harness.github.io/deepseek-harness/en/guide/providers>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-08
- **Berkas mentah**: `raw/2026/oktober/08/DeepSeek Harness Docs. Configure models  DeepSeek Harness.md`

## TL;DR

Panduan model DSH: DeepSeek cukup satu field API key di **Settings → Models** (key disimpan di `$DSH_HOME/.credentials.yaml`, write-only, halaman hanya menerima descriptor ter-redaksi). Provider pihak ketiga bawaan katalog: `anthropic`, `openai`, `moonshotai`, `zai`, dll. **Custom model API** untuk relay/gateway/self-hosted — tiga protokol: OpenAI Chat Completions, OpenAI Responses, Anthropic Messages. Perubahan model berlaku pada request berikutnya tanpa restart.

## Key points

- OAuth provider (mis. Codex) belum didukung di UI.
- Provider ID permanen (dipakai request, session, default, credential reference); display name/base URL/protokol/kredensial/model dapat diedit.
- **Fetch available models** untuk discovery; fallback: isi model id manual; built-in provider selalu dijawab dari katalog.
- **Image input**: checkbox menyimpan `input` (pi-ai) / `inputModalities` (adapter DeepSeek); `defaultInput` fallback; DeepSeek menolak list kosong & melepas `imagePixelBudget`/`imageMaxBytes` saat image dilepas.
- **Reasoning effort**: menu Effort muncul bila model mendeklarasikan level; `reasoningEfforts` di `cordis.patch.yml`; DeepSeek route bawaan punya `off/low/high/max` (`llm-deepseek.reasoningEffort` default); model yang "berpikir kecuali dimatikan" butuh `compat.thinkingFormat: deepseek` (mengirim `thinking: {type: disabled/enabled}`).
- **Request compatibility**: koreksi umum gateway — `compat.supportsDeveloperRole: false` (system prompt sebagai `developer` role ditolak) dan `compat.maxTokensField: max_tokens`; tiap switch harus bernilai; switch salah protokol ditolak dengan pesan.
- Troubleshooting: MISSING_CREDENTIAL, UNKNOWN_MODEL, 401 saat discovery, format listing tak dikenal, gateway menolak semua, menu Effort tidak muncul, `off` tak menghentikan thinking, gambar ditolak.

## Notable quotes

> "Keys are write-only. The page receives a redacted descriptor after saving, never the literal secret."

## What this changes

- Entitas [DeepSeek Harness](../entities/deepseek-harness.md) (konfigurasi model & kompatibilitas gateway).
- Tidak ada kontradiksi.

## Related

- [DeepSeek Harness](../entities/deepseek-harness.md)
- [DeepSeek Harness — LLM Adapter](deepseek-harness-llm-adapter.md) · [DeepSeek Harness — Web UI](deepseek-harness-web-ui.md)
