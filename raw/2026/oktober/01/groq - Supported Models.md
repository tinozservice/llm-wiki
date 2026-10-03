---
title: groq - Supported Models
source: https://console.groq.com/docs/models
author:
  - "[[groq.com]]"
published:
created: 2026-10-01
description: Explore all available models on GroqCloud.
tags:
  - clippings
---
/

[Docs](https://console.groq.com/docs/overview) [API Reference](https://console.groq.com/docs/api-reference)

## Featured Models

### [OpenAI GPT-OSS 120B](https://console.groq.com/docs/model/openai/gpt-oss-120b)

GPT-OSS 120B is OpenAI's flagship open-weight language model with 120 billion parameters, built in browser search and code execution, and reasoning capabilities.

Token Speed

~500 tps

Modalities

Capabilities

## Production Models

**Note:** Production models are intended for use in your production environments. They meet or exceed our high standards for speed, quality, and reliability. Read more [here](https://console.groq.com/docs/deprecations).

| MODEL ID | SPEED (T/SEC) | PRICE PER 1M TOKENS | RATE LIMITS (DEVELOPER PLAN) | CONTEXT WINDOW (TOKENS) | MAX COMPLETION TOKENS | MAX FILE SIZE |
| --- | --- | --- | --- | --- | --- | --- |
| [Llama 3.1 8B](https://console.groq.com/docs/model/llama-3.1-8b-instant) Enterprise  llama-3.1-8b-instant | 560 | ContactSales | ContactSales | 131,072 | 131,072 | \- |
| [Llama 3.3 70B](https://console.groq.com/docs/model/llama-3.3-70b-versatile) Enterprise  llama-3.3-70b-versatile | 280 | ContactSales | ContactSales | 131,072 | 32,768 | \- |
| [GPT OSS 120B](https://console.groq.com/docs/model/openai/gpt-oss-120b)  openai/gpt-oss-120b | 500 | $0.15 input$0.60 output | 250K TPM1K RPM | 131,072 | 65,536 | \- |
| [GPT OSS 20B](https://console.groq.com/docs/model/openai/gpt-oss-20b)  openai/gpt-oss-20b | 1000 | $0.075 input$0.30 output | 250K TPM1K RPM | 131,072 | 65,536 | \- |
| [Whisper](https://console.groq.com/docs/model/whisper-large-v3)  whisper-large-v3 | \- | $0.111 per hour | 200K ASH300 RPM | \- | \- | 100 MB |
| [Whisper Large V3 Turbo](https://console.groq.com/docs/model/whisper-large-v3-turbo)  whisper-large-v3-turbo | \- | $0.04 per hour | 400K ASH400 RPM | \- | \- | 100 MB |

## Preview Models

**Note:** Preview models are intended for evaluation purposes only and should not be used in production environments as they may be discontinued at short notice. Read more about deprecations [here](https://console.groq.com/docs/deprecations).

| MODEL ID | SPEED (T/SEC) | PRICE PER 1M TOKENS | RATE LIMITS (DEVELOPER PLAN) | CONTEXT WINDOW (TOKENS) | MAX COMPLETION TOKENS | MAX FILE SIZE |
| --- | --- | --- | --- | --- | --- | --- |
| [Canopy Labs Orpheus Arabic Saudi](https://console.groq.com/docs/model/canopylabs/orpheus-arabic-saudi)  canopylabs/orpheus-arabic-saudi | \- | $40.00 per 1M characters | 50K TPM250 RPM | 4,000 | 50,000 | \- |
| [Canopy Labs Orpheus V1 English](https://console.groq.com/docs/model/canopylabs/orpheus-v1-english)  canopylabs/orpheus-v1-english | \- | $22.00 per 1M characters | 50K TPM250 RPM | 4,000 | 50,000 | \- |
| [Llama Prompt Guard 2 22M](https://console.groq.com/docs/model/meta-llama/llama-prompt-guard-2-22m)  meta-llama/llama-prompt-guard-2-22m | \- | $0.03 input$0.03 output | 30K TPM100 RPM | 512 | 512 | \- |
| [Prompt Guard 2 86M](https://console.groq.com/docs/model/meta-llama/llama-prompt-guard-2-86m)  meta-llama/llama-prompt-guard-2-86m | \- | $0.04 input$0.04 output | 30K TPM100 RPM | 512 | 512 | \- |
| [MiniMax M2.7](https://console.groq.com/docs/model/minimaxai/minimax-m2.7) Enterprise  minimaxai/minimax-m2.7 | 260 | ContactSales | ContactSales | 196,608 | 131,072 | \- |
| [Safety GPT OSS 20B](https://console.groq.com/docs/model/openai/gpt-oss-safeguard-20b)  openai/gpt-oss-safeguard-20b | 1000 | $0.075 input$0.30 output | 150K TPM1K RPM | 131,072 | 65,536 | \- |
| [Qwen/Qwen3.8-27B](https://console.groq.com/docs/model/qwen/qwen3.8-27b)  qwen/qwen3.8-27b | 450 | $0.80 input$4.00 output | 250K TPM1K RPM | 131,072 | 16,384 | 20 MB |

## Deprecated Models

Deprecated models are models that are no longer supported or will no longer be supported in the future. See our deprecation guidelines and deprecated models [here](https://console.groq.com/docs/deprecations).

## Get All Available Models

Hosted models are directly accessible through the GroqCloud Models API endpoint using the model IDs mentioned above. You can use the `https://api.groq.com/openai/v1/models` endpoint to return a JSON list of all active models:

```
import requests
import os

api_key = os.environ.get("GROQ_API_KEY")
url = "https://api.groq.com/openai/v1/models"

headers = {
    "Authorization": f"Bearer {api_key}",
    "Content-Type": "application/json"
}

response = requests.get(url, headers=headers)

print(response.json())
```