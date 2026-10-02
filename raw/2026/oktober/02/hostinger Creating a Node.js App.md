---
title: "Creating a Node.js App"
source: "https://docs.hostinger.com/node.js/creating-an-app"
author:
published: 2026-09-23
created: 2026-10-02
description: "Step-by-step guide to deploying a Node.js app on Hostinger from a GitHub repository, uploaded archive, or code editor, with build settings and troubleshooting."
tags:
  - "clippings"
---
Deploy a Node.js app (a **Web App** in hPanel) from a GitHub repository, an uploaded archive, or straight from your code editor. Hostinger detects your framework, suggests build settings, runs the build, and keeps the process running.

## Requirements

- A plan that supports Node.js apps in the panel: **Business Web Hosting**, or **Cloud Startup / Professional / Enterprise / Enterprise Plus**. (VPS and dedicated plans run Node.js too, but require manual CLI setup — not the panel flow described here.) Each plan includes a set number of Web Apps — if you hit the limit, remove unused apps or upgrade.
- A Node.js project with a `package.json`. Supported runtimes: **Node.js 18, 20, 22, and 24**.
- The source: a GitHub repository (yours, or any public repo URL), or an archive of your project.

Hostinger auto-detects most popular frameworks: React, Create React App, Vue, Angular, Vite, Parcel, Preact, Next.js, Nuxt, Nitro, Astro, Svelte, SvelteKit, Gatsby, React Router, Express, NestJS, Fastify, Hono. Anything outside that list deploys as **Other** — you fill in build settings manually.

## Deploy from GitHub (recommended)

1. In hPanel, open **Websites** → **Add Website**.
2. Pick **Node.js web app**.
3. Choose **Import Git repository** and click **Connect with GitHub**. A popup asks you to install the Hostinger GitHub App and choose which repositories it can access. One GitHub account is connected at a time — switching accounts replaces the connection.
4. Pick the repo containing your app and click **Deploy**. Use the search box or **Refresh repositories** if a repo is missing.
5. Hostinger detects the framework and pre-fills the deploy settings — framework preset, branch, Node version, build command, output directory, entry file. Review and adjust if needed.
6. Click **Deploy**.

Subsequent updates: push to the connected branch and Hostinger triggers a rebuild automatically. See [GitHub deployments](https://docs.hostinger.com/node.js/github) for connection management, redeploys, and webhook details.

### Deploy a public repository

Don't own the repo? Paste any **public GitHub repository URL** into the repository picker. Hostinger clones it into a new repository on **your** GitHub account — you pick the repository name and whether it's private (default) — then deploys from your copy. Future pushes to your copy auto-deploy as usual.

## Deploy by uploading an archive

1. Zip your project, omitting `node_modules` and `.git` to keep the archive small:
	```
	zip -r myapp.zip . --exclude "node_modules/*" --exclude ".git/*"
	```
2. In hPanel, open **Websites** → **Add Website** → **Node.js web app**.
3. Choose **Upload your files**.
4. Upload your archive — `.zip`, `.tar`, `.tar.gz`, or `.tgz`, one project archive at a time.
5. Confirm or edit the auto-detected deploy settings.
6. Click **Deploy**.

> If the domain you're deploying under is already added to your hosting plan, remove that website first — the Node.js deploy flow expects to create a fresh slot for the domain.

## Deploy from your code editor

The onboarding flow also offers **Build with Hostinger Connector** — an MCP extension for VS Code, Cursor, and Claude Code. Type a prompt in your editor and the Connector deploys the app for you. See [Hostinger Connector](https://docs.hostinger.com/hostinger-connector/overview).

## Deploy settings

When the framework can't be auto-detected, or you want to override the defaults, fill in:

Field

What it is

**Framework preset**

Your framework, or **Other** for custom apps.

**Branch**

Git deploys only — the branch that triggers builds. Defaults to the repo's default branch.

**Node.js version**

18, 20, 22 (default), or 24. Projects targeting anything older run on Node 18.

**Build command**

npm script Hostinger should run after install (e.g. `npm run build`), picked from your `package.json` scripts.

**Package manager**

npm (default), yarn, or pnpm — auto-detected from your lockfile.

**Output directory**

Folder containing build artifacts — common values: `dist`, `build`, `out`, `.next`. Required for static frontend apps.

**Entry file**

Server apps only — the script that starts your app, e.g. `server.js`. Must end in `.js`, `.mjs`, or `.cjs`. Relative to the root directory or the output directory, depending on the framework — see [Build Settings](https://docs.hostinger.com/node.js/build-settings#entry-file).

**Environment variables**

Anything your app reads from `process.env` at build or runtime. See [Environment Variables](https://docs.hostinger.com/node.js/environment-variables).

If you're not sure what to put, check your project's `package.json` `scripts` block. Full field reference: [Build Settings](https://docs.hostinger.com/node.js/build-settings).

## After deploy

Build artifacts land in:

- `~/domains/{domain}/hbuilds/current/nodejs` — server-side apps.
- `~/domains/{domain}/public_html` — frontend / static-output apps.

`current` is a symlink to the live build. Full layout, timestamps, and manual-edit rules: [File Structure](https://docs.hostinger.com/node.js/file-structure).

Hostinger generates an `.htaccess` in `public_html` to route requests to your Node.js process. Redeploying regenerates it, so don't hand-edit.

For server-side apps (Express, Next.js, NestJS, …), click the **Running** badge in the dashboard to **Restart** the process. Static frontend apps don't expose Restart — there's nothing live to restart.

## Logs

- **Build logs** — deploy-time output, streamed live during a deploy. Find past builds under **Deployments**. See [Deployments](https://docs.hostinger.com/node.js/deployments).
- **Runtime Logs** — what your running app prints to stdout/stderr. See [Runtime Logs](https://docs.hostinger.com/node.js/runtime-logs).

If a build fails, Hostinger generates an AI analysis of the failure with a diagnosis and suggested fix — see [Deployments](https://docs.hostinger.com/node.js/deployments#failed-builds).

## Connect a database

The Web App dashboard includes a guided **Connect a database** wizard — currently **Supabase** and **MongoDB Atlas**:

- **Supabase** — one-click connect via Supabase authorization (link an existing database or create a new one), or enter the **Project URL** and **Anon key** manually. Sets `SUPABASE_URL` and `SUPABASE_ANON_KEY`.
- **MongoDB Atlas** — paste your **Connection string**; the guide walks through allowlisting your hosting IP. Sets `MONGODB_URI`.

The wizard merges the variables into your app's [environment variables](https://docs.hostinger.com/node.js/environment-variables), shows sample client code, and redeploys the app. Disconnecting removes the variables and redeploys.

## Vulnerability monitoring

Hostinger automatically scans the npm packages your app installs for known vulnerabilities after every deployment. For Git-connected apps, flagged packages can be fixed with an auto-generated GitHub pull request. See [Vulnerability Scanning](https://docs.hostinger.com/node.js/vulnerabilities).

## Resource usage

The dashboard plots live CPU, RAM, and I/O against your plan's limits. If a metric is sitting near the red dotted line, optimize the app or move up a plan.

## Programmatic deploys

For CI/CD, skip the panel entirely:

1. Call the [Generate Upload URL](https://docs.hostinger.com/api-reference/endpoints/hosting/files/generate-upload-url) endpoint to get a one-time URL.
2. `PUT` your archive to it.
3. Trigger a build via the [Start Node.js build](https://docs.hostinger.com/api-reference/endpoints/hosting/nodejs/start-node-js-build) endpoint.

## Troubleshooting

**Build failed** Open the failed deployment under **Deployments** — the AI-generated analysis explains the failure with a diagnosis and solution, and offers **Fix and redeploy**. Otherwise, check the build logs: verify your `package.json` `scripts`, the declared output directory, and that your Node.js version matches what your dependencies need.

**Repository is missing a package.json** The Node.js flow needs a `package.json` at the app root. Add one, or use the **Deploy as static** option to serve the repo contents as a static site via [Git deployment](https://docs.hostinger.com/websites/git).

**App not responding after a green build** For server apps, check Runtime Logs — a build can succeed while the process crashes on startup. Most common causes: missing env vars, or binding to the wrong port.

**403 after a redeploy** The `.htaccess` in `public_html` is stale or was hand-edited. Redeploy to regenerate it.

---

*Last updated: September 23, 2026*

Last updated