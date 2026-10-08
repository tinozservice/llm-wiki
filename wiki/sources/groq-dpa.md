---
title: "Groq — Data Processing Addendum (DPA)"
type: source
created: 2026-10-08
updated: 2026-10-08
sources: []
tags: [groq, legal, privacy, dpa, gdpr]
---

# Groq — Data Processing Addendum (DPA)

- **Sumber**: console.groq.com — *Data Processing Addendum for GroqCloud Services*
- **Penulis**: Groq
- **URL**: <https://console.groq.com/docs/legal/customer-data-processing-addendum>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-08
- **Berkas mentah**: `raw/2026/oktober/08/groq. Data Processing Addendum for GroqCloud Services.md`

## TL;DR

DPA GroqCloud: mengatur pemrosesan data pribadi sesuai **GDPR, CCPA/CPRA, UK GDPR, FADP Swiss, dan PDPL Arab Saudi**. Komitmen kunci: **notifikasi Data Breach ≤72 jam**; daftar subprocessor publik + hak objektif 15 hari; transfer internasional via **EU SCCs (Irlandia)**, **UK Addendum**, dan **KSA C2P Clauses**; **penghapusan data ≤180 hari** atas permintaan; audit (umumnya ≤1×/12 bulan; SOC 2 Type II tersedia); program keamanan (SSO+MFA, RBAC, ZTNA, enkripsi at-rest/in-transit, pentest tahunan, screening personel, video surveillance fasilitas).

## Key points

- **Peran**: Customer = Controller/Processor; Groq = Processor/sub-processor untuk Cloud Services.
- **Batasan pemrosesan**: hanya untuk menyediakan layanan sesuai instruksi; **tidak "sell"/"share"** data pribadi; tidak re-identifikasi data de-identified.
- **Hak Data Subject**: Groq mengarahkan ke Customer; bantuan via dukungan.
- **Subprocessor**: trust.groq.com/subprocessors; notifikasi perubahan ≥15 hari; opsi terminasi bagian terdampak bila keberatan tidak terselesaikan.
- **Audit**: Audit Report (mis. SOC 2) → bila kurang, audit on-site dengan biaya Customer, ≤1×/12 bulan (kecuali pasca-Data Breach).
- **Retensi/penghapusan**: ≤180 hari setelah terminasi atas permintaan, kecuali kewajiban hukum; backup diisolasi.
- Dokumen hukum terkait: BAA (PHI), AUP, Service Credit Terms.

## Notable quotes

> "Groq will notify Customer without undue delay, but in any event within 72 hours after becoming aware of any Data Breach."

## What this changes

- Melengkapi sisi legal/privasi [Groq](../entities/groq.md) — kontras dengan [Nous Portal](../sources/hermes-agent-nous-portal-privacy.md) yang default data untuk training; Groq cloud **no-training by default**.
- Tidak ada kontradiksi.

## Related

- [Groq](../entities/groq.md)
- [Groq Services Agreement](groq-services-agreement.md) · [Groq — Privacy Policy](groq-privacy-policy.md)
