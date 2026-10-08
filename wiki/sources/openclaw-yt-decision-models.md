---
title: "OpenClaw YT — Decision Models in OpenClaw (transkrip)"
type: source
created: 2026-10-08
updated: 2026-10-08
sources: []
tags: [openclaw, video, decision-models, jev]
---

# OpenClaw YT — Decision Models in OpenClaw (transkrip)

- **Sumber**: Video YouTube "Decision Models in OpenClaw" (Josh Lehman)
- **Penulis**: OpenClaw / OpenClaw AI
- **URL**: <https://www.youtube.com/watch?v=zGjDLSAMgYg>
- **Tanggal publikasi**: 2026-09-23; klip dibuat 2026-10-08
- **Berkas mentah**: `raw/2026/oktober/08/OpenClaw YT. Decision Models in OpenClaw.md`

## TL;DR

Transkrip percakapan (~6 menit) tentang implementasi decision model di OpenClaw — melengkapi [blog](openclaw-blog-decision-models.md): Jev bukan untuk dipakai sebagai *tool* oleh LLM, melainkan **di-embed dalam kode deterministik** ("smart code" yang type-safe, cepat, murah, structured); plugin-first agar komunitas menemukan sendiri tempat terbaiknya.

## Key points

- "The right way to expose Jev is not as a tool for an LLM… the magic is when you take Jev and embed it within normal deterministic code." Decision model membuka **kelas aplikasi baru** yang tak dilakukan karena LLM terlalu lambat/mahal/tidak andal.
- Desain: user mengonfigurasi decision model seperti mengonfigurasi LLM; plugin author memakai `api.runtime.decisions.evaluate` — "tidak perlu menunggu tim maintainer memutuskan di mana decision model dipasang".
- Pekerjaan komunitas: ~15 PR; contoh filter definisi tool & skill (menghindari LLM menyaring katalog besar secara lambat); ide **situational awareness di grup/multiplayer** — "are you being mentioned here? should I respond?" sebagai Noul murah tanpa overhead terasa.
- Masalah nyata: agen Peter ("Molty") di Discord sering menyela percakapan antar manusia; Jev membuat cek "harus menjawab atau diam?" menjadi praktis.

## Notable quotes

> "There will be zero noticeable overhead… and you can probably end up with agents that are not so annoying." — Josh Lehman

## What this changes

- Melengkapi [Model Keputusan](../concepts/decision-models.md) & [OpenClaw](../entities/openclaw.md).
- Tidak ada kontradiksi.

## Related

- [OpenClaw Blog — Decision Models](openclaw-blog-decision-models.md)
- [OpenClaw](../entities/openclaw.md) · [Jev](../entities/jev.md)
