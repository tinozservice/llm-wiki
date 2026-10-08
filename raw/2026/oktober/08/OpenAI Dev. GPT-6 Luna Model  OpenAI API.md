---
title: GPT-6 Luna Model | OpenAI API
source: https://developers.openai.com/api/docs/models/gpt-6-luna
author:
  - "[[OpenAI]]"
published:
created: 2026-10-08
description:
tags:
  - clippings
---
![gpt-6-luna](https://developers.openai.com/images/api/models/icons/gpt-6-luna.png)

GPT-6 Luna

Default

Our most efficient model for focused, high-volume tasks.

Reasoning

High

Speed

Fast

Price

$0.1 • $0.5

Input• Output

Input

Text, Image

Output

Text

GPT-6 Luna is our most efficient model for focused, high-volume tasks.

`reasoning.effort` supports `none`, `low`, `medium` (default), `high`, `xhigh`, and `max`. Use the Responses API for built-in tools and function calling. Chat Completions supports function calling only with `reasoning_effort` set to `none`.

EU data residency is available with Standard, Flex, and Batch processing. See [data residency eligibility](https://developers.openai.com/api/docs/guides/your-data#which-models-and-features-are-eligible-for-data-residency).

1,050,000 context window

128,000 max output tokens

May 18, 2026 knowledge cutoff

Reasoning token support

Pricing

Pricing is based on the number of tokens used, or other metrics based on the model type. For tool-specific models, like search and computer use, there’s a fee per tool call. See details in the [pricing page](https://developers.openai.com/api/docs/pricing).

Text tokens

Per 1M tokens

Input

$0.10

Cached input

$0.01

Cache writes

$0.125

Output

$0.50

Cached input tokens are priced at 10% of the uncached input token rate.

Cache writes are billed at 1.25x the uncached input token rate.

Prompts with more than 272K input tokens are priced at 2x input and cache rates and 1.5x output for the full request.

Regional processing adds a 10% premium where available. EU data residency is available with Standard, Flex, and Batch processing.

Batch and Flex are priced at 50% of Standard rates. Fast mode is priced at 2x the applicable rates.

Modalities

Text

Input and output

Image

Input only

Audio

Not supported

Video

Not supported

Endpoints

Live

v1/live/sessions

Chat Completions

v1/chat/completions

Responses

v1/responses

Realtime

v1/realtime

Realtime translation

v1/realtime/translations

Realtime transcription

v1/realtime/transcription\_sessions

Assistants

v1/assistants

Batch

v1/batch

Fine-tuning

v1/fine-tuning

Embeddings

v1/embeddings

Image generation

v1/images/generations

Videos

v1/videos

Image edit

v1/images/edits

Speech generation

v1/audio/speech

Transcription

v1/audio/transcriptions

Translation

v1/audio/translations

Moderation

v1/moderations

Completions (legacy)

v1/completions

Features

Streaming

Supported

Function calling

Supported

Structured outputs

Supported

Fine-tuning

Not supported

Tools

Tools supported by this model when using the Responses API.

Web search

Supported

File search

Supported

Image generation

Supported

Code interpreter

Supported

Hosted shell

Supported

Apply patch

Supported

Skills

Supported

Computer use

Supported

MCP

Supported

Tool search

Supported

Snapshots

Use `gpt-6-luna` in your API requests.

![gpt-6-luna](https://developers.openai.com/images/api/models/icons/gpt-6-luna.png)

gpt-6-luna

gpt-6-luna

gpt-6-luna

Rate limits

Rate limits ensure fair and reliable access to the API by placing specific caps on requests, tokens, audio duration, or other usage within a given time period. Your usage tier determines how high these limits are set and automatically increases as you send more requests and spend more on the API.

<table><thead><tr><th>Tier</th><th>RPM</th><th>TPM</th><th>Batch queue limit</th></tr></thead><tbody><tr><td>Free</td><td colspan="3">Not supported</td></tr><tr><td>Build</td><td>5,000</td><td>2,000,000</td><td>20,000,000</td></tr><tr><td>Launch</td><td>10,000</td><td>10,000,000</td><td>1,000,000,000</td></tr><tr><td>Grow</td><td>30,000</td><td>180,000,000</td><td>15,000,000,000</td></tr></tbody></table>