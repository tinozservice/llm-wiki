---
name: Wiki Query
description: Answer questions from the LLM Wiki with citations, and file valuable answers back as wiki pages. Use when the user asks questions that should be answered from wiki content, or asks to compare, summarize, or analyze what the wiki knows.
---

# Wiki Query

## 1. Find

- Read `wiki/index.md` first — it is the catalog. Use it to pick candidate pages.
- Search page contents when the index is not enough (grep for key terms; or a dedicated
  search tool such as qmd if configured). At small scale the index alone is fine.
- Read the candidate pages and the source pages they cite until you can answer confidently.

## 2. Answer

- Synthesize, do not dump. Lead with the answer, then the evidence.
- Cite wiki pages inline: `[Page Title](../path/to/page.md)`.
- Match the format to the question: short markdown answer, comparison table, Marp deck,
  chart, canvas — whatever communicates best.
- If the wiki cannot support the answer, say exactly what is missing. Offer to
  (a) search the web and mark findings as **unverified** (not yet in `raw/`), or
  (b) find and ingest a proper source. Never silently mix outside knowledge into
  wiki-backed claims.

## 3. File it back (offer, do not assume)

Good answers compound into the knowledge base. After answering, offer to save it as
`wiki/analyses/<slug>.md` using the analysis page shape from `AGENTS.md`. If the user
accepts:

1. Write the page with citations.
2. Update `wiki/index.md`.
3. Append `## [YYYY-MM-DD] query | <question summary>` to `wiki/log.md`.

## Notes

- Never edit `raw/`.
- If the user reveals a durable preference or convention, propose an `AGENTS.md` update —
  do not just change behavior silently.
