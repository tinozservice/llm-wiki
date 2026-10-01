---
title: "Token Harbor docs — How we measure speed"
type: source
created: 2026-10-02
updated: 2026-10-02
sources: []
tags: [token-harbor, speed, measurement]
---

# Token Harbor docs — How we measure speed

- **Sumber**: Token Harbor — dokumentasi, halaman *How we measure speed*
- **Penulis**: Token Harbor
- **URL**: <https://tokenharbor.ai/docs/api/speed>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-02
- **Berkas mentah**: `raw/2026/oktober/02/Token Harbor docs How we measure speed.md`

## TL;DR

Halaman usage melaporkan **dua kecepatan per request**: `tok/s` output (output tokens ÷ generation time) dan **prefill** (prompt tokens ÷ time-to-first-token). Output tokens termasuk reasoning tersembunyi (keduanya dibebani sebagai output). Prefill hanya ditampilkan bila prompt >16k token; di bawah itu yang tampil adalah "x s to first". Keduanya **tidak pernah dijumlahkan**; nilai tidak valid ditampilkan sebagai "—".

## Key points

- **tok/s** = output tokens ÷ generation time; generation time = total durasi respons upstream − waktu sebelum token pertama. Contoh: 12,0 dtk total, token pertama 4,0 dtk → generation 8,0 dtk; 1.000 token output → 125 tok/s.
- **Prefill** = prompt tokens ÷ time to first token; termasuk token yang dilayani dari cache. Contoh: prompt 77.000 token, token pertama 4,9 dtk → ±15.600 tok/s.
- **Ambang tampilan**: prompt <16.000 token ditampilkan sebagai `x s to first` (TTFT di ukuran itu didominasi round trip & antrean, bukan pembacaan prompt).
- **Tabel prefill median (24 jam trafik live, semua model)**: <200 token — 30 tok/s; 200–1k — 147; 1k–4k — 616; 4k–16k — 2.887; 16k–64k — 9.536; >64k — 21.720 tok/s. 16k adalah titik ukuran ini berubah dari latensi menjadi throughput (mencakup 71% request di jendela itu).
- **Tidak dijumlahkan**: membaca 77k token 4,9 dtk + menulis 1.000 token 8,0 dtk bukan angka tunggal 8.400 tok/s.
- **Dash**: generation <200 ms (upstream mem-buffer lalu flush sekaligus; ~3% request, hampir semua pendek) atau tidak ada yang bisa dibagi (request gagal / 0 token output).
- **Cakupan jam**: dari membuka koneksi ke provider sampai respons selesai — termasuk antrean/inferensi provider; tidak termasuk jaringan pengguna, routing/auth/billing Token Harbor, dan konsumsi stream di klien.
- **Beda dari angka vendor**: vendor mengukur di setup terkontrol; Token Harbor mengukur satu request nyata, melalui provider yang sedang melayani saat itu; provider bervariasi dan satu request hanyalah sampel.

## Notable quotes

> "The two are never added together."

> "We would rather say nothing than say that."

## What this changes

- Info baru: metrik performa Token Harbor dan interpretasinya (relevan untuk membandingkan klaim kecepatan antar penyedia seperti Cerebras/Groq di [Layanan Akses Model](../concepts/model-access-services.md)).
- Halaman diperbarui: [Token Harbor](../entities/token-harbor.md).

## Related

- [Token Harbor](../entities/token-harbor.md)
- [Layanan Akses Model](../concepts/model-access-services.md)
