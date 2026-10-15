# Project skills (tier Hermes)

Direktori ini adalah **project skill tier** Hermes: skill di sini hanya aktif untuk sesi
Hermes yang dijalankan di dalam repo ini, dan **tidak** disalin ke profil global
(`~/AppData/Local/hermes/skills/`). Precedence: `project → local (~/.hermes/skills/) → external_dirs`.

## Isi

| Skill | Cermin dari |
| --- | --- |
| `wiki-ingest` | `.opencode/skills/wiki-ingest/SKILL.md` |
| `wiki-query` | `.opencode/skills/wiki-query/SKILL.md` |
| `wiki-lint` | `.opencode/skills/wiki-lint/SKILL.md` |

Sumber kebenaran isi tetap `.opencode/skills/` (dipakai OpenCode dan dirujuk `AGENTS.md`).
Salinan di sini hanya berbeda pada baris frontmatter `name:` (disamakan dengan nama direktori).

## Sinkronisasi

```bash
bash .hermes/skills/sync-from-opencode.sh
```

Jalankan setiap kali `.opencode/skills/*/SKILL.md` diubah, supaya salinan Hermes tidak basi.

## Aktivasi

Sekali per mesin/repo, dari dalam repo:

```bash
hermes skills trust
```

Repo yang belum di-trust akan menampilkan notice dan skill tidak dimuat. Mencabut:
`hermes skills untrust`. Daftar trust tersimpan di `skills.trusted_project_dirs` pada
`~/.hermes/config.yaml` (hanya flag trust, bukan salinan skill).
