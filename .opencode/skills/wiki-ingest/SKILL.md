---
name: Wiki Ingest
description: Ingest raw sources (articles, papers, transcripts, book chapters, notes, web clips) into the LLM Wiki. Use when the user asks to process, file, add, or ingest a source into raw/, or to update the wiki from new material.
---

# Wiki Ingest

Turn new source material into durable, interlinked wiki pages. One source usually touches
10–15 pages. Follow the conventions in `AGENTS.md`.

## 1. Get the source into `raw/`

- **Archive first**: file sumber disimpan/dipindahkan ke arsip tanggal
  `raw/<YYYY>/<bulan>/<DD>/` (bulan pakai nama Indonesia huruf kecil; tanggal dari
  frontmatter `created`, fallback hari ingest). Lihat `AGENTS.md` → *Raw archive layout*.
- Already in `raw/` (root atau folder arsip): pastikan ada di folder tanggal yang benar,
  lalu baca file di path arsip.
- User pasted text or shared a file: save it as markdown into the date archive folder
  (keep original title, author, and URL in a header), then ingest it.
- URL only: always keep a local copy in the date archive folder — never ingest from a live
  URL alone. Fetch and save it as markdown; download referenced images into `raw/assets/`
  when feasible. Confirm with the user if the fetch fails.
- Images: read the text first, then view relevant images separately if they add context.
- Citation: halaman sumber mencantumkan **path arsip lengkap**, mis.
  `raw/2026/oktober/01/<file>.md`.

## 2. Security & privacy scan (wajib sebelum commit)

Repo ini publik — setiap berkas baru **wajib dipindai** sebelum di-commit; Web Clipper
sering menangkap token/ID dari halaman dashboard yang sudah login. Aturan lengkap di
`AGENTS.md` → *Security edits*. Pola yang dicari:

- **Kunci & token**: `sk-`, `sk-ant-`, `sk-or-v1-`, `gsk_`, `thk_`, `ghp_`/`ghu_`/`ghs_`,
  `github_pat_`, `AKIA…`/`AIza…`, `xox[baprs]-`, `glpat-`, `npm_`, `hf_`, `r8_`, `Bearer …`.
- **JWT** (`eyJ…` dengan dua titik) & **parameter token di URL**: `?jwt=`, `?token=`,
  `website_token=`, `cw_conversation=`, `X-Amz-Signature=`/`X-Amz-Credential=` (presigned URL).
- **ID akun dashboard**: `org_…`/`org-…`, `prj_…`/`proj_…`, `wrk_…`, `acc_…`
  (Console OpenAI/Cerebras/OpenCode/Anthropic, dsb.).
- **Data pribadi**: email pribadi (kontak resmi perusahaan & `example.com` tidak dihitung),
  nomor telepon (`+62`/`08…`), alamat, NIK/NPWP/nomor rekening; periksa manual screenshot
  dashboard login di `raw/assets/`.

Jika ditemukan:

1. **Belum ter-commit** → redaksi di file `raw/` (pengecualian immutability khusus
   keamanan): ganti nilai dengan `*_redacted`, jangan ubah bagian lain.
2. **Sudah ter-commit** → redaksi **current tree + seluruh riwayat** dengan
   `git filter-repo --replace-text` (baris `literal:<nilai>==>*_redacted`) + force-push;
   buat backup mirror dulu.
3. **Catat** di `wiki/log.md` (tipe `maintenance`): file, string (terpotong — jangan tulis
   nilai penuh), dan alasan.
4. Ingatkan pengguna: force-push tidak menghapus objek lama di GitHub — commit lama masih
   dapat diakses via URL SHA sampai GitHub Support menjalankan GC.

**Higiene metadata commit**: pastikan `git config user.email` berakhiran
`@users.noreply.github.com` (jangan email asli) dan author name mengikuti preferensi
pemilik repo.

## 3. Read and discuss

Read the source fully. Then report briefly to the user:

- 4–6 key takeaways;
- which existing pages it connects to (check `wiki/index.md`);
- anything that contradicts or supersedes existing wiki content.

Wait for direction before mass-updating, unless the user asked for batch/unattended ingest.

## 4. Write

Create or update pages in this order:

1. `wiki/sources/<slug>.md` — source page using the source-page shape in `AGENTS.md`.
2. `wiki/entities/` and `wiki/concepts/` — add new claims with citations, strengthen or
   challenge existing text, create new pages only for entities/concepts important enough
   to recur across sources.
3. `wiki/overview.md` — update if the big picture shifted.
4. Contradictions: add `> [!warning] Contradiction: ...` to every affected page and
   summarize them in the source page's "What this changes".

## 5. Bookkeeping

- Jalankan **security scan (bagian 2)** pada setiap berkas baru sebelum commit.
- Update `wiki/index.md`: add new pages, refresh changed summaries.
- Append to `wiki/log.md`: `## [YYYY-MM-DD] ingest | <Source Title>` with details.
- Report the list of files touched, one line of reason each.

## Quality bar

- Repo publik: jangan pernah menulis kredensial, token, ID akun, atau data pribadi ke
  halaman wiki mana pun maupun ke log — gunakan deskripsi terpotong (mis. `6NUK…`).
- Every non-obvious claim traces to a source page.
- Prefer editing existing pages over creating new ones; split pages that grow unwieldy.
- Keep source pages factual; put interpretation in analysis pages.
- Notes from conversation that are not in a source: mark them as such (e.g. "per user,
  2026-10-01") instead of presenting them as sourced facts.
