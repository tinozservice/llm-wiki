---
title: Build Settings | Hostinger Documentation
source: https://docs.hostinger.com/node.js/build-settings
author:
  - "[[hostinger.com]]"
published: 2026-09-23
created: 2026-10-02
description: Reference for every Node.js build configuration option on Hostinger, covering Node version, framework, build script, output directory, entry file, and limits.
tags:
  - clippings
---
Every Node.js build configuration option, available in hPanel and the API.

## Node.js version

Value

Description

`18`

Node.js 18

`20`

Node.js 20 (LTS)

`22`

Node.js 22 (LTS) — default

`24`

Node.js 24

Pick the version in your project's `engines` field in `package.json`, or the one you develop with. LTS recommended for production. Projects declaring a version older than 18 build on Node 18 instead.

## Application type

The framework. Helps Hostinger pick sensible defaults. Full list with per-framework setup: [Supported Frameworks](https://docs.hostinger.com/node.js/overview-1).

Value

Use for

`next`

Next.js (always server mode)

`nuxt`

Nuxt.js (static or SSR)

`nitro`

Nitro

`astro`

Astro (static or SSR)

`svelte-kit`

SvelteKit (static or SSR)

`svelte`

Svelte

`react`

React + Vite

`create-react-app`

Create React App

`react-router`

React Router (framework mode)

`gatsby`

Gatsby

`vue`

Vue + Vite

`angular`

Angular

`vite`

Vite (framework-agnostic, incl. Preact)

`parcel`

Parcel

`express`

Express.js

`nest`

NestJS

`fastify`

Fastify

`hono`

Hono

`other`

Any other Node.js project

(auto-detect)

Detect from `package.json`

## Root directory

Directory containing `package.json`, relative to the source root.

- Use `/` or leave empty if it's at the root.
- Use a subdirectory (`apps/web`) for monorepos — auto-detected on import; only that subdirectory is built.

## Build script

The npm script to run during the build phase (e.g., `build`). Matches a script in `package.json`:

```
{
  "scripts": {
    "build": "next build"
  }
}
```

Leave empty for apps without a build step.

## Output directory

Where built files land, relative to the root directory.

Framework

Typical output

Next.js

`.next`

Nuxt.js / Nitro

`.output` (SSR) or `dist` (generate)

Astro

`dist`

SvelteKit

`build` (adapter-node) or `dist` (adapter-static)

Svelte

`dist`

React / Vue / Preact (Vite)

`dist`

Create React App / React Router

`build`

Gatsby

`public`

Angular

`dist/<project-name>`

Parcel

`dist`

NestJS

`dist`

Express / Fastify / Hono

— (leave empty)

For server apps, this is the compiled server code. For static sites, the HTML/CSS/JS to serve.

Express, Fastify, and Hono deploy the whole root directory, including `node_modules`, so leave the output directory empty — hPanel doesn't show the field for these frameworks. With **Other** (`other`), the output directory is ignored when an entry file is set.

## Entry file

For server apps, the file Node runs to start your server. hPanel accepts files ending in `.js`, `.mjs`, or `.cjs`.

Where the path starts from depends on the framework:

Framework

Entry file is relative to

Example

Express, Fastify, Hono, React Router, Other

Root directory

`server.js`, `dist/server.js`

NestJS, Astro, SvelteKit, Nuxt.js, Nitro

Output directory

`main.js` (NestJS, output `dist`)

Next.js

— (ignored)

—

Don't repeat the output directory in the entry file. For NestJS with output directory `dist`, enter `main.js` — `dist/main.js` points to `dist/dist/main.js`, which doesn't exist, and the build fails. Per-framework values: [Supported Frameworks](https://docs.hostinger.com/node.js/overview-1).

Leave empty for static sites. For Astro, SvelteKit, Nuxt.js, Nitro, and React Router, an empty entry file deploys the build as a static site — no Node server runs.

## Package manager

Value

Description

`npm`

Default

`yarn`

Yarn

`pnpm`

pnpm

Auto-detected from lockfiles (`package-lock.json`, `yarn.lock`, `pnpm-lock.yaml`). Override if needed.

## Source type

Value

Description

`archive`

From an uploaded archive

`git`

From a connected Git repo

## Archive path

When `source_type` is `archive`, path to the archive relative to `public_html`.

Supported: `.zip`, `.tar`, `.tar.gz`, `.tgz`, `.gz`, `.7z`. (The hPanel uploader accepts `.zip`, `.tar`, `.tar.gz`, `.tgz`.)

Example: `myapp.zip` or `uploads/myproject.tar.gz`.

## Auto-detecting settings

Not sure what to fill in? Let Hostinger detect from your `package.json`.

- **hPanel:** settings are detected automatically when you import a repository or upload an archive; review them on the deploy settings screen.
- **API:** use the Get Build Settings from Archive / from Repository endpoints (see the [API reference](https://docs.hostinger.com/api-reference/endpoints/hosting/nodejs)) — they return framework, Node version, output directory, and available scripts.

## Build limits

- One deployment runs at a time per site; additional builds queue (up to 20 pending).
- Dependency installation and the build script each have a **15-minute** time limit.
- Logs from the **last 10 builds** are kept.

## Build logs

Every build produces a log:

- Dependency installation
- Build script output
- Errors and warnings
- Success/failure status

View them under **Deployments** in hPanel (see [Deployments](https://docs.hostinger.com/node.js/deployments)), or fetch them via the [API](https://docs.hostinger.com/api-reference/endpoints/hosting/nodejs).

---

*Last updated: September 23, 2026*

Last updated