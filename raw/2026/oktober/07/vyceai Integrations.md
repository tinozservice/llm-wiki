---
title: "Affordable AI API Proxy"
source: "https://vyceai.com/dashboard-v2"
author:
  - "[[Vyce AI]]"
published:
created: 2026-10-07
description: "Vyce AI provides an OpenAI-compatible API proxy with access to Claude, GPT, DeepSeek, Gemini, MiMo and more. One API key, multiple models, cheapest prices."
tags:
  - "clippings"
---
## Integrations

Vyce AI is OpenAI & Anthropic compatible. Point any client or IDE at our base URL.

Default OpenAI SDK endpoint

Replace `https://api.openai.com` with `https://vyceai.com/v1`

### IDE Integration (OpenCode, Cursor, Continue)

OpenAI-Compatible

OpenCode Custom Provider FieldsOne-click copy

Provider ID(Lowercase identifier)

`vyceai`

Display name(Model dropdown label)

`VyceAi`

Base URL(OpenAI format endpoint)

`https://vyceai.com/v1`

API key(Your secret key from Keys tab)

`sk-...`

Supports any IDE supporting custom OpenAI base URLs.

Dialog ReferenceClick to expand

OpenCode Provider Settings

![OpenCode configuration screenshot](https://i.ibb.co/0pXyNxdT/image.png)

Enlarge Screenshot

In OpenCode, navigate to **Settings → Providers → Add Custom Provider**.

### Code Quick Start

Select your client to view and copy complete, ready-to-run API request code.

```
curl https://vyceai.com/v1/chat/completions \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer sk-your-api-key" \
  -d '{
    "model": "claude-sonnet-4-6",
    "messages": [
      {
        "role": "user",
        "content": "Hello! Explain quantum computing in one sentence."
      }
    ],
    "temperature": 0.7
  }'
```

### Endpoints

POST `/v1/chat/completions` Chat completions

POST `/v1/messages` Anthropic messages

POST `/v1/images/generations` Grok Imagine 2 ($0.50/img)

GET `/v1/models` List models

GET `/v1/me` Key info

### Authentication

Pass your API key in the `Authorization` header.

```
Authorization: Bearer sk-your-api-key-here
```

Create keys from the **Keys** tab.