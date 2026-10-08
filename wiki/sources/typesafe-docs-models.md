---
title: "TypeSafe Docs — Models (Jev 1.13)"
type: source
created: 2026-10-08
updated: 2026-10-08
sources: []
tags: [typesafe, jev, pricing, model]
---

# TypeSafe Docs — Models (Jev 1.13)

- **Sumber**: Dokumentasi resmi TypeSafe — halaman Models
- **Penulis**: TypeSafe
- **URL**: <https://docs.typesafe.ai/models>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-08
- **Berkas mentah**: `raw/2026/oktober/08/typesafe docs. Models.md`

## TL;DR

Spesifikasi resmi **Jev 1.13** (`jev-1.13.0`): harga **$42 per miliar token ($0.042/M) input — output token GRATIS**; rate limit **100K token/detik & 80 request/detik** (menyesuaikan secara dinamis); konteks **64k token per request** (state + semua pertanyaan; 32k untuk state + pertanyaan terpanjang); input teks saja; alias `jev-latest`/`jev-preview` keduanya menunjuk `jev-1.13.0`. Semua model dilayani satu endpoint `POST /v1/systemone`.

## Key points

- **Harga**: ditagih per token input; output gratis ("A Btok is a billion tokens and an Mtok is a million tokens").
- **Rate limit dinamis**: "can change without notice while upcoming large GPU deals land"; lebih tinggi tersedia lewat custom/enterprise (sales@typesafe.ai); request melebihi limit → `429`, SDK retry dengan backoff.
- **Konteks**: Jev membaca `state` sekali dan mengevaluasi semua pertanyaan paralel; 64k mencakup state + seluruh pertanyaan; 32k untuk state + pertanyaan terpanjang.
- **Alias**: `jev-latest` (rilis stabil terbaru; default SDK) dan `jev-preview` (rilis terbaru, kini menunjuk model yang sama — belum ada preview build). Field `model` di respons melaporkan versi yang menjawab (`jev-1.13.0`); pin versi bila threshold sudah dituning.
- **Kustomisasi**: **tidak** ada fine-tuning/LoRA per pelanggan — bobot sama untuk semua akun; domain disesuaikan lewat `state`, `instructions`, dan `criteria`; dilatih dengan **RLCD**.
- **Bahasa**: Inggris = bahasa latih utama (akurasi terbaik); bahasa lain (termasuk CJK) didukung tetapi kurang setara — uji dulu.
- **Data**: tidak dilatih pada request/response pelanggan; ZDR tersedia untuk enterprise.
- `GET /v1/models` mengembalikan nama alias yang bisa dipakai akun.

## Notable quotes

> "Charged per input token. Output tokens are free."

## What this changes

- **Menyelesaikan** anomali lama di [OpenCode Zen](../entities/opencode-zen.md): output Jev $0.00 **bukan** kesalahan klip — memang gratis per desain; input Zen $0.04 ≈ resmi $0.042.
- Entitas [Jev](../entities/jev.md) dibuat.
- Tidak ada kontradiksi lintas-wiki.

## Related

- [Jev](../entities/jev.md) · [TypeSafe](../entities/typesafe.md)
- [TypeSafe — Introduction](typesafe-docs-introduction.md)
- [OpenRouter — Jev 1.13](openrouter-jev-113.md)
