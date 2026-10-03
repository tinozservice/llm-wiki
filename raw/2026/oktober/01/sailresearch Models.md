---
title: sailresearch Models
source: https://docs.sailresearch.com/models
author:
  - "[[sailresearch .com]]"
published:
created: 2026-10-01
description: All models currently served by Sail
tags:
  - clippings
---
Sail does not requantize weights. **Reference** means Sail serves the model exactly as its authors released it. Each row links the Hugging Face weights Sail currently serves.

## Core models

| Model | Model ID | [  Image  ](https://docs.sailresearch.com/images) | [  LoRA  ](https://docs.sailresearch.com/loras) | Reasoning |
| --- | --- | --- | --- | --- |
| Kimi K3  Moonshot AI  Details  Context1M  Params  2.8T; 104B active (MoE)  Popular for  codingagenticvisionlong context | `moonshotai/Kimi-K3`  Reference  [  View checkpoint  ](https://huggingface.co/moonshotai/Kimi-K3 "moonshotai/Kimi-K3") |  |  |  |
| GLM-5.3  Z.ai  Details  Context1M  Params  753B; 40B active (MoE)  Popular for  codingagenticmultilingual | `zai-org/GLM-5.3`  Reference  [  View checkpoint  ](https://huggingface.co/zai-org/GLM-5.3 "zai-org/GLM-5.3") |  |  | \*  Setting reasoning effort to `none` returns HTTP 400. Use `low` for GLM-5.3’s lowest native reasoning tier. |
| GLM-5.3-Flash  Z.ai  Details  Context1M  Params  321B; 18B active (MoE) | `zai-org/GLM-5.3-Flash`    [View checkpoint](https://huggingface.co/nvidia/GLM-5.3-Flash-NVFP4 "Served in FP4. The routed experts are NVFP4, from nvidia/GLM-5.3-Flash-NVFP4. Everything else is FP8, from zai-org/GLM-5.3-Flash. Contact sales for FP8 on all weights.") |  |  |  |
| DeepSeek V4.1 Flash  DeepSeek  Details  Context1M  Params  552B; 16B active (MoE)  Popular for  codingagenticlong context | `deepseek-ai/DeepSeek-V4.1-Flash`  Reference  [  View checkpoint  ](https://huggingface.co/deepseek-ai/DeepSeek-V4.1-Flash "deepseek-ai/DeepSeek-V4.1-Flash") |  |  |  |
| DeepSeek V4 Pro 0813  DeepSeek  Details  Context1M  Params  1.65T; 49B active (MoE)  Popular for  codingagenticmathlong context | `deepseek-ai/DeepSeek-V4-Pro-0813`  Reference  [  View checkpoint  ](https://huggingface.co/deepseek-ai/DeepSeek-V4-Pro-0813 "deepseek-ai/DeepSeek-V4-Pro-0813") |  |  |  |
| DeepSeek V4 Flash 0731  DeepSeek  Details  Context1M  Params  284B; 13B active (MoE)  Popular for  codingagenticlong context | `deepseek-ai/DeepSeek-V4-Flash-0731`  Reference  [  View checkpoint  ](https://huggingface.co/deepseek-ai/DeepSeek-V4-Flash-0731 "deepseek-ai/DeepSeek-V4-Flash-0731") |  |  |  |
| Kimi-K2.6  Moonshot AI  Details  Context262K  Params1T; 32B active (MoE)  Popular for  codingagenticvisionlong context | `moonshotai/Kimi-K2.6`  Reference  [  View checkpoint  ](https://huggingface.co/moonshotai/Kimi-K2.6 "moonshotai/Kimi-K2.6") |  |  |  |
| Gemma 4 31B IT  Google  Details  Context256K  Params31B  Popular for  visionmultilingualgeneral chat | `google/gemma-4-31B-it`  Reference  [  View checkpoint  ](https://huggingface.co/google/gemma-4-31B-it "google/gemma-4-31B-it") |  |  |  |
| Gemma 4 31B IT (NVFP4)  Google  Details  Context262K  Params31B  Popular for  visionmultilingualgeneral chat | `nvidia/Gemma-4-31B-IT-NVFP4`    [View checkpoint](https://huggingface.co/nvidia/Gemma-4-31B-IT-NVFP4 "nvidia/Gemma-4-31B-IT-NVFP4") |  |  |  |
| Gemma 4 12B IT  Google  Details  Context16K  Params12B  Popular for  multilingualgeneral chat | `google/gemma-4-12B-it`  Reference  [  View checkpoint  ](https://huggingface.co/google/gemma-4-12B-it "google/gemma-4-12B-it") |  |  |  |
| gpt-oss-120b  OpenAI  Details  Context131K  Params  117B; 5.1B active (MoE)  Popular for  codingmathcost-efficiency | `openai/gpt-oss-120b`  Reference  [  View checkpoint  ](https://huggingface.co/openai/gpt-oss-120b "openai/gpt-oss-120b") |  |  |  |

## Flex-only models

Models served with the [`flex`](https://docs.sailresearch.com/completion-windows#flex) completion window exclusively.

| Model | Model ID | [  Image  ](https://docs.sailresearch.com/images) | [  LoRA  ](https://docs.sailresearch.com/loras) | Reasoning |
| --- | --- | --- | --- | --- |
| Qwen3.6 35B A3B  Qwen  Details  Context262K  Params35B; 3B active (MoE)  Popular for  codingagenticvisionmultilingual | `Qwen/Qwen3.6-35B-A3B`  Reference  [  View checkpoint  ](https://huggingface.co/Qwen/Qwen3.6-35B-A3B "Qwen/Qwen3.6-35B-A3B") |  |  |  |

## Notes

- If we offer multiple quantizations of a model, we list them as separate model IDs.
- Use [`GET /v1/models`](https://docs.sailresearch.com/api-reference/models-api/list-supported-models) to confirm runtime availability for your API key.
- For per-model rates by completion window, see [Pricing](https://docs.sailresearch.com/pricing).