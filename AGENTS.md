# LLM Wiki — Schema & Operating Manual

This vault is a personal knowledge base built with the **LLM Wiki pattern**: the LLM
incrementally builds and maintains a persistent, interlinked markdown wiki on top of a
curated collection of raw sources. Knowledge is compiled once and kept current — it is
not re-derived from raw chunks on every question.

## Roles

- **Human**: curates sources in `raw/`, directs the analysis, asks the good questions.
- **LLM (you)**: owns `wiki/` completely — writes and updates every page, maintains
  cross-references, keeps `index.md` and `log.md` current, flags contradictions.

## The three layers

| Layer | Path | Owner | Rule |
| --- | --- | --- | --- |
| Raw sources | `raw/<tahun>/<bulan>/<DD>/` | Human | **Immutable** — konten hanya dibaca dan dikutip; tidak diedit, di-rename, atau dihapus. Dua pengecualian: LLM boleh *memindahkan* file ke arsip tanggal (lihat *Raw archive layout*) dan **menyunting konten khusus untuk perbaikan keamanan** (redaksi data sensitif; lihat *Security edits*). |
| Wiki | `wiki/` | LLM | You create and maintain everything here. |
| Schema | `AGENTS.md`, `.opencode/skills/` | Both | Co-evolve deliberately: propose changes and wait for approval. |

## Quick start (for the human)

1. Open this folder as an Obsidian vault (already initialized — keep Obsidian open beside the agent).
2. Drop sources into `raw/` (Obsidian Web Clipper is great for web articles). Saat ingest, LLM mengarsipkannya ke `raw/<tahun>/<bulan>/<DD>/`, mis. `raw/2026/oktober/01/`.
3. Tell the LLM: *"ingest raw/<path>"* (mis. `raw/2026/oktober/01/<file>`) atau *"ingest everything new"*.
4. Ask questions — good answers get filed back into `wiki/analyses/`.
5. Occasionally ask: *"lint the wiki"* to keep it healthy.

## Layout

```text
raw/                    # curated sources, immutable (dikecualikan: perbaikan keamanan)
├── assets/             # images downloaded from clipped articles
└── 2026/               # arsip per tahun
    └── oktober/        # per bulan: januari … desember
        └── 01/         # per tanggal: sumber yang jatuh pada tanggal itu
wiki/
├── index.md            # content catalog — update on every ingest
├── log.md              # append-only chronological record
├── overview.md         # evolving top-level synthesis
├── sources/            # one page per raw source
├── entities/           # people, organizations, products, places, works
├── concepts/           # ideas, methods, terms, technologies
└── analyses/           # comparisons, syntheses, answers filed back
AGENTS.md               # this schema
.opencode/skills/       # wiki-ingest / wiki-query / wiki-lint workflows
```

## Raw archive layout

Sumber di `raw/` diarsipkan **per tahun → bulan → tanggal**, mengikuti contoh:

```text
raw/2026/oktober/01/
```

- Tahun `YYYY`; bulan memakai nama bulan Bahasa Indonesia huruf kecil (`januari` …
  `desember`); tanggal `DD` dua digit.
- Tanggal arsip diambil dari `created` pada frontmatter klip; jika tidak ada, pakai tanggal
  ingest.
- LLM boleh **memindahkan** file sumber ke folder arsip, dan wajib memakai path arsip lengkap
  saat mengutip berkas mentah.
- Isi file di `raw/` **tidak diubah** — kecuali untuk perbaikan keamanan (lihat *Security edits*).
- `raw/assets/` tetap satu folder global untuk gambar hasil unduhan klip.

## Security edits (pengecualian immutability `raw/`)

Satu-satunya alasan sah untuk **mengubah isi** file di `raw/` adalah **perbaikan keamanan**
ketika sumber mentah memuat data sensitif yang tidak seharusnya publik — mis. kredensial,
API key/token, atau ID akun seperti `org_…` / `prj_…` / `wrk_…` yang tertangkap Web Clipper
dari halaman dashboard yang sudah login.

- Tindakan: redaksi/normalisasi string sensitif (mis. `<id>` → `*_redacted`) tanpa mengubah
  makna sumber; jangan pernah menghapus atau menulis ulang isi lain.
- Wajib: catat setiap edit di `wiki/log.md` (tipe `maintenance`) — file, string yang
  diredaksi, dan alasannya.
- Karena `raw/` ter-track, redaksi harus diterapkan ke **seluruh riwayat git**, bukan hanya
  commit terbaru (mis. `git filter-repo --replace-text`), lalu force-push.
- Catatan: force-push tidak menghapus objek lama dari server GitHub; minta GitHub Support
  menjalankan garbage collection untuk pembersihan tuntas.

## Page conventions

- **Filenames**: lowercase kebab-case, e.g. `retrieval-augmented-generation.md`.
  H1 titles may be natural language.
- **Frontmatter**: every wiki page starts with YAML frontmatter:

  ```yaml
  ---
  title: Page Title
  type: source        # source | entity | concept | analysis | overview | meta
  created: 2026-10-01
  updated: 2026-10-01
  sources: [source-slug]   # slugs of the source pages backing this page
  tags: []
  ---
  ```

- **Links**: relative markdown links, e.g. `[RAG](../concepts/retrieval-augmented-generation.md)`.
  They render in Obsidian and survive outside it. Always use relative paths from the
  linking file.
- **Citations**: claims taken from a source cite its page, e.g.
  `(see [Source Title](../sources/slug.md))`.
- **Language**: write wiki prose in **Bahasa Indonesia**; keep quotes, titles, and
  technical terms in their original language. (Edit this line to change the rule.)
- **Related**: end every page with a `## Related` section containing real connections,
  not every passing mention.
- **Density**: each page should be the best short text on its topic. Split pages that
  outgrow their topic and update inbound links.
- **Contradictions**: never silently overwrite. Flag with a callout in every affected page
  (`> [!warning] Contradiction: ...`), explain both sides, and note it in the log.

## index.md format

Content catalog grouped by type, one line per page:

```markdown
## Sources
- [Article Title](sources/article-slug.md) — one-line summary. (2026-10-01)
```

Update it on every ingest and whenever pages are created, renamed, or removed.

## log.md format

Append-only, newest entries at the bottom, with a parseable prefix:

```markdown
## [2026-10-01] ingest | Article Title
- What happened, pages touched, issues found.
```

Entry types: `ingest`, `query`, `lint`, `schema`, `maintenance`.
Quick view: `grep "^## \[" wiki/log.md | tail -5`

## Page shapes

- **Source page** (`wiki/sources/<slug>.md`): citation info (author, URL, date, path of the
  raw file), TL;DR, key points, notable quotes, `## What this changes` (pages updated and
  contradictions found), related pages.
- **Entity / concept page**: what it is; what we know so far with citations; open
  questions; related pages.
- **Analysis page** (`wiki/analyses/<slug>.md`): the question, the answer, the evidence
  with citations, caveats. Created only when the user accepts filing an answer back.

## Workflows

Every operation follows the same loop: **read `wiki/index.md` first → read relevant pages →
do the work → update `index.md` → append to `log.md` → report the files you touched.**

1. **Ingest** — detailed steps in `.opencode/skills/wiki-ingest`.
2. **Query** — detailed steps in `.opencode/skills/wiki-query`.
3. **Lint** — detailed steps in `.opencode/skills/wiki-lint`.

## Hard rules

- Never write or edit the content of files in `raw/` — **kecuali untuk perbaikan keamanan** (lihat *Security edits*). Aksi lain yang diizinkan: memindahkan/mengarsipkan file sumber ke folder tanggal (`raw/<tahun>/<bulan>/<DD>/`).
- Do not invent content. Everything traces back to a source in `raw/`, to the user's
  explicit instructions, or is marked as unverified.
- One source can legitimately touch 10–15 pages. Prefer updating existing pages over
  creating near-duplicates.
- When the wiki cannot answer something, say so and propose a source to find — do not guess.
- When you learn a durable new convention from the user, propose an update to this schema
  rather than changing behavior silently.
