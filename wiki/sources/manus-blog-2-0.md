---
title: "Manus — Introducing Manus 2.0"
type: source
created: 2026-10-12
updated: 2026-10-12
sources: []
tags: [manus, agent, harness, studio, cue]
---

# Manus — Introducing Manus 2.0

- **Sumber**: Blog Manus — pengumuman rilis Manus 2.0
- **Penulis**: tidak dicantumkan (tim Manus)
- **URL**: <https://manus.im/blog/introducing-manus-2-0>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-12
- **Berkas mentah**: `raw/2026/oktober/12/manus. Introducing Manus 2.0.md`

## TL;DR

**Manus 2.0** bukan pembaruan versi biasa, melainkan arsitektur baru: **Cascade** (agent harness in-house — pada satu konfigurasi uji: −23,2% token, −28,2% waktu, −32% biaya vs sistem sebelumnya), **Cloud Computer** (lingkungan dedicated yang dapat dibeli), **Automations** (workflow dipicu event, bukan hanya jadwal), **Manus Studio** (desktop di-upgrade: dokumen–slide, Video Editor + Alchemy mode, Game Dev + multiplayer), **Remote Control & Computer Use**, dan **Cue** — app baru untuk agen pribadi.

## Key points

- **Cascade** — harness in-house: project tetap ringan di awal, kemampuan khusus dihadirkan saat dibutuhkan; brief, page, video, dan automation tetap bagian dari **satu project terhubung**.
- **Cloud Computer** — lingkungan dedicated yang dapat dibeli: server multiplayer game yang tetap hidup saat laptop ditutup, rumah permanen untuk automation.
- **Automations** — pemicu berupa event di layanan terhubung (email baru, perubahan performa iklan, agenda kalender, pesan Slack, update Notion); satu prompt menyatakan apa yang dipantau & apa yang dilakukan.
- **Studio** — workspace bersama manusia–AI (dokumen, spreadsheet, PDF, slide, website, kode, game, video); dua lingkungan profesional baru:
  - **Video Editor** — output disajikan sebagai *timeline* (klip/gambar/teks/motion graphics/audio sebagai komponen terpisah) sehingga bisa ditukar manual, lalu dikembalikan ke Manus untuk pass berikutnya; target: iklan produk 30–60 detik, AI UGC, tutorial, vlog; **Alchemy mode** = Manus sebagai creative director (video + code generation).
  - **Game Dev** — video/image/code model bekerja bersama; mode **Max Ultra**; panel Edit (jalankan game, kelola aset, edit kode); publish sebagai website yang bisa dimainkan lewat link; **multiplayer** via Cloud Computer (Configure → Multiplayer → Select Cloud Computer → Buy one).
- **Remote Control & Computer Use** — menjangkau komputer dari ponsel lewat perintah; Manus bekerja di workspace terlihat sendiri memakai file/browser/app yang disetujui; bisa menguji aplikasi atau lanjut bekerja saat pengguna pergi.
- **Cue** — app standalone untuk agen pribadi (web/desktop/mobile; iOS menyusul setelah review), dibangun di atas infrastruktur yang sama dengan Manus; early access **gratis dengan invite code** (mis. `MEETCUE`; kuota terbatas, first-come-first-served; penerima dapat kode tambahan).
- **Ketersediaan**: Manus 2.0 tersedia di web, desktop, dan mobile.

## Notable quotes

> "Manus 2.0 is not a version update. It's a new architecture, new products, and new capabilities..."

> "In one tested configuration, Cascade used 23.2% fewer tokens, finished tasks in 28.2% less time, and cost 32% less to run than our previous system."

## What this changes

- Entitas [Manus](../entities/manus.md) ditulis ulang (produk 2.0: Cascade, Cloud Computer, Automations, Studio).
- Entitas [Cue](../entities/cue.md) dibuat; konsep [Identitas Agen](../concepts/agent-identity.md) dibuat.
- Paralel dengan [Dots](../entities/dots.md) (OpenAI) — dua lab merilis "agen pribadi always-on" dengan komputer cloud sendiri pada periode yang sama.
- Tidak ada kontradiksi.

## Related

- [Manus](../entities/manus.md)
- [Cue](../entities/cue.md)
- [Identitas Agen](../concepts/agent-identity.md)
- [Dots](../entities/dots.md) — pembanding produk agen pribadi OpenAI.
