---
title: "OpenClaw Blog — Decision Models in OpenClaw"
type: source
created: 2026-10-08
updated: 2026-10-08
sources: []
tags: [openclaw, blog, decision-models, jev, typesafe]
---

# OpenClaw Blog — Decision Models in OpenClaw

- **Sumber**: openclaw.ai/blog/decision-models-in-openclaw
- **Penulis**: Graham McBain / OpenClaw AI (wawancara Josh Lehman, maintainer)
- **URL**: <https://openclaw.ai/blog/decision-models-in-openclaw>
- **Tanggal publikasi**: 2026-09-22; klip dibuat 2026-10-08
- **Berkas mentah**: `raw/2026/oktober/08/OpenClaw Blog. Decision models in OpenClaw.md`

## TL;DR

OpenClaw mengadopsi **model keputusan** (Jev/TypeSafe dkk.) secara **plugin-first**: decision model terpisah dari model percakapan, dapat dikonfigurasi pengguna, tersedia untuk OpenClaw **dan plugin** via `api.runtime.decisions.evaluate`; tool `decision_evaluate` dipindah ke core (tidak spesifik TypeSafe). **Opt-in** — tanpa decision model, OpenClaw tetap bekerja seperti sebelumnya. Klaim: Jev diadopsi lebih cepat dari model mana pun di **Vercel AI Gateway**.

## Key points

- Insigh utama (kutipan Josh): "The magic is when you take Jev and embed it within normal deterministic code" — keputusan kecil (tool relevan? pesan mana yang bertahan saat compaction? apakah seseorang benar-benar bicara ke agen?) tak perlu jadi percakapan ber-LLM yang lambat/mahal.
- **TypeSafe adapter** mendukung Jev hosted dan **System One server lokal** (mis. **Kev** milik Jared Palmer) — tidak terikat satu provider.
- Eksperimen pertama (tool pemanggil Jev) ternyata bukan puncak peluang — yang lebih menarik: panggil langsung dari kode aplikasi.
- ~15 PR komunitas sudah diusulkan; contoh: filter definisi tool & skill agar model utama tidak menghitung capability; **skill curation**, **context management** (pesan berguna saat compaction), **model selection**.
- Kasus konkret di tim: agen "Molty" suka menyela percakapan yang bukan ditujukan kepadanya → Noul cepat "apakah aku disebut?" jauh lebih praktis daripada menambah LLM call di depan LLM call.
- Status: dukungan decision model ada di dev checkout; paket provider menunggu rilis pendukung; dokumentasi setup di docs.

## Notable quotes

> "The magic is when you take Jev and embed it within normal deterministic code." — Josh Lehman

> "And if you don't enable one, that's fine. It just keeps working the way it was before."

## What this changes

- **Koneksi besar**: [Model Keputusan](../concepts/decision-models.md) kini punya adopsi nyata di harness agent — bukan sekadar katalog API.
- [OpenClaw](../entities/openclaw.md) + [Jev](../entities/jev.md) + [TypeSafe](../entities/typesafe.md) tersambung.
- Tidak ada kontradiksi.

## Related

- [OpenClaw](../entities/openclaw.md) · [Jev](../entities/jev.md) · [Model Keputusan](../concepts/decision-models.md)
- [OpenClaw YT — Decision Models](openclaw-yt-decision-models.md)
