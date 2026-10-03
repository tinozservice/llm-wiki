---
title: inceptionlabs Models
source: https://www.inceptionlabs.ai/models
author:
  - "[[inceptionlabs-ai]]"
published:
created: 2026-10-01
description: We are leveraging diffusion technology to develop a new generation of LLMs. Our dLLMs are much faster and more efficient than traditional autoregressive LLMs.
tags:
  - clippings
---
## Build high-performance AI apps with Mercury

Inception’s diffusion LLMs (dLLMs) deliver frontier LLM quality at 5x greater speed.[Get Started](https://platform.inceptionlabs.ai/)

Trusted by teams at

## Overview

(Un)paralled speeds

Our models run at 1000+ tokens per second on commercial NVIDIA GPUs, enabling instant, in-the-flow AI solutions.

Exceptional Quality

Comparable quality to cost-optimized frontier models like GPT-5.6 Luna (Low), Gemini 3.5 Flash-Lite, and Claude Haiku 4.5.

Seamless integration

Our models are OpenAI compatible and a drop-in replacement for traditional LLMs.

## Discover our models

80% OFF

Mercury 2.5

Our most intelligent reasoning dLLM, at our lowest price. Ideal for the most complex applications where quality and speed matter.[Get Started](https://openrouter.ai/inception/mercury-2.5-preview)[Docs](https://openrouter.ai/inception/mercury-2.5-preview)

Pricing

Input

$0.20 $0.04 /1M Tokens

Cached Input

$0.02 $0.004 /1M Tokens

Output

$0.75 $0.15 /1M Tokens

Features

260K context window

Reasoning

Tool use

Structured output

Use cases

Rapid coding iteration

Agents and Subagents

Customer support

Enterprise search

50% OFF

Mercury Voice

Our dLLM optimized for voice agents, delivers time-to-first-token (TTFT) under 170ms.[Contact sales](mailto:sales@inceptionlabs.ai)[Docs](https://docs.inceptionlabs.ai/get-started)

Pricing

Input

$0.40 $0.20 /1M Tokens

Output

$1.50 $0.75 /1M Tokens

Features

128K context window

Reasoning

Tool use

Structured output

Use cases

Customer support

Patient care

Education

Gaming

Mercury Router

Understand user prompts and route tasks to the best models according to quality, speed, and cost.[Contact Sales](https://www.inceptionlabs.ai/enterprise#contact-sales)

Pricing

For more details on pricing, please [contact sales.](https://www.inceptionlabs.ai/enterprise#contact-sales)

Features

Model routing

Routing analytics

Model analytics

Why route

Lower costs

Higher quality

Faster response

\* Mercury 1, 2, and Mercury Edit 2 remain supported for existing customers. For access or migration guidance, contact your Inception representative or [view our docs](https://docs.inceptionlabs.ai/).

## Get started with Mercury today[Read our Docs](https://docs.inceptionlabs.ai/get-started/get-started)

1

Create your account

Create an [Inception Platform](https://platform.inceptionlabs.ai/) account or sign in directly if you already have one.

2

Create your API Key

Go to API Keys and create a new API key. New API keys comes with 10 million free tokens

3

Make your first request

We are OpenAI API compatible and are supported through libraries including AISuite, LiteLLM, and LangChain.

1

2

3

4

5

6

7

8

9

10

11

12

13

14

15

16

17

import requests

response = requests.post(

'https://api.inceptionlabs.ai/v1/chat/completions',

headers={

'Content-Type': 'application/json',

'Authorization': 'Bearer INCEPTION\_API\_KEY'

},

json={

'model': 'mercury-2.5',

'messages': \[

{'role': 'user', 'content': 'What is a diffusion model?'}

\],

'max\_tokens': 1000

}

)

data = response.json()

Pricing

## Choose the access plan that works best for your needs

Free

Try our models.

Access all models

100 million free tokens[Get Started](https://platform.inceptionlabs.ai/)

Developer

Scale our models.

Usage-based pricing

Generous rate limits

Priority support[Get Started](https://platform.inceptionlabs.ai/)

Enterprise

Use Mercury in production.

Custom rate limits

SLA guarantees

Volume-based pricing[Contact Sales](https://www.inceptionlabs.ai/enterprise#contact-sales)

The future of LLMs is here[Get Started](https://platform.inceptionlabs.ai/)