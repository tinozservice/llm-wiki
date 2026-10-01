---
title: "cerebras Tool Calling"
source: "https://inference-docs.cerebras.ai/capabilities/tool-use"
author:
published:
created: 2026-10-01
description: "Learn how to connect models to external tools with tool calling."
tags:
  - "clippings"
---
Tool calling, also known as tool use or function calling, lets a model request functions that your application defines. Your application executes each requested function and returns the result to the model.

| Model | `tool_choice` | Strict mode | Parallel calls | Multi-turn calling | Availability |
| --- | --- | --- | --- | --- | --- |
| [`qwen-3.8-27b`](https://inference-docs.cerebras.ai/models/qwen-3.8-27b) | `none`, `auto`, `required`, named function | Yes | Yes | Yes | Shared Inference |
| `kimi-k2.7-code` | `none`, `auto`, `required`, named function | Yes | Yes | Yes | Customer trials only |
| [`gpt-oss-120b`](https://inference-docs.cerebras.ai/models/openai-oss) | `none`, `auto`, `required`, named function | Yes | Yes | Yes | Shared Inference |
| [`gemma-4-31b`](https://inference-docs.cerebras.ai/dedicated/overview#supported-models) | `none`, `auto`, `required`, named function | Yes | Yes | Yes | Dedicated Inference |

See [Strict mode for tool calling](#strict-mode-for-tool-calling) for model-specific schema requirements.

## How it works

1. **Define the tool**: Provide a name, description, and input parameters for each tool you want the model to access.
2. **Send the request**: The prompt is sent along with available tool definitions in your API call.
3. **Select a tool**: The model determines whether a tool can help answer the request. If so, it returns the tool name and arguments.
4. **Execute the tool**: The client application receives the model’s tool call request, executes the specified tool (such as calling an external API), and retrieves the result.
5. **Generate the final response**: Send the tool result to the model so it can continue the conversation.

## Basic tool calling

The example produces output similar to the following:

```text
Model executing function 'calculate' with arguments {"expression": "15 * 7"}
Calculation result sent to model: 105
Final model output: 15 * 7 = 105
```

## Strict mode for tool calling

For schemas that use the supported JSON Schema subset, strict mode guarantees that tool-call arguments conform to the schema.

### Why strict mode matters for tools

Without strict mode, tool calls can contain:

- Incorrect parameter types, such as `"2"` instead of `2`
- Missing required parameters
- Unexpected parameters
- Malformed argument JSON

Strict mode prevents these schema violations for supported schemas.

### Enabling strict mode

Set `strict` to `true` inside the `function` object of your tool definition:

Python

```python
tools = [
    {
        "type": "function",
        "function": {
            "name": "get_weather",
            "strict": True,  # Enable constrained decoding
            "description": "Get the current weather for a location",
            "parameters": {
                "type": "object",
                "properties": {
                    "location": {
                        "type": "string",
                        "description": "City and country, such as San Francisco, USA"
                    },
                    "unit": {
                        "type": "string",
                        "enum": ["celsius", "fahrenheit"]
                    }
                },
                "required": ["location", "unit"],
                "additionalProperties": False
            }
        }
    }
]
```

### Schema requirements

When using strict mode, you must set `additionalProperties: false`. This is required for every object in your schema.

For information about schema limitations that apply when using strict mode, see [Limitations in Strict Mode](https://inference-docs.cerebras.ai/capabilities/structured-outputs#limitations-in-strict-mode).

For `kimi-k2.7-code`, either set the same `strict` value on every function in the request or omit it from every function. For `qwen-3.8-27b`, do not use `pattern`, `minLength`, or `maxLength` in strict tool schemas.

### Strict mode with parallel tool calling

Strict mode works with parallel tool calling. When multiple tools are called simultaneously, each tool call’s arguments will conform to its respective schema:

Python

```python
response = client.chat.completions.create(
    model="qwen-3.8-27b",
    messages=messages,
    tools=tools,  # Each tool can have strict: true
    parallel_tool_calls=True,
)
```

## Multi-turn tool calling

Most real-world workflows require more than one tool invocation. Multi-turn tool calling lets a model call a tool, incorporate its output, and then, within the same conversation, decide whether it needs to call the tool (or another tool) again to finish the task.

1. Append each tool result to `messages` and ask the model to continue.
2. Let the model determine whether it needs another tool call.
3. Continue calling `client.chat.completions.create()` until the response does not contain `tool_calls`.

The following example extends the calculator example. Complete steps 1 through 3 in [Basic tool calling](#basic-tool-calling) before running it.

```python
messages = [
    {
        "role": "system",
        "content": (
            "You are a helpful assistant with a calculator tool. "
            "Use it whenever math is required."
        ),
    },
    {"role": "user", "content": "First, multiply 15 by 7. Then take that result, add 20, and divide the total by 2. What's the final number?"},
]

# Register every callable tool once
available_functions = {
    "calculate": calculate,
}

while True:
    resp = client.chat.completions.create(
        model="qwen-3.8-27b",
        messages=messages,
        tools=tools,
    )
    msg = resp.choices[0].message

    # If the assistant didn’t ask for a tool, we’re done
    if not msg.tool_calls:
        print("Assistant:", msg.content)
        break

    # Save the assistant turn exactly as returned
    messages.append(msg.model_dump())    

    # Run the requested tool
    call  = msg.tool_calls[0]
    fname = call.function.name

    if fname not in available_functions:
        raise ValueError(f"Unknown tool requested: {fname!r}")

    args_dict = json.loads(call.function.arguments)  # assumes JSON object
    output = available_functions[fname](**args_dict)

    # Feed the tool result back
    messages.append({
        "role": "tool",
        "tool_call_id": call.id,
        "content": json.dumps(output),
    })
```

## Parallel tool calling

Parallel tool calling lets a model request multiple independent tool calls in one response, which can reduce latency.

For example, if a user asks “Is Toronto warmer than Montreal?”, the model needs to check the weather in both cities. Rather than making two separate requests, parallel tool calling enables the model to request both operations at once, reducing latency and improving efficiency.

Use parallel tool calling when:

- A request requires multiple independent data points, such as weather in different cities.
- Tool calls do not depend on the results of other tool calls.

### Enable parallel tool calling

You can explicitly control this behavior using the `parallel_tool_calls` parameter:

```python
response = client.chat.completions.create(
    model="qwen-3.8-27b",
    messages=messages,
    tools=tools,
    parallel_tool_calls=True,  # Enable parallel calling (default)
)
```

To disable parallel tool calling and force sequential execution:

```python
response = client.chat.completions.create(
    model="qwen-3.8-27b",
    messages=messages,
    tools=tools,
    parallel_tool_calls=False,  # Disable parallel calling
)
```

### Example: Weather comparison

The following example requests weather data for two cities in parallel.