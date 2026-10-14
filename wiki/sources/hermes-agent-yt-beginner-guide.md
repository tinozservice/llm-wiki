---
title: "Hermes Agent YT — The Ultimate Beginner's Guide"
type: source
created: 2026-10-14
updated: 2026-10-14
sources: []
tags: [hermes, nous-research, tutorial, video, telegram, kanban]
---

# Hermes Agent YT — The Ultimate Beginner's Guide

- **Sumber**: video YouTube "The Ultimate Beginner's Guide to Hermes Agent" (kanal *Metics Media*; presenter "Matt")
- **Penulis**: Metics Media
- **URL**: <https://www.youtube.com/watch?v=XNcKUSL1CTE>
- **Tanggal publikasi**: 2026-10-08; klip dibuat 2026-10-14
- **Berkas mentah**: `raw/2026/oktober/14/The Ultimate Beginner’s Guide to Hermes Agent.md`
- **Catatan komersial**: deskripsi video memuat **link afiliasi** (diskon VPS Hostinger −10%; Nous Portal −$15 bulan pertama, "bulan pertama $5"). Klaim di halaman ini = klaim tutorial/sponsor kecuali ditandai lain; presenter mencatat UI akan berubah ("follow the general idea, not the exact visuals").

## TL;DR

Tutorial pemula **6 level** (±1 jam 44 menit) untuk menjalankan [Hermes Agent](../entities/hermes-agent.md) 24/7 **tanpa menulis kode**: deploy 1 klik di VPS [Hostinger](../entities/hostinger.md) → model via **Nous Portal** → chat dari **Telegram** + desktop app → kerja nyata (skill Google Workspace, MCP) → pelatihan (memori, skill, `SOUL.md`) → otomasi terjadwal (cron hemat lewat **script deterministik**) → tim agen via **profiles/bots** dan **Kanban board**. Semua langkah lewat UI; terminal tidak disentuh.

## Key points

### Level 1 — Deploy & model

- **VPS Hostinger** via template **Hermes one-click** di Docker Manager (katalog): memasang Hermes + **Traefik** (mengamankan koneksi), memberi halaman login, backup, update 1 klik, dan tombol restart. Rekomendasi paket **KVM 1** (cukup untuk satu agen; upgrade tanpa reinstall). Saat checkout: periode diskon minimal 12 bulan, **add-on "ready to use AI" jangan dipilih** (layanan AI lain, tidak perlu); garansi 30 hari uang kembali.
- **Dashboard Hermes**: Sessions, Models, Cron (scheduled jobs), Skills, Profiles (agen tambahan), plugin (Kanban, Achievements), Channels, Gateway, Keys, Files, Logs, System. Agen terpasang tapi belum bisa "berpikir" sampai model provider disambungkan ("No inference provider configured").
- **Nous Portal**: disambungkan dari halaman Keys dengan login (tanpa tempel kode); **$20/bln = $22 kredit**, sisa rollover; promo afiliasi −$15 bulan pertama. Tier gratis (model gratis + rate limit standar) tidak disarankan untuk agen — satu job bisa puluhan panggilan. Top-up tersedia tanpa naik tier.
- **Pilihan model awal: DeepSeek Flash** (`DeepSeek V4 Flash 0731` saat rekaman) — dipilih karena murah dan jago tool calling; harga Portal dikutip **$0,07 input / $0,14 output per 1 jt token**. Alternatif: OpenRouter (bayar per pemakaian) atau "Sign in with ChatGPT". Model Claude via langganan Claude tidak dibahas (dibatasi ToS Anthropic ke app-nya sendiri; lewat Portal tersedia semua model Claude bayar-per-pakai).

### Level 2 — Telegram + desktop

- Channel Telegram diaktifkan dari dashboard; bot dibuat lewat **QR** (bot Nous-hosted → create bot → connect → save & restart gateway, beberapa menit). Akun Telegram masuk **allow-list** (orang lain tidak dapat balasan). Chat Telegram **tidak end-to-end terenkripsi** — jangan kirim kata sandi/data bank. `/sethome` menjadikan Telegram **home channel** (tujuan notifikasi cron & pesan lintas platform).
- **Satu memori, banyak thread** (analogi email): `/handoff` memindahkan sesi antar-pintu; `/new` membuat sesi baru per topik (menghindari konteks menumpuk = hemat token); `/model` ganti model. Jika bot diam: cek berurutan **kredit/limit → gateway → logs**, terakhir restart aplikasi dari Docker Manager.
- **Desktop app** resmi: mode **remote gateway** menunjuk ke server yang sama (URL dashboard + login) — bukan agen kedua di komputer. Fitur: **HUD** (⌘⇧H; bar melayang sadar halaman di bawahnya), dictasi mikrofon, bacakan balasan, wake word "Hey Hermes", mode percakapan suara.

### Level 3 — Kerja nyata (Google Workspace & MCP)

- Tugas riset langsung jalan (browse, baca halaman, sitasi); file dibuat di server (`opt/data`); **permission prompt** muncul untuk aksi berisiko (hapus file, perintah berbahaya) — *"progressive trust: don't hand it everything on day one"*.
- **Google Workspace skill**: setup GCP manual (project → enable API: Drive, Gmail, Calendar, Docs, Sheets, People → OAuth client **desktop app** → test user); file JSON kredensial diberikan ke agen lewat chat; consent screen "unverified app" wajar (Anda developer-nya). Gunakan **akun Google terpisah** untuk agen, folder dibagikan selektif.
- Pola **Drive Inbox/Outbox**: apa pun yang perlu dibaca → Inbox; hasil agen → Outbox dengan tautan. Tanpa diminta, agen melakukan **self-improvement review**: menulis skill "document delivery" + memperbarui memori sendiri.
- Aturan email aman: *"Write the draught, never send it, and tell me it's ready"* — baca/rapikan dulu, drafting kemudian, kirim mandiri paling akhir.
- **MCP**: katalog konektor siap pakai di tab MCP desktop app (install → authenticate; mis. Canva, Notion, GitHub); bisa juga tempel link. Contoh kerja: "tambah blok 30 menit di sore paling kosong" → agen menulis langsung ke kalender.
- Tip troubleshooting: saat tool **Clarify** gagal menampilkan form pertanyaan, presenter mengirim **screenshot** masalah ke agen dan pertanyaan dialihkan ke teks biasa — "send a screenshot to Hermes to help it resolve its own issues".

### Level 4 — Memori, skill, kepribadian

- Koreksi sekali → disimpan ke memori → bertahan di sesi & pintu mana pun. Dua "buku catatan": **`MEMORY.md`** (catatan kerja agen) + **`USER.md`** (profil pengguna) — sengaja pendek (dikirim setiap pesan), tersimpan di `memories/` dan bisa dibaca/diunduh dari Files.
- Pola **`NOTES_INDEX.md`**: minta agen memelihara "table of contents" catatannya; memori cukup menunjuk ke indeks.
- **Skill = prosedur**: `/learn` mengubah PDF/halaman web menjadi skill (contoh: panduan SEO → `google-seo-starter`); skill hasil belajar ditandai *Learned*; agen juga menulis & **memperbarui skill sendiri** saat langkah lama gagal (contoh situs supplier berubah layout); ada proses latar merapikan skill lama.
- **Skills Hub**: pustaka skill komunitas; Hermes memindai (hidden instructions, data theft) dan memblokir yang berbahaya, **tapi tidak menangkap semuanya** — baca skill dulu sebelum dipakai.
- **Kepribadian**: `/personality` (preset sementara — concise, teacher, pirate, dll.); permanen via **`SOUL.md`** yang bisa diubah dengan meminta agen ("update your SOUL.md…").

### Level 5 — Otomasi & biaya

- **16 automasi siap pakai** bawaan (morning brief, news digest, weekly review) — tetapi presenter fokus ke jenis lain: memberi agen **satu pekerjaan mingguan nyata**. Contoh: filing resi → Sheet "Expenses" + label Gmail `Files`, tiap hari 07:00, *"read and label only"* (hanya tambah baris & label), laporan 1 baris ke Telegram, dibuat **paused** untuk direview lebih dulu.
- Job rutin dibangun sebagai **script deterministik** — saat berjalan **tidak memanggil LLM** (hemat token; "same job the same way every single time"); idempotensi lewat efek di dunia nyata (label `Files`). Contoh kedua: watcher harga tiket (dibangun agen sendiri: skill + jadwal 6 jam + memori pembanding) — notifikasi hanya saat ada perubahan. Presenter menjalankan 20+ job sendiri (bookkeeping Senin, ulang tahun, rencana trip, follow-up negosiasi).
- **Model per job**: rutin → model murah; keputusan/analisis → flagship + effort tinggi; hindari model termurah/gratis untuk tugas bernalar ("a model that can't reason will make confident mistakes"). Pembanding mahal: Claude Fable 5.1 **$10/$50**.
- Dua jebakan: ganti model di tengah percakapan panjang = seluruh konteks dibaca ulang (mahal) → mulai thread baru; job **unpinned** menolak berjalan bila model default berubah → **pin model** di halaman cron.
- **Fallback chain** (flagship → vendor lain → murah) berlaku untuk chat & cron. **`/moa`** (mixture of agents) mengirim satu prompt ke beberapa *reference model* + **aggregator** — hanya untuk keputusan penting. Contoh biaya: satu tugas MoA (reference Opus 5 dkk.) = **$1,30** vs hari-hari DeepSeek Flash ≈ **$0,08/hari**.
- **Tagihan** = server (tetap) + token; dashboard Usage Nous Portal (kredit, token input/output, cache read/write, request per model/hari). **Caching otomatis**: bagian konteks yang tidak berubah ditagih sebagian — konteks (briefing + memori + riwayat) = hampir seluruh tagihan.

### Level 6 — Tim agen & Kanban

- **Subagent sekali pakai**: minta agen memecah job (contoh: 3 subagent riset paralel untuk rencana trip) → satu jawaban gabungan; model subagent bisa ditentukan.
- **Profiles/teammates (bots)**: agen terpisah di server yang sama — memori, skill, kepribadian, **model sendiri**; dibuat dari UI bots (nama, judul, deskripsi pekerjaan, avatar). Saran: model berbeda per bot (menghindari bias satu model); deskripsi pekerjaan ditulis agen sendiri agar board tahu pembagiannya.
- **Kanban board** (plugin, default off; desktop & dashboard): kolom Triage → To Do → Ready → Running → Blocked → Review → Done (+ Scheduled); kartu diproses otomatis; orchestrator memecah tugas & menugaskan ke teammate; dependency antar kartu; komentar + log aktivitas per kartu. Contoh: "Lisbon Trip Plan" → riset flight/neighbourhood/day-trip paralel, budget spreadsheet di Drive Outbox (kolom booked/actualized), placeholder kalender.
- Kartu **Blocked** tidak lolos sendiri (tiap task = job sekali jalan) → butuh **job terjadwal penjaga** (contoh: cek board tiap 30 menit, bangunkan kartu saat balasan datang, kabari bila butuh manusia). Buat kartu dari Telegram (`/kanban create "…" --assignee default`) agar mendapat notifikasi selesai/tersangkut; tulis instruksi notifikasi di deskripsi job.
- Peringatan: menambah *guest* ke event kalender = **mengirim undangan nyata**; periksa job saat masih paused.
- **Housekeeping**: System page (status, gateway stop/restart, **backup/restore** 1 klik); update backend via Docker Manager ("Update"), update **desktop app terpisah** (Settings → About). **Achievements**: 60 badge (kategori agent autonomy, debugging chaos, tool mastery; tier copper → Olympian; presenter saat rekaman: 7/60 terbuka, gold).

## Notable quotes

> "The truth is that the setup is the easy part. The hard part is knowing what to do after. If you treat Hermes like a chatbot, it feels like just another chatbot. It gets interesting when you treat it like an assistant that learns."

> "Write the draught, never send it, and tell me it's ready."

> "…create it paused. It builds the job, but doesn't switch it on so you get to read it first. That's that progressive trust again."

> "Routine work that follows a skill… runs just fine on a cheap model, though I'd avoid the very cheapest and the free ones because a model that can't reason will make confident mistakes."

## What this changes

- **Halaman sumber baru** — tutorial pihak ketiga pertama di wiki tentang [Hermes Agent](../entities/hermes-agent.md); melengkapi dokumentasi vendor ([README](hermes-agent-readme.md), [Landing](hermes-agent-landing.md), [Portal](hermes-agent-nous-portal-models.md)) dengan alur operasional end-to-end pertama.
- Diperbarui: [entitas Hermes](../entities/hermes-agent.md) (deploy 1 klik, Telegram/desktop, memori/skill/SOUL, cron deterministik, MoA, profiles & Kanban, achievements, biaya), [entitas Hostinger](../entities/hostinger.md) (template Hermes one-click di katalog Docker Manager), [konsep Platform Agen Self-Hosted](../concepts/self-hosted-agent-platforms.md) (rute pemula via template hoster), [overview](../overview.md).
- **Bukan kontradiksi — catatan harga**: "DeepSeek V4 Flash $0,07/$0,14" (Portal) vs $0,14/$0,28 di [OpenCode Zen](../entities/opencode-zen.md) untuk nama model sama — kemungkinan promo/snapshot rekaman; belum diverifikasi.
- Klaim "200+ model" Portal mengulang kontradiksi lama (200+ vs 300+/350) — tidak menyelesaikan.
- Nama model di video mengikuti katalog saat rekaman (mis. "Opus 5", "ChatGPT 5.6 Luna") — sebagian sudah lebih lama dari klip 8 Okt wiki.

## Related

- [Hermes Agent](../entities/hermes-agent.md) · [Hostinger](../entities/hostinger.md)
- [Hermes Agent README](hermes-agent-readme.md) · [Landing](hermes-agent-landing.md) · [Nous Portal — Models](hermes-agent-nous-portal-models.md) · [Nous Portal — Subscription](hermes-agent-nous-portal-subscription.md) · [OpenClaw vs Hermes](openclaw-docs-vs-hermes.md)
- [Platform Agen Self-Hosted](../concepts/self-hosted-agent-platforms.md) · [MCP](../concepts/mcp.md) · [Prompt Caching](../concepts/prompt-caching.md)
