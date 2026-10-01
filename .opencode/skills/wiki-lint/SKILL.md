---
name: Wiki Lint
description: Health-check the LLM Wiki — find contradictions, stale claims, orphan pages, missing pages, broken links, and knowledge gaps. Use when the user asks to lint, audit, clean up, or health-check the wiki.
---

# Wiki Lint

Periodic maintenance pass. Produce a report first; apply fixes after the user agrees
(simple mechanical fixes may be applied directly when permission is obvious).

## Checklist

1. **Broken links** — links pointing to missing files. Fix the target or remove the link.
2. **Orphans** — pages with no inbound links. Link them from relevant pages or the index.
3. **Stale claims** — statements superseded by newer sources. Update and note what changed.
4. **Unflagged contradictions** — conflicting claims across pages. Add
   `> [!warning] Contradiction: ...` callouts to the affected pages.
5. **Missing pages** — entities/concepts mentioned on many pages but lacking their own page.
6. **Index accuracy** — every wiki page listed in `index.md`, summaries still true, no
   dead entries.
7. **Frontmatter hygiene** — `title` / `type` / dates present; `updated` reflects the last edit.
8. **Gaps** — what the wiki does not know yet. Suggest 3–5 questions to investigate and
   sources to look for. This is the most valuable output of a lint pass.

## Process

- Read `wiki/index.md`, then scan pages efficiently (glob + grep, e.g. for links,
  citations, and section headers).
- Group findings by severity: contradictions > broken structure > gaps > polish.
- Propose a fix list, apply approved fixes, and re-check the affected links.
- Append `## [YYYY-MM-DD] lint | Pass #N` to `wiki/log.md` with fixes applied and open
  suggestions.
- End by presenting the suggested next questions and sources, and offer to run a web
  search or ingest for any of them.
