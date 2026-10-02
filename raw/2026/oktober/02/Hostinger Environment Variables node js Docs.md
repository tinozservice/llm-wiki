---
title: "Environment Variables | Hostinger Documentation"
source: "https://docs.hostinger.com/node.js/environment-variables"
author:
published: 2026-07-27
created: 2026-10-02
description: "How to set environment variables for Node.js apps on Hostinger: adding and importing .env values in hPanel, validation rules, and applying changes via redeploy."
tags:
  - "clippings"
---
Set the values your Node.js app reads from `process.env`. Variables are injected into **both the build and the running app**, and persist across deployments — set them once, not on every push.

## Where to manage them

- **During onboarding** — the deploy settings screen has a **Set environment variables** section.
- **After deploy** — open **Environment variables** in your website dashboard sidebar.

## Adding variables

Add variables one at a time with **Add environment variable**, or bulk-import with **Import.env** — upload a `.env` file and Hostinger parses it (comments are skipped, surrounding quotes stripped).

Validation rules:

Rule

Limit

Key format

Uppercase letters, numbers, and underscores only (`A–Z`, `0–9`, `_`)

Key length

Up to 255 characters

Key uniqueness

Duplicate keys are rejected

Value length

Limited — extremely long values are rejected with an error

Variables per app

Up to 1,000

## Editing and deleting

Values are **masked** in the table — use the show/hide toggle to reveal one. Edit inline, or delete with confirmation.

Some variables are **system-managed** (created by Hostinger features, e.g. the database connect wizard) and marked with an explanatory tooltip; locked variables can't be edited.

## Applying changes

Changes are staged until you save — the page tracks an "Unsaved changes" count and warns if you navigate away. Saving **redeploys the application** so the new values take effect in both build and runtime.

## Notes

- Values are stored encrypted and written to a protected file on your hosting, readable only by your app.
- Don't commit secrets to your repository — set them here instead.
- Variables needed at **build time** (e.g. `NEXT_PUBLIC_*`, API URLs baked into a static bundle) must be set **before** the build that uses them.

## Related

- [Creating a Node.js App](https://docs.hostinger.com/node.js/creating-an-app#connect-a-database) — the database wizard sets connection variables for you
- [Deployments](https://docs.hostinger.com/node.js/deployments) — how redeploys work

---

*Last updated: July 22, 2026*

Last updated