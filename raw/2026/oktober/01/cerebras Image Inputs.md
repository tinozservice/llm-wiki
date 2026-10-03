---
title: cerebras Image Inputs
source: https://inference-docs.cerebras.ai/capabilities/image-inputs
author:
  - "[[cerebras.ai]]"
published:
created: 2026-10-01
description: Pass images to vision-capable models.
tags:
  - clippings
---
This feature is in [Public Preview](https://inference-docs.cerebras.ai/support/preview-releases#public-preview).

Vision-capable models can process objects, diagrams, screenshots, and text within images alongside a text prompt. Send images through the [Chat Completions](https://inference-docs.cerebras.ai/api-reference/chat-completions) API as base64-encoded data URIs in the `messages` array. See [Limitations](#limitations) for known constraints.

Image inputs are available for [`qwen-3.8-27b`](https://inference-docs.cerebras.ai/models/qwen-3.8-27b) with Shared Inference. [`gemma-4-31b`](https://inference-docs.cerebras.ai/dedicated/overview#supported-models) and other image-capable models are available through Dedicated Inference. `kimi-k2.7-code` supports image inputs in customer trials but is not available with Shared Inference.

## Usage

To send an image, add an `image_url` object to the `content` array in a user message. The image must be base64-encoded and passed as a data URI.

Use the [encoder in the Token Usage section](#estimate-token-count) to convert your image to a base64 data URI. It also shows the estimated token count and encoded payload size.

- Single image
- Multiple images

```python
from cerebras.cloud.sdk import Cerebras
import os
import base64

client = Cerebras(api_key=os.environ.get("CEREBRAS_API_KEY"))

def encode_image(image_path):
    with open(image_path, "rb") as image_file:
        return base64.b64encode(image_file.read()).decode("utf-8")

base64_image = encode_image("screenshot.png")

response = client.chat.completions.create(
    model="qwen-3.8-27b",
    messages=[
        {
            "role": "user",
            "content": [
                {"type": "text", "text": "Describe this image in one concise sentence."},
                {
                    "type": "image_url",
                    "image_url": {
                        "url": f"data:image/png;base64,{base64_image}"
                    },
                },
            ],
        }
    ],
)

print(response.choices[0].message.content)
```

```javascript
import Cerebras from '@cerebras/cerebras_cloud_sdk';
import fs from 'fs';

const client = new Cerebras({
  apiKey: process.env['CEREBRAS_API_KEY'],
});

const base64Image = fs.readFileSync('screenshot.png').toString('base64');

const response = await client.chat.completions.create({
  model: 'qwen-3.8-27b',
  messages: [
    {
      role: 'user',
      content: [
        { type: 'text', text: 'Describe this image in one concise sentence.' },
        {
          type: 'image_url',
          image_url: {
            url: \`data:image/png;base64,${base64Image}\`,
          },
        },
      ],
    },
  ],
});

console.log(response.choices[0].message.content);
```

```shellscript
# Encode image to base64 (macOS/Linux)
BASE64_IMAGE=$(base64 -i screenshot.png)
# Windows PowerShell:
# $BASE64_IMAGE = [Convert]::ToBase64String([IO.File]::ReadAllBytes("screenshot.png"))
# If you run this example in PowerShell, use curl.exe and replace ${BASE64_IMAGE} with $BASE64_IMAGE.

curl https://api.cerebras.ai/v1/chat/completions \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer ${CEREBRAS_API_KEY}" \
  -d "{
    \"model\": \"qwen-3.8-27b\",
    \"messages\": [
      {
        \"role\": \"user\",
        \"content\": [
          {\"type\": \"text\", \"text\": \"Describe this image in one concise sentence.\"},
          {
            \"type\": \"image_url\",
            \"image_url\": {
              \"url\": \"data:image/png;base64,${BASE64_IMAGE}\"
            }
          }
        ]
      }
    ]
  }"
```

Free Trial accounts can include up to 2 images in a single request. Developer and Enterprise accounts using Shared Inference can include up to 10 images. Add each image as an additional `image_url` content part in the `content` array. The model considers all images together when generating its response. Each image counts toward your [token usage](#token-usage). Higher image limits may be available with [Dedicated Inference](https://inference-docs.cerebras.ai/dedicated) or explicit organization configurations.

```python
from cerebras.cloud.sdk import Cerebras
import os
import base64

client = Cerebras(api_key=os.environ.get("CEREBRAS_API_KEY"))

def encode_image(image_path):
    with open(image_path, "rb") as image_file:
        return base64.b64encode(image_file.read()).decode("utf-8")

base64_image_1 = encode_image("image1.jpeg")
base64_image_2 = encode_image("image2.png")

response = client.chat.completions.create(
    model="qwen-3.8-27b",
    messages=[
        {
            "role": "user",
            "content": [
                {"type": "text", "text": "Compare these two images."},
                {
                    "type": "image_url",
                    "image_url": {
                        "url": f"data:image/jpeg;base64,{base64_image_1}"
                    },
                },
                {
                    "type": "image_url",
                    "image_url": {
                        "url": f"data:image/png;base64,{base64_image_2}"
                    },
                },
            ],
        }
    ],
)

print(response.choices[0].message.content)
```

```javascript
import Cerebras from '@cerebras/cerebras_cloud_sdk';
import fs from 'fs';

const client = new Cerebras({
  apiKey: process.env['CEREBRAS_API_KEY'],
});

const base64Image1 = fs.readFileSync('image1.jpeg').toString('base64');
const base64Image2 = fs.readFileSync('image2.png').toString('base64');

const response = await client.chat.completions.create({
  model: 'qwen-3.8-27b',
  messages: [
    {
      role: 'user',
      content: [
        { type: 'text', text: 'Compare these two images.' },
        {
          type: 'image_url',
          image_url: {
            url: \`data:image/jpeg;base64,${base64Image1}\`,
          },
        },
        {
          type: 'image_url',
          image_url: {
            url: \`data:image/png;base64,${base64Image2}\`,
          },
        },
      ],
    },
  ],
});

console.log(response.choices[0].message.content);
```

```shellscript
# Encode images to base64 (macOS/Linux)
BASE64_IMAGE_1=$(base64 -i image1.jpeg)
BASE64_IMAGE_2=$(base64 -i image2.png)

curl https://api.cerebras.ai/v1/chat/completions \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer ${CEREBRAS_API_KEY}" \
  -d "{
    \"model\": \"qwen-3.8-27b\",
    \"messages\": [
      {
        \"role\": \"user\",
        \"content\": [
          {\"type\": \"text\", \"text\": \"Compare these two images.\"},
          {
            \"type\": \"image_url\",
            \"image_url\": {
              \"url\": \"data:image/jpeg;base64,${BASE64_IMAGE_1}\"
            }
          },
          {
            \"type\": \"image_url\",
            \"image_url\": {
              \"url\": \"data:image/png;base64,${BASE64_IMAGE_2}\"
            }
          }
        ]
      }
    ]
  }"
```

## Input requirements

| Requirement | Details |
| --- | --- |
| Supported formats | PNG (`.png`), JPEG (`.jpeg`, `.jpg`) |
| Encoding | Base64 data URI, such as `data:image/png;base64,...` |
| Message role | `user` messages |
| External image URLs | Not supported |
| `image_url.detail` | Not supported |
| Max payload size | `10 MiB` total request payload <sup>1</sup> |
| Max image dimensions | Width and height must each be `15,000` pixels or smaller |
| Max images per request | `2` for Free Trial; `10` for Developer and Enterprise accounts using Shared Inference <sup>1</sup> |
| Decompressed images | Images that require excessive decompressed memory return `413 Content Too Large` with error code `image_too_large` |

<sup>1</sup> These limits apply to Shared Inference during Public Preview. Higher image limits may be available with [Dedicated Inference](https://inference-docs.cerebras.ai/dedicated) or explicit organization configurations.

`qwen-3.8-27b` currently accepts image content only in `user` messages. Images in `tool` messages aren’t supported.

## Token usage

Image token usage depends on the selected model and its processed image dimensions, not the uploaded file size alone. The estimator below implements the current preprocessing behavior for the listed models and shows both processed resolution and estimated image tokens.

### Estimate token count

Select a model and upload an image below to copy its base64 data URI, check the encoded size, and view an estimate. The estimator defaults to `qwen-3.8-27b`.

Drop a PNG or JPEG here

### Model preprocessing

| Model | Processed grid | Resize behavior | Maximum image tokens |
| --- | --- | --- | --- |
| [`qwen-3.8-27b`](https://inference-docs.cerebras.ai/models/qwen-3.8-27b) | 32 × 32 pixels per image token | Preserves aspect ratio; upscales very small images to a minimum processed area; downscales large images to the configured maximum area | 2,304 |
| `kimi-k2.7-code` (customer trials) | 28 × 28 pixels per image token | Does not upscale; downscales to its patch budget; pads processed dimensions to multiples of 28 | 2,304 |
| [`gemma-4-31b`](https://inference-docs.cerebras.ai/dedicated/overview#supported-models) | 48 × 48 pixels per image token | Preserves aspect ratio and resizes to its configured image area | 280 |

For each model, estimate tokens from the processed dimensions:

```text
image_tokens = (processed_width / grid_width) × (processed_height / grid_height)
```

To validate image token usage, inspect `usage.image_tokens` in the API response. This field reports the total number of image tokens used by the request. `usage.prompt_tokens` includes text tokens, image tokens, and message-formatting tokens. The difference between image and text-only `prompt_tokens` can include message-formatting tokens and might not match `usage.image_tokens`.

Keep the following in mind:

- The estimator is an approximation based on the current model preprocessing configuration.
- Compressed file size does not directly determine token count. Processed image dimensions matter more than PNG or JPEG byte size.
- Image tokens are included in `usage.prompt_tokens` and are also reported in `usage.image_tokens`.
- Image tokens occupy part of the model context window, just like text prompt tokens.

## Limitations

- **Medical images**: Not suitable for interpreting specialized medical images such as CT scans or MRIs. Do not use for medical diagnosis or advice.
- **Small text**: May have difficulty reading small or low-resolution text. Enlarging text within the image before sending can improve results.
- **Rotated content**: May misinterpret text or images that are rotated or upside-down.
- **Graphs and charts**: May struggle to distinguish visual elements that differ only in color or line style, such as solid versus dashed lines.
- **Spatial reasoning**: Not reliable for tasks requiring precise spatial localization, such as identifying positions on a map or board game.
- **Object counting**: The model may give approximate counts for objects in images.
- **Image shape**: May perform less accurately on panoramic or fisheye images.
- **Preprocessing**: The model cannot access original filenames or metadata. Images may be resized before analysis. See [Token usage](#token-usage) for details.
- **Accuracy**: The model may generate inaccurate descriptions or captions in some scenarios. Verify outputs for high-stakes use cases.
- **CAPTCHAs**: CAPTCHA images are not supported.
- **Indirect prompt injection**: Text embedded in an image is included in the model’s prompt context alongside the user’s text. If an image contains adversarial instructions (for example, text that says “ignore all previous instructions”) and the user prompt asks the model to answer based on the image, the model may follow those embedded instructions. Treat image content from untrusted sources as untrusted input, and use a system prompt to constrain the model’s behavior when processing images you don’t control.
- **Untrusted output**: The model may transcribe or describe text from an image verbatim, including HTML, script tags, URLs, or control characters. The API returns this content unmodified. Treat it the same as any other untrusted input before rendering, logging, or executing it in your application.

## FAQs

Do I need to resend the image on later turns?

Yes. Cerebras Chat Completions is stateless. If a follow-up request depends on an earlier image, include that image-bearing turn in the conversation history you send with the new request. Continue to include that turn for as long as the model needs the visual context.

Can I generate images?

No, only image input is supported. The model returns text only and does not generate images.

Is prompt caching supported with image inputs?

Yes. Prompt caching can help with repeated images and repeated multimodal context within your organization. Prompt caches are never shared between organizations and remain ephemeral. See [Prompt Caching](https://inference-docs.cerebras.ai/capabilities/prompt-caching).

Do rate limits change with image support?

No. Image support uses the same rate limit framework as text. The same request and token limits still apply based on your organization and tier. For current details, see [Rate Limits](https://inference-docs.cerebras.ai/support/rate-limits).

Do you store image data?

Image inputs are processed as soon as they are received, and the original image payloads are not persisted. After preprocessing, image tokens and image embeddings may be cached ephemerally within your organization to support prompt caching.