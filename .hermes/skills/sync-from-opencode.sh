#!/usr/bin/env bash
# Sinkronkan skill wiki dari .opencode/skills (OpenCode) ke .hermes/skills (project tier Hermes).
# Sumber kebenaran isi: .opencode/skills/<name>/SKILL.md
# Yang diubah saat menyalin hanya baris frontmatter `name:` agar cocok dengan nama direktori.
set -euo pipefail

root="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
skills="wiki-ingest wiki-query wiki-lint"

missing=0
for s in $skills; do
  s="${s%$'\r'}"                      # tahan akhir baris CRLF (checkout Windows)
  src="$root/.opencode/skills/$s/SKILL.md"
  dst="$root/.hermes/skills/$s/SKILL.md"
  if [ ! -f "$src" ]; then
    echo "ERROR $s: sumber tidak ada di $src" >&2
    missing=1
    continue
  fi
  mkdir -p "$(dirname "$dst")"
  sed -E "s/^name: .*/name: $s/" "$src" > "$dst"
  echo "synced $s"
done

if [ "$missing" -ne 0 ]; then
  echo "Sinkronisasi gagal: ada sumber yang hilang (lihat ERROR di atas)." >&2
  exit 1
fi
