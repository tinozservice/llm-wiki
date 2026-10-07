---
title: Puter.js Documentation
source: https://docs.puter.com/deployments/
author:
  - "[[Puter Technologies Inc.]]"
published:
created: 2026-10-07
description: Deploy your Puter.js app anywhere, or host your website directly on Puter.
tags:
  - clippings
---
## Deployments

---

Once you've integrated Puter.js into your app, the next step is getting it online.

Puter.js is a regular JavaScript library, so your app deploys like any other website. You can ship it to any hosting platform you already use, or host it directly on [Puter](https://puter.com/).

## Deploy anywhere

Because Puter.js runs entirely in the browser, there's no special backend to provision. Build and serve your app the same way you would any other website, on any hosting provider, such as [Vercel](https://vercel.com/), [Cloudflare Pages](https://pages.cloudflare.com/), [Netlify](https://www.netlify.com/), or [GitHub Pages](https://pages.github.com/).

The only requirement is that the app is served by a web server. A hosting provider, a self-hosted server, and a local development server are all valid. Opening the HTML file directly from disk does not work.

No extra configuration is required. Your app keeps talking to Puter's services from the browser, wherever it's hosted.

## Deploy to Puter

Puter can also host your website for you, on a free `*.puter.site` subdomain.

### Publish from puter.com

The quickest way to publish a website is to upload it on [puter.com](https://puter.com/) and publish it.

1. Right-click on the desktop and create a new folder for your website's files.![](https://developer.puter.com/assets/img/free-hosting/create-directory.webp)
2. Open the folder, right-click inside it, and choose **Upload Here** to upload your website's files (your `index.html` and any other assets).![](https://developer.puter.com/assets/img/free-hosting/upload-here.webp)
3. Right-click the folder and choose **Publish as Website**.![](https://developer.puter.com/assets/img/free-hosting/publish-website.webp)
4. Pick a subdomain and click **Publish**. Your site goes live instantly at `https://your-subdomain.puter.site`.![](https://developer.puter.com/assets/img/free-hosting/published.webp)

### Deploy with the Puter CLI

You can also deploy straight from the terminal with the [Puter CLI](https://www.npmjs.com/package/@heyputer/cli).

Install it globally:

```coffeescript
npm install -g @heyputer/cli
```

Then deploy your site's directory to a `*.puter.site` subdomain:

```
puter site deploy [dir] [subdomain]
```

Both arguments are optional: run `puter site deploy` with no arguments and the CLI prompts you for the directory and subdomain.

The Puter CLI is currently in beta (0.x), so commands and behavior may change.

### Automate with GitHub Actions

If your code lives on GitHub, you can redeploy your site automatically on every push using the [Puter Subdomain Deploy Action](https://github.com/HeyPuter/puter-subdomain-deploy-action).

Add a workflow file at `.github/workflows/deploy.yml`:

```yaml
name: Deploy to Puter

on:
  push:
    branches: [main]

jobs:
  deploy:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4

      - name: Deploy website
        uses: HeyPuter/puter-subdomain-deploy-action@v1.0.6
        with:
          subdomain: my-site                        # publishes to my-site.puter.site
          puter_path: ~/Sites/my-site/deployment/   # where to store the files on Puter
          source_path: dist                         # the folder to deploy (e.g. your build output)
          puter_token: ${{ secrets.PUTER_TOKEN }}
```

Create a new repository secret named `PUTER_TOKEN` and set its value to your Puter auth token (see [creating secrets for a repository](https://docs.github.com/en/actions/how-tos/write-workflows/choose-what-workflows-do/use-secrets#creating-secrets-for-a-repository)). To get your auth token, follow the [Puter auth token tutorial](https://developer.puter.com/tutorials/puter-auth-token/).

If your project has a build step, run it before the deploy step (for example `npm ci && npm run build`) and point `source_path` at the build output.

## Configure your site

Once your site is live, you can add a `.puter_site_config` file to its directory to set a custom 404 page, or to make client-side routing work for a single-page app. See [Site Configuration](https://docs.puter.com/site-config).