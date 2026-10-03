---
title: File Structure | Hostinger Documentation
source: https://docs.hostinger.com/node.js/file-structure
author:
  - "[[hostinger.com]]"
published: 2026-09-23
created: 2026-10-02
description: Node.js app file structure on Hostinger — the hbuilds directory, build versions, the current symlink, and file timestamps.
tags:
  - clippings
---
## Directory layout

```
/home/{username}/domains/{domain}/
├── hbuilds/                            ← Managed by deployments — do not edit
│   ├── source/                         ← Working copy of your source while a build runs
│   ├── last-source/                    ← Source of the last successful deployment
│   ├── config/                         ← Environment variables, package.json and lockfile
│   ├── logs/                           ← Build logs, one folder per deployment
│   ├── versions/
│   │   └── {build-id}/                 ← The live build
│   │       ├── nodejs/                 ← Server app files
│   │       └── public_html/            ← Static output of this build
│   └── current → versions/{build-id}   ← Symlink to the live build
└── public_html/                        ← Public docroot, synced from the live build
```

`source/` is removed after a successful deployment. `last-source/` is kept and reused when you redeploy an archive app with **Use previous files** — see [Deployments](https://docs.hostinger.com/node.js/deployments#redeploy).

## Live files

App type

Live location

Server apps (Express, NestJS, Next.js, …)

`~/domains/{domain}/hbuilds/current/nodejs`

Static output (frontend builds)

`~/domains/{domain}/public_html`

`current` is a symlink. Each successful deployment creates a new `versions/{build-id}` folder and re-points `current` to it. Failed builds don't change it.

The live build is labeled **Current** on the [Deployments](https://docs.hostinger.com/node.js/deployments) page.

### Apps deployed before hbuilds

Apps last deployed before `hbuilds/` was introduced may still run from `~/domains/{domain}/nodejs`, with build data in a hidden `.builds` folder. The next deployment moves the build data to `hbuilds/` and switches the app to `hbuilds/current/nodejs`.

## File timestamps

Archive extraction keeps the modification time stored inside the archive — **"Last modified" in File Manager shows when you edited the file, not when it was deployed.** Verify deployments on the [Deployments](https://docs.hostinger.com/node.js/deployments) page, not by timestamps.

## Manual edits

> **Warning:** Files in `hbuilds/` and `public_html` are overwritten on every deployment. Direct edits via File Manager, FTP, or SSH are not supported — change your source and redeploy. Use [environment variables](https://docs.hostinger.com/node.js/environment-variables) for configuration.

## Version retention

Only the live build is kept in `versions/` — older builds are removed after each successful deployment. To roll back, push the older code or upload the older archive.

---

*Last updated: September 23, 2026*

Last updated