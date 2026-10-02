---
title: Rumahweb
type: entity
created: 2026-10-02
updated: 2026-10-02
sources: [rumahweb-shared-hosting, rumahweb-unlimited-hosting, rumahweb-vps, rumahweb-vps-alibaba, rumahweb-dedicated-server]
tags: [rumahweb, hosting, vps, indonesia]
---

# Rumahweb

**Rumahweb** adalah penyedia hosting Indonesia (20+ tahun; 200.000+ website; ISO 27001; server di Indonesia; cPanel NOC Partner sejak 2008). Layanan: shared hosting, unlimited hosting, VPS KVM, VPS Alibaba Cloud, dan dedicated server ([hosting murah](../sources/rumahweb-shared-hosting.md)).

## Produk & harga (IDR)

| Produk | Paket | Harga promo |
| --- | --- | --- |
| Shared | Entry / Small / Medium / Large | Rp15.000 / 17.900 / 29.900 / 49.900 per bln |
| Unlimited | Seed / Grow / Bloom | Rp17.900 / 29.900 / 49.900 per bln |
| VPS KVM (X) | XS / S / M / L / XL / X2L / X3L / X4L | Rp50.000 – Rp3.750.000 per bln |
| VPS KVM (W) | W1–W6 | Rp525.000 – Rp10.400.000 per bln |
| VPS KVM (CPU) | CPU1–CPU6 | Rp693.000 – Rp16.632.000 per bln |
| VPS Alibaba | Linux / Windows | Rp81.400 – Rp1.546.600 per bln |
| Dedicated | Intel E5 & AMD EPYC (+GPU T4/L4) | Rp2.500.000 – Rp13.499.000 per bln |

- Shared/Unlimited: gratis domain mulai Small (tahun pertama), SSL, cPanel, 1-click installer, email unlimited (200/jam), SitePro/Rumahweb SiteBuilder, akses SSH, Python & Node.js (paket tertentu), Redis Object Cache.
- **Turbo Booster** (LiteSpeed + multi-layer cache) diklaim hingga 32× lebih cepat; Grow/Bloom & Medium/Large included.
- Keamanan: Imunify360/Monarx, WAF, CageFS, malware detection, IPS/IDS, DDoS (WebShield).
- VPS KVM: dual availability zone (TechnoVillage Tier 3, DCI Tier 4, ~60 km), KVM isolation, SSD, backend network 1 Gbps, aktivasi instan; cPanel Solo gratis untuk M+ (promo s.d. 16 Nov 2026).
- Dedicated: brand Dell/Supermicro/HP, anti-DDoS, console/root, managed services; varian GPU NVIDIA T4/L4.

## Kebijakan penting

- **Migrasi**: gratis hingga 5 akun cPanel/bulan (dari provider lain); dari Rumahweb gratis 1 akun/bulan; Rp50.000/akun di luar kuota. VPS Alibaba tidak dibantu migrasi.
- **Downgrade** VPS tidak tersedia; **refund** VPS/dedicated aktif tidak ada; suspend di jatuh tempo, terminate setelah 7 hari.
- Port 25 VPS ditutup (whitelist via teknis@); backup VPS internal 2×/minggu (tidak bisa diakses pelanggan).
- VPS Alibaba: port 25 diblokir, outbound 30 Mbps, maks 3 snapshot, downgrade tidak bisa.

## Open questions

- Batas wajar "unlimited" (AUP) tidak dirinci di klip.
- Resource limit per paket detail (CPU/RAM) tersebar; halaman parameter resmi belum di-ingest.
- Harga promo vs normal per paket (beberapa hanya promo).

## Related

- [Rumahweb — Shared Hosting (sumber)](../sources/rumahweb-shared-hosting.md)
- [Rumahweb — VPS KVM (sumber)](../sources/rumahweb-vps.md)
- [Rumahweb — Dedicated Server (sumber)](../sources/rumahweb-dedicated-server.md)
- [Hostinger](hostinger.md) · [DomaiNesia](domainesia.md) — pembanding.
- [Overview](../overview.md)
