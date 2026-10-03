---
title: Hostinger Documentation
source: https://docs.hostinger.com/node.js/deployments
author:
  - "[[hostinger.com]]"
published: 2026-09-23
created: 2026-10-02
description: "How Hostinger records every Node.js build under Deployments in hPanel: history, per-build logs, redeploys, failed-build AI analysis, and deployment settings."
tags:
  - clippings
---
Every build of your Node.js app is recorded under **Deployments** in your website dashboard — history, per-build logs, redeploys, and the settings applied to future builds.

## Deployments list

The overview card shows where your app deploys from — **From pushes to** your connected repo (Git), or **Manually uploaded** (archive) — plus the GitHub connection status and a **Redeploy** button.

Below it, the deployment history table:

Column

Git deploys

Archive deploys

Branch

Deployed branch

—

Commit

Short hash + commit message

—

File

—

Archive filename

Time

When the build ran

When the build ran

Status

Building / Completed / Build failed

Building / Completed / Build failed

The build currently serving traffic is labeled **Current**. The table is searchable and paginated. Click a row for full details.

## Deployment details

Each deployment's page shows:

- **State, time, and duration**
- **Source** — repository, branch, commit, and author (Git), or the uploaded file (archive)
- **Configuration** — root directory, framework, build and output settings (default or custom), Node version
- **Build logs** — the full log with line count; polls every few seconds while the build runs

## Redeploy

**Redeploy** opens **Deployment settings**, where **Save and redeploy** re-runs the build:

- **Git apps** — pulls the latest code from the connected branch. History shows it as a manual deployment (no new commit).
- **Archive apps** — with **Use previous files**, rebuilds from the source of the last successful deployment, kept in `hbuilds/last-source`. No re-upload needed. If your last upload failed to build, this rebuilds the older, successful source — to build a new archive, choose **Upload new files**.

Only one deployment runs at a time per site — buttons are disabled with "Another deployment is still running" until it finishes.

There is no per-commit rollback: to ship an older version, revert or reset in Git and push, or upload the older archive.

## Deployment settings

**Deployments** → **Deployment settings** edits the configuration applied to upcoming builds: framework preset, branch (Git), Node version, build command, package manager, output directory, entry file, and [environment variables](https://docs.hostinger.com/node.js/environment-variables). Field reference: [Build Settings](https://docs.hostinger.com/node.js/build-settings).

- **Git apps** — **Save** (applies on next push) or **Save and redeploy** (applies now).
- **Archive apps** — choose **Use previous files** or **Upload new files**, then **Save and redeploy**.

## Failed builds

When a build fails, the deployment is marked **Build failed** and Hostinger generates an **AI analysis** of the log — a diagnosis of what went wrong and a suggested solution — with a **Fix and redeploy** shortcut. Open it from the "Previous build failed. More details" link or the failed deployment's details page.

Common causes and fixes: [Creating a Node.js App — Troubleshooting](https://docs.hostinger.com/node.js/creating-an-app#troubleshooting).

## On disk

Each deployment builds into a new `hbuilds/versions/{build-id}` folder and, on success, re-points the `hbuilds/current` symlink to it; static output is synced to `public_html`. See [File Structure](https://docs.hostinger.com/node.js/file-structure) for the full layout and why file timestamps don't reflect deploy time.

## Related

- [File Structure](https://docs.hostinger.com/node.js/file-structure) — where deployed files live
- [GitHub](https://docs.hostinger.com/node.js/github) — automatic deployments on push
- [Build Settings](https://docs.hostinger.com/node.js/build-settings) — every configuration field
- [Runtime Logs](https://docs.hostinger.com/node.js/runtime-logs) — output from the running app, not the build

---

*Last updated: September 23, 2026*

Last updated