---
title: Model Context Protocol (MCP)
type: concept
created: 2026-10-08
updated: 2026-10-08
sources: [openai-dev-mcp-server, openai-dev-plugin-architecture, openai-dev-define-tools, openai-dev-brainstorm-use-cases, openai-dev-checkout-api, openai-api-platform, puter-docs-mcp-server, puter-tutorial-mcp, groq-mcp-server, groq-desktop-beta, deepseek-harness-mcp-memory, deepseek-harness-network-proxy, deepseek-harness-privacy, deepseek-integrate-reasonix, openclaw-docs-why-openclaw, hermes-agent-readme, hostinger-vps, hostinger-nodejs-product, domainesia-web-hosting, domainesia-cloud-hosting]
tags: [mcp, protocol, tooling, ecosystem, concept]
---

# Model Context Protocol (MCP)

**Model Context Protocol (MCP)** adalah **spesifikasi terbuka** untuk menghubungkan klien AI ke tool & data eksternal. Alur dasarnya: klien menemukan tools → model memilih tool + argumen → server memvalidasi & mengeksekusi → model memakai hasil. Server dapat mengekspos **tools, resources, prompts, instructions** ([OpenAI Dev](../sources/openai-dev-mcp-server.md)).

MCP adalah salah satu benang merah terkuat di wiki: ia muncul di platform model ([OpenAI](../entities/openai.md)/[Codex](../entities/codex.md)), platform serverless ([Puter](../entities/puter.md)), penyedia inferensi ([Groq](../entities/groq.md)), harness agen self-hosted ([OpenClaw](../entities/openclaw.md), [Hermes Agent](../entities/hermes-agent.md), [DeepSeek Harness](../entities/deepseek-harness.md)), sampai panel hosting ([Hostinger](../entities/hostinger.md), [DomaiNesia](../entities/domainesia.md)) — dengan pola berulang: **"agen sebagai operator atas nama user"**.

## Anatomi & kontrak

- **Transport**: produksi memakai endpoint **HTTPS stabil + streamable HTTP**; di samping itu umum dipakai transport **stdio** untuk server lokal ([OpenAI Dev](../sources/openai-dev-mcp-server.md), [DSH](../sources/deepseek-harness-mcp-memory.md)).
- **Auth**: gunakan alur otorisasi MCP bila server mengakses data privat / melakukan aksi pengguna; contoh konkret: OAuth akun Puter ([OpenAI Dev](../sources/openai-dev-mcp-server.md), [Puter](../sources/puter-docs-mcp-server.md)).
- **Kontrak tool**: satu tool = satu tujuan pengguna; lengkapi nama, deskripsi intent, input/output schema, auth, side effects, failure; safety annotations **`readOnlyHint` / `destructiveHint` / `openWorldHint`**; pisahkan operasi read & write ([Define tools](../sources/openai-dev-define-tools.md)).
- **Skill vs MCP vs UI**: *skill* untuk instruksi/contoh/resource; *MCP* untuk data live/auth/tool terkendali; *UI* hanya bila interaksi visual material ([brainstorm](../sources/openai-dev-brainstorm-use-cases.md)).
- **Hasil tanpa UI**: output tool harus berguna tanpa UI kustom (teks ringkas/terstruktur); UI opsional lewat standar MCP Apps ([OpenAI Dev](../sources/openai-dev-mcp-server.md)).
- **SDK server**: Python & TypeScript ([OpenAI Dev](../sources/openai-dev-mcp-server.md)).

## Implementasi di wiki

| Host / platform | Peran MCP | Detail |
| --- | --- | --- |
| [OpenAI](../entities/openai.md) / [Codex](../entities/codex.md) | Konsumen + platform plugin | Plugin = skills + **MCP server** + UI + hooks (satu direktori universal ChatGPT+Codex); `complete_checkout` sebagai tool MCP untuk payment sheet; **remote MCP** tersedia sebagai tool platform API ([arsitektur](../sources/openai-dev-plugin-architecture.md), [checkout](../sources/openai-dev-checkout-api.md), [platform](../sources/openai-api-platform.md)) |
| [Puter](../entities/puter.md) | **Server hosted** | `mcp.puter.com` tanpa instalasi; OAuth akun Puter; tool memirror SDK — filesystem (12), hosting, workers, KV, apps, dokumentasi, `whoami`; agen bertindak *as the user*; contoh config **OpenCode**, Claude Code, Codex ([docs](../sources/puter-docs-mcp-server.md), [tutorial](../sources/puter-tutorial-mcp.md)) |
| [Groq](../entities/groq.md) | **Server resmi** | `uvx groq-mcp` — tools TTS/STT/Vision/Chat/Batch dari Claude Desktop/Cursor/Windsurf; **Groq Desktop (beta)** adalah klien dengan dukungan MCP server lokal ([server](../sources/groq-mcp-server.md), [desktop](../sources/groq-desktop-beta.md)) |
| [OpenClaw](../entities/openclaw.md) | Klien **dan** server | Bagian dari standar terbuka yang didukung: MCP, A2A 1.0, ACP, AgentSkills, OpenAI-compatible API, OTel/Prometheus ([why](../sources/openclaw-docs-why-openclaw.md)) |
| [Hermes Agent](../entities/hermes-agent.md) | Klien | Di komunitas: `computer-use-linux` (MCP desktop-control) ([README](../sources/hermes-agent-readme.md)) |
| [DeepSeek Harness](../entities/deepseek-harness.md) | Klien | Tool dari server di-ekspos sebagai `mcp__<server>__<tool>`; tiga contoh memori default-off (Memorix, MCP Reference Memory, Engram); bridge stdio membuang env yang tampak kredensial; trafik HTTP mengikuti proxy yang sama ([memory](../sources/deepseek-harness-mcp-memory.md), [proxy](../sources/deepseek-harness-network-proxy.md)) |
| [Hostinger](../entities/hostinger.md) | **Akses infrastruktur** | **Hostinger Connector** (MCP untuk VS Code/Cursor/Claude Code — prompt "Deploy project") & **Hostinger Agent** (MCP) yang mengelola VPS lewat chat ([produk Node.js](../sources/hostinger-nodejs-product.md), [VPS](../sources/hostinger-vps.md)) |
| [DomaiNesia](../entities/domainesia.md) | **Akses infrastruktur** | "Integrasi MCP AI" — hosting terhubung langsung ke ChatGPT, Claude, OpenCode, OpenClaw ([web hosting](../sources/domainesia-web-hosting.md), [cloud hosting](../sources/domainesia-cloud-hosting.md)) |
| Reasonix | Klien | Coding agent terminal "MCP-native" ([integrasi DeepSeek](../sources/deepseek-integrate-reasonix.md)) |

## Pola & isu

- **Agen sebagai operator**: pola dominan — MCP membuat agen mengoperasikan akun/infrastruktur *atas nama user* (Puter "acting as you"; Hostinger/DomaiNesia "kelola server lewat chat") ([Puter](../sources/puter-docs-mcp-server.md), [Hostinger](../sources/hostinger-vps.md)).
- **Higiene kredensial**: DSH membuang environment yang tampak kredensial (termasuk semua `DSH_*`) sebelum menjalankan server stdio; secret eksplisit ditaruh di `config.env` ([DSH](../sources/deepseek-harness-mcp-memory.md)).
- **Privasi & pihak ketiga**: plugin/MCP/skills yang dipasang sendiri masuk kategori "service provider pihak ketiga" dalam kebijakan data host — pilih server dengan sadar ([DSH privacy](../sources/deepseek-harness-privacy.md)).
- **Monetisasi**: tool MCP dapat menjadi bagian alur pembayaran (mis. `complete_checkout` di plugin ChatGPT) ([checkout](../sources/openai-dev-checkout-api.md)).

## Open questions

- **Adopsi**: jumlah server/klien MCP yang aktif tidak ada datanya di wiki — yang ada hanya daftar implementasi (di atas).
- **Keamanan & moderasi** server pihak ketiga (trust, review, izin) belum ada sumber rinci.
- **Dokumentasi teknis MCP di hosting** (Hostinger Connector, DomaiNesia) belum di-ingest — baru deskripsi pemasaran; bagaimana persisnya auth & tool yang diekspos belum diketahui.
- **Perbandingan antar klien MCP** (OpenClaw, DSH, Groq Desktop, dsb.) — kualitas implementasi, dukungan resources/prompts, dan batasannya belum dipetakan.

## Related

- Sumber: [OpenAI Dev — MCP Server](../sources/openai-dev-mcp-server.md) · [Puter — MCP Server](../sources/puter-docs-mcp-server.md) · [Puter — tutorial MCP](../sources/puter-tutorial-mcp.md) · [Groq — MCP Server](../sources/groq-mcp-server.md) · [DSH — Memory MCP](../sources/deepseek-harness-mcp-memory.md)
- [Plugin ChatGPT & Codex](chatgpt-plugins.md) — MCP sebagai salah satu fondasi plugin.
- [Platform Agen Self-Hosted](self-hosted-agent-platforms.md) — host MCP di sisi agen.
- [Hosting Web](web-hosting.md) — tren MCP masuk ke panel hosting.
- [OpenAI](../entities/openai.md) · [Puter](../entities/puter.md) · [Groq](../entities/groq.md) · [DeepSeek Harness](../entities/deepseek-harness.md) · [OpenClaw](../entities/openclaw.md) · [Hermes Agent](../entities/hermes-agent.md) · [Hostinger](../entities/hostinger.md) · [DomaiNesia](../entities/domainesia.md)
- [Overview](../overview.md)
