---
title: "Hostinger Documentation"
source: "https://docs.hostinger.com/node.js/github"
author:
published: 2026-09-23
created: 2026-10-02
description: "Connect a GitHub repository to Hostinger for automatic Node.js deployments on every push, covering the build pipeline, connection status, and troubleshooting."
tags:
  - "clippings"
---
Connect a GitHub repository and have Hostinger install dependencies, run your build script, and start (or restart) your Node.js app on every push.

> **Note:** This is a separate integration from the generic [Git](https://docs.hostinger.com/websites/git) feature in the Websites section. This one runs the full Node.js build pipeline (install → build → start). The generic one just copies files into a directory. Use this one whenever your project needs `npm install` or a build step.

## What it does

On each connected push, Hostinger:

1. Pulls the latest code from GitHub
2. Runs `npm install` (or `yarn` / `pnpm`, auto-detected from lockfiles)
3. Runs your build script (if one is configured)
4. Starts or restarts your app

Build progress streams to the deployment details page in real time.

## Git deployment vs archive upload

Git deployment

[Archive upload](https://docs.hostinger.com/node.js/creating-an-app)

Trigger

Push to a branch

Manual upload or API

Source

GitHub repo

`.zip` / `.tar` / `.tar.gz`

Dependencies

Installed on Hostinger

Your choice (can ship `node_modules`)

Vulnerability auto-fix

[Pull requests](https://docs.hostinger.com/node.js/vulnerabilities)

Manual

Best for

Ongoing projects

One-off deploys, external CI/CD

## Requirements

- Active Hostinger hosting plan with a Node.js-capable website
- A GitHub repository with a Node.js project (`package.json` at the app root)
- A supported framework — see [Supported Frameworks](https://docs.hostinger.com/node.js/overview-1) — or **Other** with manual build settings

## How the connection works

Hostinger connects through a **GitHub App** installed on your GitHub account. During installation you choose which repositories Hostinger can access — all of them, or a hand-picked list. You can change this later in GitHub under **Settings** → **Applications**.

- **One GitHub account** is connected at a time. **Switch GitHub account** replaces the connection — deployments from the previous account stop.
- Adding or removing repository access on GitHub syncs to hPanel automatically. Click **Refresh repositories** if a repo isn't showing.

## Connect a repository

1. Create the app via **Websites** → **Add Website** → **Node.js web app** → **Import Git repository** (see [Creating a Node.js App](https://docs.hostinger.com/node.js/creating-an-app)).
2. Click **Connect with GitHub** and install the Hostinger GitHub App in the popup.
3. Pick a repository — private repos are marked with a lock icon. You can also paste a **public GitHub repository URL** to clone it into your own account and deploy the copy.
4. Confirm or adjust the auto-detected settings:
	Setting
	Description
	**Framework preset**
	Auto-detected from `package.json`
	**Branch**
	The branch that triggers deployments (defaults to the repo's default branch)
	**Node.js version**
	18, 20, 22, or 24
	**Root directory**
	Path to the app (repo root, or a subdirectory for monorepos — auto-detected)
	**Build command**
	npm script to run (e.g. `build`)
	**Output directory**
	Where built files land (e.g. `.next`, `dist`)
	**Entry file**
	For server apps (e.g. `server.js`) — path rules in [Build Settings](https://docs.hostinger.com/node.js/build-settings#entry-file)
5. Click **Deploy** to run the first build.

For per-framework defaults, see [Supported Frameworks](https://docs.hostinger.com/node.js/overview-1).

## Automatic builds

Auto-deployment is enabled automatically when you deploy from Git. On every push:

1. You push to the connected branch.
2. GitHub sends a webhook to Hostinger.
3. Hostinger pulls the code at the pushed commit.
4. Dependencies install, build runs, app restarts.
5. Logs stream to **Deployments** → deployment details.

The dashboard shows an **Auto-deployment** chip when this is active. Only one deployment runs at a time per site; additional pushes queue up.

## Manual builds

Click **Redeploy** on the website dashboard or the **Deployments** page. Same pipeline, triggered by you — it reuses the saved settings and pulls the latest code from the connected branch.

## Connection status

The dashboard and Deployments page show the state of the GitHub link:

Status

Meaning

Fix

**Connected with GitHub**

Auto-deployment active; links to the repo

—

**GitHub is not connected**

No installation on this account

Click **Connect GitHub**

**Different GitHub account connected**

The site's repo belongs to another account

Click **Switch account**

**Repository access missing**

The Hostinger app can no longer access this repo

Click **Manage access** and grant access on GitHub

App suspended

The Hostinger app is suspended in your GitHub account

Re-enable it on GitHub

## Disconnecting

From the menu next to the connection status:

- **Disconnect from repository** — unlinks this site only. Your GitHub account stays connected; auto-deployments for this site stop.
- **Disconnect GitHub** — removes the whole installation. All sites connected to that GitHub account stop deploying; already-deployed sites stay live.

## Build logs and history

Every deployment is recorded with its branch, commit hash and message, author, timestamp, and status, plus the full build log. See [Deployments](https://docs.hostinger.com/node.js/deployments). Logs are also available via the [API](https://docs.hostinger.com/api-reference/endpoints/hosting/nodejs).

## Environment variables

Values set under **Environment variables** are injected into both build and runtime. They persist across deployments — no need to re-apply on every push. See [Environment Variables](https://docs.hostinger.com/node.js/environment-variables).

## Monorepos

For apps that live in a repo subdirectory, Hostinger detects the **Root directory** (where the app's `package.json` lives) and builds from there — only that subdirectory is built. Deploy separate subdirectories as separate Hostinger Node.js apps.

## Branch strategy

- Deploy `main` for always-live workflows.
- Use `production` or `release/*` to batch changes and control what ships.
- For QA before merging, deploy a preview branch as a separate Node.js app on a free subdomain, then point the main site's branch at the release once it's verified.

## Vulnerability auto-fix pull requests

For Git-connected apps, Hostinger can open a pull request on your repository that bumps vulnerable npm packages. You review and merge — nothing goes live until you do. See [Vulnerability Scanning](https://docs.hostinger.com/node.js/vulnerabilities).

## Troubleshooting

**Build fails during dependency install** Check the first error in the log. Common causes: missing native dependencies, peerDependencies conflicts, Node version mismatch with `engines` field. npm installs automatically retry with `--legacy-peer-deps` before failing.

**Build succeeds but site shows old version** Static/SSG output: clear browser cache and [Hostinger cache](https://docs.hostinger.com/websites/cache). Server apps: verify the new process started in **Runtime Logs**.

**Deployments not triggering on push** Confirm the branch name matches the connected branch, and that the connection status shows **Connected with GitHub** — a revoked installation or repository access shows a warning state instead.

**"Could not access the repository" when deploying by URL** URL-based deploys work with public GitHub repositories only. For private repos, connect the owning account instead.

**Repository is empty** Push at least one commit with a `package.json` before importing.

**GitHub access revoked** Reconnect from the dashboard's GitHub status → **Connect GitHub**, or restore the Hostinger app's access in GitHub → **Settings** → **Applications**.

---

*Last updated: September 23, 2026*

Last updated