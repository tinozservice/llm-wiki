---
title: "Cue — Your Personal Agents, With Their Own Identity"
type: source
created: 2026-10-12
updated: 2026-10-12
sources: []
tags: [cue, manus, personal-agents, identity]
---

# Cue — Your Personal Agents, With Their Own Identity

- **Sumber**: Landing page Cue (cue.im) — produk dari Manus
- **Penulis**: tidak dicantumkan (halaman produk Manus)
- **URL**: <https://cue.im/>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-12
- **Berkas mentah**: `raw/2026/oktober/12/Your Personal Agents, With Their Own Identity.md`

## TL;DR

**Cue** adalah app agen pribadi (cue.im) untuk ponsel & desktop, dibangun di atas infrastruktur Manus. Setiap agen diberi **identitas sendiri** — alamat email, nomor telepon, dompet, dan komputer/workspace — sehingga bisa menerima panggilan yang dialihkan, mengirim email dari alamatnya, membayar dengan kartunya (dalam batas yang pengguna tetapkan), dan **terus bekerja setelah pengguna log off**. Agen bisa dikumpulkan dalam **group chat** untuk berkolaborasi, dibuat via **scan QR**, serta dihubungkan ke layanan sekitar (**connectors**) dengan **routines** untuk tugas berulang.

## Key points

- **Empat komponen identitas**: **Phone** (menelepon, menerima panggilan, mengirim pesan dari nomornya), **Wallet** (pembayaran dengan izin yang dikontrol pengguna), **Computer** (workspace khusus berisi app & tool yang dibutuhkan), **Mail** (kirim/terima email dari alamatnya).
- **Perilaku inti**: menerima panggilan yang dialihkan, membalas email, membayar (mis. Taskrabbit/Link), dan memantau hal yang ditunggu (slot DMV, registrasi summer camp, tiket konser, pendaftaran marathon) lalu mengabari saat ada perubahan.
- **Contoh tugas di halaman** (pola): perjalanan (booking hotel/restoran/parking, itinerary), kesehatan keluarga (urgent care, appointment anak & orang tua, vaksin RSV), logistik rumah (perakitan IKEA, cleaning, water heater), dan hiburan/kegiatan (bioskop, kamp, kelas lokal).
- **Group chat** — beberapa agen dengan goal bersama saling serah-terima pekerjaan; pengguna menetapkan arah dan keputusan akhir.
- **Scan & create** — scan QR (mis. di restoran) untuk membuat agen yang memesan atau mengantri.
- **Connect tools. Run routines** — contoh connector: Trip.com, Oura, Gmail, MyFitnessPal, "More apps"; routines menghubungkan layanan menjadi alur berulang.
- **Batas approval** — "You set the review boundaries. The agent brings work back when a decision needs you."
- **FAQ ringkas**: memberi pekerjaan ke agen = tetapkan tanggung jawab + konteks; bisa banyak agen dengan tanggung jawab berbeda dalam satu workspace.

## Notable quotes

> "Each agent has an identity — Set the tools and permissions it needs."

> "It takes the calls you forward to it, emails from its own address, pays with its own card, and keeps working after you log off."

## What this changes

- Entitas [Cue](../entities/cue.md) dibuat; melengkapi [Manus](../entities/manus.md) sebagai produk saudara (diumumkan bersama Manus 2.0).
- Konsep [Identitas Agen](../concepts/agent-identity.md) dibuat dari pola ini.
- Tidak ada kontradiksi.

## Related

- [Cue](../entities/cue.md)
- [Manus](../entities/manus.md)
- [Identitas Agen](../concepts/agent-identity.md)
- [Dots](../entities/dots.md) — agen pribadi OpenAI (pembanding terdekat).
