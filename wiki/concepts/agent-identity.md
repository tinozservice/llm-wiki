---
title: Identitas Agen
type: concept
created: 2026-10-12
updated: 2026-10-12
sources: [cue-landing, manus-blog-2-0, openai-dots]
tags: [agent, identity, personal-agents, always-on]
---

# Identitas Agen

**Identitas agen** adalah pola di mana agen AI pribadi diberi **akun dan sumber dayanya sendiri** — bukan hanya berjalan di dalam sesi pengguna — sehingga dapat bertindak sebagai pihak mandiri: menerima telepon, mengirim email, membayar, dan bekerja tanpa pengguna online.

## Empat komponen (per Cue)

| Komponen | Wujud |
| --- | --- |
| Email | Alamat sendiri untuk kirim/terima |
| Telepon | Nomor sendiri; menerima panggilan yang dialihkan, mengirim pesan |
| Wallet | Kartu/dompet sendiri dengan batas & izin dari pengguna |
| Komputer | Workspace terisolasi dengan app/tool; tetap bekerja saat pengguna log off |

Implementasi paling lengkap per 2026-10-12: [Cue](../entities/cue.md) (Manus) — [landing](../sources/cue-landing.md).

## Implementasi yang terdokumentasi

- **[Cue](../entities/cue.md)** (Manus) — keempat komponen; group chat multi-agen; connectors & routines; pembayaran berizin ([landing](../sources/cue-landing.md)).
- **[Dots](../entities/dots.md)** (OpenAI) — agen always-on GPT-6 Astra dengan **komputer cloud & browser sendiri**; memori mengikuti agen lintas channel (Slack/Teams/panggilan) ([panduan](../sources/openai-learn-dots.md)).
- **Manus Cloud Computer** — lingkungan dedicated untuk proyek/automation yang berjalan 24/7 ([blog 2.0](../sources/manus-blog-2-0.md)); langkah menuju "agen yang tinggal di infrastruktur sendiri".

## Batas kontrol & tanggung jawab

- Pengguna menetapkan **review boundaries** (Cue) / **Auto-review** (Dots): agen membawa balik keputusan berisiko sebelum bertindak.
- **Atribusi**: per [Terms Manus](../sources/manus-terms.md) §2.7, aksi agen *"may be attributed to you by third parties"*, dan pencabutan izin tidak membatalkan aksi yang sudah terjadi — identitas agen memperluas permukaan tanggung jawab pengguna.
- Jalur pembayaran agen menyambung ke tema [x402](x402.md) (pembayaran per request) dan ke wallet berizin seperti di Cue.

## Open questions

- Provisi nomor/email agen (penyedia, wilayah, verifikasi) belum terdokumentasi.
- KYC/regulasi saat agen bertransaksi atas nama pengguna (merchant melihat "kartu agen").
- Portabilitas identitas antar-platform; prosedur pemulihan saat agen salah bertindak.

## Related

- [Cue](../entities/cue.md) · [Dots](../entities/dots.md) · [Manus](../entities/manus.md)
- [Platform Agen Self-Hosted](self-hosted-agent-platforms.md) — pembanding: infrastruktur sendiri (self-hosted) vs identitas yang diberikan platform.
- Sumber: [Landing Cue](../sources/cue-landing.md) · [Blog Manus 2.0](../sources/manus-blog-2-0.md) · [Meet dots](../sources/openai-learn-dots.md)
