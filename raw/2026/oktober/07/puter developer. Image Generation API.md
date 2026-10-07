---
title: Image Generation API
source: https://developer.puter.com/image-generation/
author:
  - "[[Puter Technologies Inc.]]"
published:
created: 2026-10-07
description: Add image generation to your app with Puter.js. Access dozens of AI image models with a single API. No API keys, no servers, no signup required.
tags:
  - clippings
---
Add image generation to your app with Puter.js.  
Access dozens of AI image models with a single API.  
No API keys, no servers, no signup required.

[Add Image Generation](https://docs.puter.com/AI/txt2img/) [See it in action](https://docs.puter.com/playground/ai-txt2img/)

### 40+ AI Image Models

Access Nano Banana, GPT Image, FLUX, and more through a single API.

- Switch models by changing one parameter
- Always access the latest models
- No vendor lock-in

### No API Keys Required

Skip the sign-ups, key management, and credential juggling. Just add Puter.js and start generating images immediately.

### User-Pays Model

[Your users cover their own AI costs](https://docs.puter.com/user-pays-model/), so you can ship image generation features without worrying about billing or runaway API expenses.

### No Servers Required

Generate images directly from the browser with client-side JavaScript. No server code needed.

### Works Everywhere

Use from any frontend with a simple script tag, or install via npm for Node.js projects.

## How It Works

### 1 Include Puter.js

Add Puter.js to your app:

`<script src="https://js.puter.com/v2/"></script>`

or with npm:

`npm install @heyputer/puter.js`

### 2 Generate Images

Use the simple JavaScript API to generate images:

```
puter.ai.txt2img("A cat playing piano")
```

View the [text-to-image documentation](https://docs.puter.com/AI/txt2img/) for a full list of available features.

### ✓That's it!

No need to set up servers or infrastructure. No API keys, configuration, or rate-limiting. Everything is handled by Puter.js!

[Read the Docs](https://docs.puter.com/AI/txt2img/) • [Try the Playground](https://docs.puter.com/playground/ai-txt2img/)

## Unified Image Generation API

Generate images using different models from various providers.

```javascript
// Generate an image with the default model
const img = await puter.ai.txt2img("A sunset over mountains");
document.body.appendChild(img);

// Use GPT-Image
const gpt = await puter.ai.txt2img("A futuristic city", {
    model: "gpt-image-1.5",
});

// Use Nano Banana
const banana = await puter.ai.txt2img("A peaceful garden", {
    model: "gemini-3-pro-image"
});
```

[Find more examples →](https://docs.puter.com/AI/txt2img/#examples)

## Frequently Asked Questions

What is this image generation API about?

Use Puter.js Image Generation API to access dozens of AI models including Nano Banana, GPT Image, FLUX, and more through a simple JavaScript API. Generate images directly from your frontend code without managing API keys or infrastructure.

What is Puter.js?

[Puter.js](https://docs.puter.com/) is a JavaScript library that provides access to AI, storage, and other cloud services directly from your frontend code. It handles authentication, infrastructure, and scaling so you can focus on building your app.

What's the use case for this image generation API?

You can use the API for apps that need AI-generated images: design tools, content creation platforms, chatbots with visual output, game asset generators, social media tools, and any application where users want to create images from text descriptions.

How much does it cost?

With the [User-Pays model](https://docs.puter.com/user-pays-model/), users cover their own image generation costs through their Puter account. This means you can build apps without worrying about infrastructure expenses.