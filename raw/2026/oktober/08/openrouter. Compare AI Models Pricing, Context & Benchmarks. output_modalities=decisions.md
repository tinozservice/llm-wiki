---
title: "Compare AI Models: Pricing, Context & Benchmarks"
source: https://openrouter.ai/models?output_modalities=decisions
author:
  - "[[upstage]]"
  - "[[openrouter.ai]]"
published:
created: 2026-10-08
description: Compare 500+ LLMs from OpenAI, Anthropic, Google, Meta and more — pricing, context length, and benchmarks side by side, all through one API.
tags:
  - clippings
---
[

](https://openrouter.ai/discover)

- 50% off
	64.4M tokens
		[Solar Decide Flash is Upstage's low-latency structured decision model, a faster variant of Solar Decide built on Solar Mini 4 and served through the System One (`/v1/systemone`) API. Instead of generating text, it reads a `state` and answers typed questions, returning a choice, a score, or a yes/no answer, each with a probability taken directly from the model. Each decision is a single forward pass, and output tokens are free. It is tuned for consistently fast response times in routing, classification, and policy checks. It keeps the 512K context window, so a full document can serve as the state, and carries Solar Mini 4's Korean-language strength.](https://openrouter.ai/upstage/solar-decide-flash)
	by [upstage](https://openrouter.ai/upstage) 524K context$0.05/M input $0/M output
- 2.54B tokens
		[Decider V1.1 27B is a new checkpoint of Perplexity's decision model, succeeding Decider V1 27B with the same API contract. Instead of generating text, it reads content passed as `state` (text, JSON, or images) and returns typed, probabilistic answers to one or more named questions in a single request: the probability of yes for a yes/no question (`noul`), a probability for every option plus the most likely one (`choice`), or a probability for every level of an ordered rubric plus the expected score (`score`). It is built for classification, routing, moderation, and rubric grading where application code thresholds the returned numbers rather than parsing a chat reply. A request can carry up to 128 questions about the same content.](https://openrouter.ai/perplexity/pplx-decider-v1.1-27b)
	by [perplexity](https://openrouter.ai/perplexity) 262K context$0.02/M input $0/M output
- 13.5B tokens
		[GPT-6 Luna Decisions is GPT-6 Luna served through OpenAI's Decisions API. Instead of generating text, it reads the content passed as `state` (text, JSON, or images) and returns typed, probabilistic answers to named questions in a single request: the probability of yes for a yes/no question (`noul`), a probability for every option plus the most likely one (`choice`), or a probability for every level of an ordered rubric plus the expected score (`score`). It is built for classification, routing, moderation, and rubric grading where application code thresholds the returned numbers rather than parsing a chat reply. A request can carry up to 200 questions about the same content.](https://openrouter.ai/openai/gpt-6-luna-decisions)
	by [openai](https://openrouter.ai/openai) 1.05M context$0.10/M input $0/M output
- 9.76B tokens
		[d1 is Liquid AI's structured decision model, served as a System One endpoint. Send a state along with typed questions, and it returns a choice, a score, or a yes/no answer, each with a probability taken directly from the model rather than written out as text. It uses the same /v1/systemone schema as other OpenRouter Decisions models, so it suits routing, classification, and policy checks that need a fast, scored answer instead of prose.](https://openrouter.ai/liquid/d1)
	by [liquid](https://openrouter.ai/liquid) 66K context$0.04/M input $0/M output
- 7.48B tokens
	[Trivia (#5)](https://openrouter.ai/rankings)
		[Clef-flash is the fast 9B member of Cloudflare's open-source Clef decision model family, a fine-tune of Qwen3.5-9B served on Workers AI. It turns a state (text or structured JSON) plus a schema of typed questions into decisions, returning a calibrated probability for every allowed option of every question in a single forward pass instead of generating tokens. Use it for low-latency classification, routing, scoring, and guardrails through the Decisions API. Note: Workers AI currently truncates long text state to roughly the first 2K tokens, so content beyond that is not read; images are counted separately.](https://openrouter.ai/cloudflare/clef-flash)
	by [cloudflare](https://openrouter.ai/cloudflare) 66K context$0.021/M input $0/M output
- 4.82B tokens
	[Trivia (#8)](https://openrouter.ai/rankings)
		[Clef is Cloudflare's open-source 27B multimodal decision model, a fine-tune of Qwen3.8-27B served on Workers AI. It turns a state (text or structured JSON) plus a schema of typed questions into decisions, returning a calibrated probability for every allowed option of every question in a single forward pass instead of generating tokens. Use it for classification, routing, scoring, guardrails, and agentic control flow through the Decisions API. Note: Workers AI currently truncates long text state to roughly the first 2K tokens, so content beyond that is not read; images are counted separately.](https://openrouter.ai/cloudflare/clef)
	by [cloudflare](https://openrouter.ai/cloudflare) 66K context$0.042/M input $0/M output
- 2.52B tokens
		[Tev1 4B Experimental is an experimental decision model from Together AI, a supervised fine-tune of Qwen3.5-4B trained to choose one option from a structured state, question, and list of 2-24 labeled options. It keeps Qwen's standard next-token head, so it is served through the regular chat completions API rather than a dedicated decisions runtime. Send a system instruction followed by a JSON decision containing `state`, `question`, and `options`. The model returns a single option letter, which application code maps back to the option key. Recommended settings are `temperature: 0`, `max_tokens: 8`, and thinking disabled. It is intended for routing, classification, and policy checks, not generic chat. Together publishes the full data recipe and training code so teams can fine-tune their own variant.](https://openrouter.ai/togethercomputer/tev1-4b-experimental)
	by [togethercomputer](https://openrouter.ai/togethercomputer) 33K context$0.042/M input $0/M output
- 13.2B tokens
		[Mercury Decide is Inception's structured decision model, served as a System One endpoint. Send a state along with typed questions, and it returns a choice, a score, or a yes/no answer, each with a calibrated probability taken directly from the model rather than written out as text, so output tokens are free. It makes up to 14 decisions per second and reports how certain it is, so a decision system can run it on every case and escalate the unsure ones to a human. Mercury Decide uses the same /v1/systemone schema as Jev.](https://openrouter.ai/inception/mercury-decide:free)
	by [inception](https://openrouter.ai/inception) 33K context$0/M input $0/M output
- 50% off
	5.55B tokens
		[Solar Decide is Upstage's structured decision model, served as a System One endpoint on Solar Mini 4. Send a state along with typed questions, and it returns a choice, a score, or a yes/no answer, each with a calibrated probability taken directly from the model rather than written out as text. Because it generates no prose, each decision takes a single forward pass and output tokens are free. With a 512K context window, an entire document can serve as the state. Solar Decide uses the same /v1/systemone schema as Jev, bringing Solar Mini 4's strong Korean understanding to routing, classification, and policy checks.](https://openrouter.ai/upstage/solar-decide)
	by [upstage](https://openrouter.ai/upstage) 524K context$0.05/M input $0/M output
- 2.01B tokens
		[Span-01 is a behavior scoring model from Respan. It reads a conversation span and returns, for each plain-language behavior you define, the probability that the behavior is present. It is suited for evaluation, guardrails, and monitoring of LLM and agent outputs at scale. It is the higher-accuracy tier of the family. Span-01 Lite is the free, lighter tier.](https://openrouter.ai/respan/span-01)
	by [respan](https://openrouter.ai/respan) $0.02/M input $0/M output
- 11.7B tokens
	[Finance (#45)](https://openrouter.ai/rankings)
		[Span-01 Lite is the free, lighter tier of Span-01, a behavior scoring model from Respan. It returns, for each plain-language behavior you define, the probability that the behavior is present in a conversation span, and is suited for high-volume evaluation and monitoring where cost matters more than peak accuracy.](https://openrouter.ai/respan/span-01-lite)
	by [respan](https://openrouter.ai/respan) $0/M input $0/M output
- 97M tokens
		[Span-01 Lite is the free, lighter tier of Span-01, a behavior scoring model from Respan. It returns, for each plain-language behavior you define, the probability that the behavior is present in a conversation span, and is suited for high-volume evaluation and monitoring where cost matters more than peak accuracy.](https://openrouter.ai/respan/span-01-lite:free)
	by [respan](https://openrouter.ai/respan) $0/M input $0/M output
- 1.62B tokens
		[Kev 4B is a small open-weight decision model from Jared Palmer, built as a LoRA adapter and pointer head on Qwen3.5-4B-Base and served over the same /v1/systemone contract as TypeSafe's Jev. Send a state and typed questions (yes/no, multiple choice, or score) and it returns a calibrated probability per question in one forward pass, with no generated text. It is the recommended checkpoint in the Kev family (0.8B, 4B, 9B) and is suited for routing, classification, and policy checks that want a compact, Apache-2.0 alternative to Jev. Code, model cards, and eval suites: https://github.com/jaredpalmer/kev](https://openrouter.ai/jaredpalmer/kev-4b)
	by [jaredpalmer](https://openrouter.ai/jaredpalmer) 8K context$0.042/M input $0/M output