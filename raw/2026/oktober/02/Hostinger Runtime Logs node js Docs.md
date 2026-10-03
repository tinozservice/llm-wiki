---
title: Runtime Logs | Hostinger Documentation
source: https://docs.hostinger.com/node.js/runtime-logs
author:
  - "[[hostinger.com]]"
published: 2026-07-27
created: 2026-10-02
description: Guide to Runtime Logs in hPanel, the live view of what your Node.js app on Hostinger prints to stdout and stderr, with filters, live mode, and export options.
tags:
  - clippings
---
Live view of what your Node.js app prints to **stdout** and **stderr** while it's running. Use it to debug crashes after a deploy, watch incoming traffic, and confirm env vars are loading.

Runtime Logs cover the running process only. For deploy-time output (npm install, your build script), see the build logs under [Deployments](https://docs.hostinger.com/node.js/deployments) instead.

## Where to find it

In hPanel, open your website's dashboard and pick **Runtime Logs** in the sidebar. The viewer shows logs from your **latest deployment only** — every redeploy starts a fresh log buffer.

## What's in each entry

Field

Notes

**Timestamp**

`HH:MM:SS` of when the line was emitted.

**Severity**

`INFO`, `LOG`, `WARN`, `ERROR`, `DEBUG`, or `TRACE`. Errors are highlighted red, warnings yellow.

**Message**

The line itself. Multi-line messages preserve their line breaks.

The header above the viewer shows running counts of warnings and errors in the active window, plus the timestamp of the latest deployment so you can tell at a glance whether what you're looking at is from before or after a code change.

## Live mode vs refresh

The toolbar has a **Live** toggle.

- **Live on** — the panel polls for new lines every five seconds and appends them to the bottom. Best for watching a deploy come up or reproducing a bug interactively.
- **Live off** — click **Refresh** to fetch the current state on demand. Better when you're investigating a known issue and don't need a continuous stream.

## Filters

Three controls sit above the log viewer:

- **Time range** — last hour, last day, last week, or last month.
- **Severity** — multi-select checkboxes (`ERROR`, `WARN`, `LOG`, `DEBUG`, `INFO`, `TRACE`). Unchecked levels are hidden from view.
- **Search** — case-insensitive substring match across the message column.

All three apply instantly without refetching from the server, so it's safe to toggle them while live mode is on.

## Jump between issues

When the visible window contains two or more `WARN` or `ERROR` entries, the toolbar shows up/down arrows that jump the viewport between them. Useful for tracing a single bad deploy through a flood of harmless `INFO` lines.

## Volume graph

Above the viewer, a stacked bar graph plots how many entries were emitted per time bucket, split into neutral / warning / error counts. Bucket size scales with the time range — one-minute buckets for the last hour, larger buckets for longer ranges. Use it to spot bursts of errors that line up with traffic spikes.

## Download or copy

The three-dot menu on the toolbar exposes:

- **Download logs** — saves the currently visible logs as `{domain}-runtime-logs.txt`.
- **Copy to clipboard** — copies the visible message lines.

Both respect the active filters, so you can search and filter first, then export just the slice that matters.

## Log limit

The viewer holds up to **5,000 lines**. When your app exceeds that, a banner appears with two options: open **File Manager** to inspect the full log file on disk, or **Clear logs** to reset the buffer and keep streaming fresh entries.

## "No logs to show — Redeploy"

Apps that haven't been deployed (or redeployed) since Runtime Logs was enabled for the site won't have a log buffer yet. The panel surfaces a redeploy prompt in this state — push a new deploy and the buffer starts populating immediately.

## Troubleshooting

**Logs are empty during live mode** Confirm your app actually writes to `stdout` / `stderr`. Direct file logging (e.g. `winston` writing to a file) bypasses the runtime-log capture; switch the transport to console output to see it here.

**Static frontend app shows no logs** Static builds don't have a running Node.js process — there's no stdout to capture. Runtime Logs is for server apps (Express, Next.js, NestJS, Fastify, etc.).

**Live polling stops unexpectedly** Filter or time-range changes pause polling for a moment, then resume if Live mode is still on. If polling stays paused, toggle **Live** off and on again.

---

*Last updated: July 22, 2026*

Last updated