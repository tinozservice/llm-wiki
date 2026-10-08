---
title: Plugin ChatGPT & Codex
type: concept
created: 2026-10-08
updated: 2026-10-08
sources: [openai-dev-quickstart-plugins, openai-dev-plugin-architecture, openai-dev-define-tools, openai-dev-skills, openai-dev-mcp-server, openai-dev-brainstorm-use-cases, openai-dev-checkout-api]
tags: [openai, plugins, mcp, skills, concept]
---

# Plugin ChatGPT & Codex

**Plugin** adalah paket yang ditemukan, di-install, dibagikan, dan di-publish di **ChatGPT dan Codex** — kedua produk berbagi **satu direktori plugin universal** (publish sekali, tampil di kedua permukaan) ([arsitektur](../sources/openai-dev-plugin-architecture.md), [quickstart](../sources/openai-dev-quickstart-plugins.md)).

## Bentuk plugin

```text
Plugin
├── Skills (SKILL.md + resource)
└── MCP server (opsional)
    ├── Tools and structured results
    └── UI resources (opsional)
```

- **Skills** — instruksi+resource workflow berulang; metadata (nama+deskripsi) dulu, instruksi penuh dimuat saat cocok ([skills](../sources/openai-dev-skills.md)).
- **MCP server** — tools/data live/aksi/auth; produksi = HTTPS stabil + **streamable HTTP**; standar terbuka **MCP Apps UI** untuk UI opsional ([mcp](../sources/openai-dev-mcp-server.md)).
- **Lifecycle hooks** — perintah di titik runtime Codex (termasuk ChatGPT Work).

## Praktik membangun

- **Use-case inventory** dulu (ekspektasi pengguna; skill vs MCP vs UI; dokumentasikan pengecualian sengaja) ([brainstorm](../sources/openai-dev-brainstorm-use-cases.md)).
- **Define tools**: satu tool = satu tujuan pengguna; kontrak lengkap (nama, deskripsi intent, input/output schema, auth, side effects, failure); safety annotations `readOnlyHint`/`destructiveHint`/`openWorldHint` ([tools](../sources/openai-dev-define-tools.md)).
- **Monetisasi**: **external checkout** (GA; barang fisik) atau **ChatGPT payment sheet** (private beta; `requestCheckout` + `complete_checkout`; PSP: Adyen/Checkout.com/Fiserv/PayPal/Stripe/Worldpay; opsi raw payment method utk merchant PCI DSS L1) ([checkout](../sources/openai-dev-checkout-api.md)).

## Keterkaitan

- Berbagi fondasi **MCP** dengan [OpenClaw](../entities/openclaw.md), [DeepSeek Harness](../entities/deepseek-harness.md), dan ekosistem agent lain — satu standar, tiga implementasi host.
- Pola **skills** juga dipakai di [OpenClaw](../entities/openclaw.md) (ClawHub) dan Hermes (agentskills.io).

## Pertanyaan terbuka

- Cakupan GA checkout (masih terbatas barang fisik/marketplace terpilih).
- Trust & review plugin publik (moderasi listing) belum dijelaskan di klip.
- Adopsi ekosistem plugin (jumlah plugin/publisher) belum ada data.

## Related

- [OpenAI](../entities/openai.md) · [Codex](../entities/codex.md)
- Sumber: [Quickstart](../sources/openai-dev-quickstart-plugins.md) · [Arsitektur](../sources/openai-dev-plugin-architecture.md) · [Checkout](../sources/openai-dev-checkout-api.md)
- [Platform Agen Self-Hosted](self-hosted-agent-platforms.md) — ekosistem MCP terkait.
