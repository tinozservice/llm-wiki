---
title: Cue
type: entity
created: 2026-10-12
updated: 2026-10-12
sources: [cue-landing, manus-blog-2-0]
tags: [cue, manus, personal-agents, always-on]
---

# Cue

**Cue** (cue.im) adalah app agen pribadi dari Manus — standalone (ponsel & desktop), dibangun di atas infrastruktur Manus yang sama ([landing Cue](../sources/cue-landing.md), [blog Manus 2.0](../sources/manus-blog-2-0.md)). Tesis produknya: setiap agen diberi **identitas sendiri** — email, nomor telepon, dompet, dan komputer — sehingga bisa bertindak sebagai pihak mandiri, bukan sekadar chat di dalam sesi pengguna.

## Identitas agen

| Komponen | Kemampuan |
| --- | --- |
| **Mail** | Kirim/terima email dari alamatnya sendiri |
| **Phone** | Menelepon, menerima panggilan (yang dialihkan), mengirim pesan dari nomornya |
| **Wallet** | Membayar dengan kartunya dalam batas/izin yang pengguna tetapkan |
| **Computer** | Workspace khusus berisi app & tool yang dibutuhkan; terus bekerja setelah pengguna log off |

## Cara kerja

- **Group chat multi-agen**: beberapa agen dengan goal bersama saling serah-terima pekerjaan (riset → shortlist → draft); pengguna menetapkan arah dan keputusan akhir.
- **Scan & create**: scan QR (mis. di restoran) untuk membuat agen yang memesan atau mengantri.
- **Connectors**: Trip.com, Oura, Gmail, MyFitnessPal, "More apps".
- **Routines**: alur berulang dari layanan terhubung.
- **Batas approval**: pengguna menetapkan review boundaries; agen membawa keputusan kembali saat diperlukan.
- **Contoh tugas** (dari landing): booking & pemantauan perjalanan, urusan kesehatan keluarga, logistik rumah, pemantauan pendaftaran/tiket konser.

## Akses

- Early access **gratis dengan invite code** (mis. `MEETCUE`; kuota terbatas, first-come-first-served; penerima mendapat kode tambahan untuk dibagikan) — [blog 2.0](../sources/manus-blog-2-0.md).
- Tersedia di web, desktop, dan mobile (iOS menyusul setelah review App Store); dukungan `support@cue.im` ([Terms Manus](../sources/manus-terms.md)).

## Open questions

- Harga setelah early access & mata uang pemakaian (kredit Manus?).
- Model apa yang menjalankan agen Cue dan bagaimana billing tugasnya.
- Bagaimana email/nomor telepon agen diprovisikan (domain, wilayah) dan implikasi privasinya.
- Apakah identitas agen dapat dipindah antar-pengguna/platform.

## Related

- [Manus](manus.md) — induk produk; Cue dibangun di atas infrastruktur yang sama.
- [Identitas Agen](../concepts/agent-identity.md) — pola yang diwujudkan Cue.
- [Dots](dots.md) — agen always-on OpenAI (pembanding terdekat).
- Sumber: [Landing Cue](../sources/cue-landing.md) · [Blog Manus 2.0](../sources/manus-blog-2-0.md)
