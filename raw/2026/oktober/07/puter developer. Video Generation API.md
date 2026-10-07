---
title: Video Generation API
source: https://developer.puter.com/video-generation/
author:
  - "[[Puter Technologies Inc.]]"
published:
created: 2026-10-07
description: Add AI video generation to your app with Puter.js. Access Sora, Veo, and more with a single API. No API keys, no servers, no signup required.
tags:
  - clippings
---
Add AI video generation to your app with Puter.js.  
Access Sora, Veo, and more with a single API.  
No API keys, no servers, no signup required.

[Add Video Generation](https://docs.puter.com/AI/txt2vid/) [See it in action](https://docs.puter.com/playground/ai-txt2vid/)

### Multiple AI Providers

Access OpenAI Sora, Google Veo, and more through a single API.

- Switch providers by changing one parameter
- Always access the latest video models
- No vendor lock-in

### No API Keys Required

Skip the sign-ups, key management, and credential juggling. Just add Puter.js and start generating videos immediately.

### User-Pays Model

[Your users cover their own AI costs](https://docs.puter.com/user-pays-model/), so you can ship video generation features without worrying about billing or runaway API expenses.

### No Servers Required

Generate videos directly from the browser with client-side JavaScript. No server code needed.

### Works Everywhere

Use from any frontend with a simple script tag, or install via npm for Node.js projects.

## How It Works

### 1 Include Puter.js

Add Puter.js to your app:

`<script src="https://js.puter.com/v2/"></script>`

or with npm:

`npm install @heyputer/puter.js`

### 2 Generate Videos

Use the simple JavaScript API to generate videos from text:

```
puter.ai.txt2vid("A sunset over mountains")
```

View the [text-to-video documentation](https://docs.puter.com/AI/txt2vid/) for a full list of available features.

### ✓That's it!

No need to set up servers or infrastructure. No API keys, configuration, or rate-limiting. Everything is handled by Puter.js!

[Read the Docs](https://docs.puter.com/AI/txt2vid/) • [Try the Playground](https://docs.puter.com/playground/ai-txt2vid/)

## Unified Video Generation API

Generate videos using different models from various providers.

```javascript
// Generate a video with test mode (no credits used)
const video = await puter.ai.txt2vid(
    "A sunrise drone shot flying over a calm ocean",
    true // test mode
);
document.body.appendChild(video);

// Generate a clip with Sora
const sora = await puter.ai.txt2vid(
    "A fox sprinting through a snow-covered forest at dusk", {
        model: "sora-2",
    }
);

// Use Google Veo
const veo = await puter.ai.txt2vid("A peaceful garden", {
    model: "veo-3.0-fast"
});
```

[Find more examples →](https://docs.puter.com/AI/txt2vid/#examples)

## Frequently Asked Questions

What is this video generation API about?

Use Puter.js Video Generation API to create AI-generated video clips directly from text prompts. Access models like OpenAI Sora and Google Veo through a simple JavaScript API without managing API keys or infrastructure.

What is Puter.js?

[Puter.js](https://docs.puter.com/) is a JavaScript library that provides access to AI, storage, and other cloud services directly from your frontend code. It handles authentication, infrastructure, and scaling so you can focus on building your app.

What's the use case for this video generation API?

You can use the API for apps that need AI-generated videos: content creation platforms, social media tools, marketing automation, educational content, game trailers, and any application where users want to create short-form videos from text descriptions.

How much does it cost?

With the [User-Pays model](https://docs.puter.com/user-pays-model/), users cover their own video generation costs through their Puter account. Each successful generation consumes the user's AI credits in accordance with the model, duration, and resolution requested.

How long does video generation take?

Real renders can take a couple of minutes to complete. The returned promise resolves only when the video is ready, so keep your UI responsive (for example, by showing a spinner) while you wait. Use test mode during development to get instant sample videos.