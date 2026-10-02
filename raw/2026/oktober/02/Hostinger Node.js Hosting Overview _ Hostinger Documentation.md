---
title: "Node.js Hosting Overview | Hostinger Documentation"
source: "https://docs.hostinger.com/node.js/overview"
author:
published: 2026-09-23
created: 2026-10-02
description: "Overview of managed Node.js hosting on Hostinger: how deployments work, supported Node versions and frameworks, build sources, and entry file requirements."
tags:
  - "clippings"
---
Run Node.js apps directly on your hosting — full-stack apps, APIs. No separate server to manage.

> **Note:** In hPanel, Node.js apps appear as **Web Apps**. Both names refer to the same feature.

## How it works

1. **Get your code to Hostinger** — connect a GitHub repository so every push deploys automatically, upload an archive of your project, or deploy straight from your code editor with the [Hostinger Connector](https://docs.hostinger.com/hostinger-connector/overview).
2. **Configure** Node version, root directory, build script, output directory.
3. **Build** — Hostinger installs dependencies and runs your build script.
4. **Run** — Hostinger starts your app and keeps it running at your domain.

If your app crashes, it's automatically restarted.

## Process handling

Node.js apps on Hostinger run on demand. After a period without incoming traffic, your app's process is stopped automatically to free up server resources. The next request — a visitor opening your site, an API call, anything — starts it again, and your app resumes serving traffic. The handover happens in the background; you don't need to configure or restart anything.

## Supported Node.js versions

Version

Status

18

Supported

20

Supported (LTS)

22

Supported (LTS)

24

Supported

> **Tip:** Use an LTS version in production for the longest active support window.

## Supported frameworks

Next.js, Nuxt.js, Express.js, NestJS, Fastify, Hono, Nitro, React Router, Astro, SvelteKit, Gatsby, and more — split by frontend (static) vs backend (SSR). See [Supported Frameworks](https://docs.hostinger.com/node.js/overview-1) for the full list and per-framework setup.

Hostinger auto-detects the framework from your `package.json` — whether you upload an archive or import a GitHub repository.

## Build sources

- **GitHub** — connect a GitHub repo and trigger builds on push. See [GitHub](https://docs.hostinger.com/node.js/github).
- **Archive** — upload a `.zip`, `.tar`, `.tar.gz`, or `.tgz` and point the build at it.
- **Hostinger Connector** — deploy from VS Code, Cursor, or Claude Code with a prompt. See [Hostinger Connector](https://docs.hostinger.com/hostinger-connector/overview).

## Entrypoint

Server apps need an **entry file** — the script Node runs to start your server, e.g. `server.js`. It must end in `.js`, `.mjs`, or `.cjs`. Depending on the framework, the path is relative to the root directory or to the output directory — see [Build Settings](https://docs.hostinger.com/node.js/build-settings#entry-file).

Required for:

- **Backend frameworks** — Express.js, NestJS, Fastify, Hono
- **SSR / dual-mode frameworks when running in server mode** — Nuxt.js, Nitro, React Router, Astro, SvelteKit (with `adapter-node`)

Frontend-only frameworks (React, Create React App, Vue, Angular, Vite, Parcel, Preact, Svelte, Gatsby) serve their output directory directly and don't need an entry file. Same for the dual-mode frameworks above when configured for static output (`nuxt generate`, Astro's static default, SvelteKit with `adapter-static`). Next.js apps don't need one either — they always run in server mode, and Hostinger starts their standalone server for you.

## Next steps

- [Supported Frameworks](https://docs.hostinger.com/node.js/overview-1)
- [Creating a Node.js App](https://docs.hostinger.com/node.js/creating-an-app)
- [Build Settings](https://docs.hostinger.com/node.js/build-settings)
- [API reference](https://docs.hostinger.com/api-reference/endpoints/hosting/nodejs) — start Node.js builds programmatically

---

*Last updated: September 23, 2026*

Last updated