---
title: "cerebras Structured Outputs"
source: "https://inference-docs.cerebras.ai/capabilities/structured-outputs"
author:
published:
created: 2026-10-01
description: "Generate structured data with the Cerebras Inference API."
tags:
  - "clippings"
---
[**Get a free API key to get started.**](https://cloud.cerebras.ai/?utm_source=inferencedocs)

Structured Outputs constrains model responses to a JSON schema so applications can process generated data reliably. Key benefits include:

- **Consistent fields**: Responses follow the fields defined in your schema.
- **Type safety**: Values use the data types defined in your schema.
- **Simpler parsing and integration**: Applications can consume responses without additional format conversion.

| Model | Text | JSON object | JSON Schema | `strict: true` | Availability |
| --- | --- | --- | --- | --- | --- |
| [`qwen-3.8-27b`](https://inference-docs.cerebras.ai/models/qwen-3.8-27b) | Yes | Yes | Yes | Yes | Shared Inference |
| `kimi-k2.7-code` | Yes | Yes | Yes | Yes | Customer trials only |
| [`gpt-oss-120b`](https://inference-docs.cerebras.ai/models/openai-oss) | Yes | Yes | Yes | Yes | Shared Inference |
| [`gemma-4-31b`](https://inference-docs.cerebras.ai/dedicated/overview#supported-models) | Yes | Yes | Yes | Yes | Dedicated Inference |

The strict-mode rules below apply to `response_format.json_schema.strict: true` and `tools[].function.strict: true`. They do not apply to `strict: false` or legacy `json_object` mode.

When using structured outputs with `kimi-k2.7-code`, use parsed reasoning. `reasoning_format: "raw"` is incompatible with `json_object` and `json_schema` response formats.

## Tutorial: Structured Outputs using Cerebras Inference

The following steps define a movie-recommendation schema and use the Cerebras Cloud SDK to return a response that conforms to it.

## Understanding strict mode

For schemas that use the supported JSON Schema subset, strict mode guarantees that generated output conforms to the schema. Set `strict` to `true` to enable constrained decoding at the token level.

### Why use strict mode

Without strict mode, a response can contain:

- Malformed JSON that fails to parse
- Missing required fields
- Incorrect data types, such as `"16"` instead of `16`
- Fields that are not defined in the schema

Strict mode provides:

- Valid JSON
- Fields that conform to the schema
- Correct data types for properties
- Fewer retries caused by schema violations

### Enable strict mode

Set `strict` to `true` in your `response_format` configuration:

```python
response_format={
    "type": "json_schema",
    "json_schema": {
        "name": "my_schema",
        "strict": True,  # Enable constrained decoding
        "schema": your_schema
    }
}
```

### Schema requirements for strict mode

When using strict mode, you must set `additionalProperties: false`. This is required for every object in your schema.

### Limitations in strict mode

When strict mode is enabled, your schema must conform to specific requirements. See the [Supported Schemas](#supported-schemas) section for detailed information on constraints, limits, and unsupported features.

## Schema references and definitions

Use `$ref` with `$defs` to define reusable components within a JSON schema. Reusable definitions reduce repetition and make schemas easier to maintain.

```python
schema_with_defs = {
    "type": "object",
    "properties": {
        "title": {"type": "string"},
        "director": {"$ref": "#/$defs/person"},
        "year": {"type": "integer"},
        "lead_actor": {"$ref": "#/$defs/person"},
        "studio": {"$ref": "#/$defs/studio"}
    },
    "required": ["title", "director", "year"],
    "additionalProperties": False,
    "$defs": {
        "person": {
            "type": "object",
            "properties": {
                "name": {"type": "string"},
                "age": {"type": "integer"}
            },
            "required": ["name"],
            "additionalProperties": False
        },
        "studio": {
            "type": "object",
            "properties": {
                "name": {"type": "string"},
                "founded": {"type": "integer"},
                "headquarters": {"type": "string"}
            },
            "required": ["name"],
            "additionalProperties": False
        }
    }
}
```

## Supported schemas

Structured Outputs supports a subset of [JSON Schema](https://json-schema.org/docs). The following sections describe its supported types, properties, and constraints.

### Supported types

The following types are supported for Structured Outputs:

| Type | Description |
| --- | --- |
| `string` | Text values |
| `number` | Numeric values (floating point) |
| `integer` | Whole number values |
| `boolean` | True/false values |
| `object` | Nested objects with properties |
| `array` | Lists of items |
| `enum` | Constrained set of allowed values |
| `null` | Null values |
| `anyOf` | Union types |

### Schema constraints

When using strict mode, the following constraints apply:

| Constraint | Limit |
| --- | --- |
| Maximum counted schema text | 5,000 characters across property names, definition names, and string values used by `enum` and `const`. Descriptions are excluded. |
| Maximum nesting depth | 10 levels |
| Maximum object properties | 500 |
| Maximum total enum values | 500 across all enum properties |
| Enum string budget | 7,500 characters for a single enum when it contains more than 250 values |

### Required schema structure

All schemas must follow these rules:

- **Root must be an object**: The top-level schema must have `"type": "object"`.
- **Root must define properties**: Include a `properties` object at the root.
- **Root unions are not supported**: The root cannot be an array, scalar, or `anyOf` union.
- **No additional properties**: You must set `"additionalProperties": false` for every object in your schema.
- **Arrays need an item schema**: Every array must define `items` or use `prefixItems` with `items: false`.

These requirements are enforced by API version 2. Non-conforming strict schemas return a validation error. See [API Versions](https://inference-docs.cerebras.ai/api-reference/versions).

### Supported features

Your schema can include the following JSON Schema features:

- **Nested structures**: Define complex objects with nested properties.
- **Required fields**: Specify which fields must be present.
- **Optional fields**: Properties may be omitted from `required`.
- **Enums (value constraints)**: Use the `enum` keyword to whitelist the exact literals a field may take. See `rating` in the example below.
- **Constants**: Use `const` with primitive string, number, integer, boolean, or null values.
- **Non-root unions**: Use `anyOf` below the root object.
- **Schema references**: Use local, nonrecursive `$ref` values with `$defs` to define reusable schema components within your schema.
- **Tuple validation**: `items: false` is supported when used with `prefixItems` for tuple-like arrays.
- **Number constraints**: Use `minimum`, `maximum`, `exclusiveMinimum`, `exclusiveMaximum`, and `multipleOf` to constrain `number` and `integer` values.
- **Annotations**: `description`, `title`, `$schema`, and `default` are accepted but are not enforced by constrained decoding.

### Unsupported features

The following JSON Schema features are **not** supported in [strict mode](https://inference-docs.cerebras.ai/capabilities/structured-outputs#understanding-strict-mode):

| Feature | Notes |
| --- | --- |
| Recursive schemas | Self-referencing schemas are not supported |
| External `$ref` | References to external URLs are blocked for security |
| `$anchor` keyword | Use relative paths within definitions instead |
| Missing or boolean `items` | Arrays must define an item schema. `items: true` is not supported. `items: false` is supported only with `prefixItems`. |
| Array-form `items` | Use `prefixItems` for tuple validation instead |
| Composition keywords | `oneOf`, `allOf`, and `not` are not supported |
| OpenAPI nullable syntax | `nullable: true` is not supported. Represent nullability with a JSON Schema union where supported. |
| Conditional and dependent schemas | `if`, `then`, `else`, `dependentRequired`, and `dependentSchemas` are not supported |
| Dynamic object-key schemas | `patternProperties` and `unevaluatedProperties` are not supported |
| String `pattern` | Regular expression constraints on strings are not supported |
| String `format` | Format validation, such as `email`, `date-time`, and `uuid`, is not supported |
| Array constraints | `minItems`, `maxItems` are not supported |

Unlisted JSON Schema keywords should be treated as unsupported unless the selected model’s documentation states otherwise. String-length support is model-dependent. In particular, strict tool schemas for `qwen-3.8-27b` do not support `minLength` or `maxLength`.

Do not combine `tools` and `response_format` unless the selected model’s contract explicitly documents and validates the combination. For portable workflows, call tools first and format the result in a separate structured-output request.

### Example: Complex schema

The following example defines a schema with nested objects and arrays:

```python
detailed_schema = {
    "type": "object",
    "properties": {
        "title": {"type": "string"},
        "director": {"type": "string"},
        "year": {"type": "integer"},
        "genres": {
            "type": "array",
            "items": {"type": "string"}
        },
        "rating": {
            "type": "string",
            "enum": ["G", "PG", "PG‑13", "R"]
        },
        "cast": {
            "type": "array",
            "items": {
                "type": "object",
                "properties": {
                    "name": {"type": "string"},
                    "role": {"type": "string"}
                },
                "required": ["name"],
                "additionalProperties": False
            }
        }
    },
    "required": ["title", "director", "year", "genres"],
    "additionalProperties": False
}
```

The API can return a response such as:

```json
{
  "title": "Jurassic Park",
  "director": "Steven Spielberg",
  "year": 1993,
  "genres": ["Science Fiction", "Adventure", "Thriller"],
  "cast": [
    {"name": "Sam Neill", "role": "Dr. Alan Grant"},
    {"name": "Laura Dern", "role": "Dr. Ellie Sattler"},
    {"name": "Jeff Goldblum", "role": "Dr. Ian Malcolm"}
  ]
}
```

### Key ordering

The keys in the generated JSON output will appear in the same order as they are defined in your schema.

## Working with Pydantic and Zod

You can define a schema with Pydantic for Python or Zod for JavaScript instead of writing JSON Schema manually. Pydantic’s `model_json_schema` and Zod’s `zodToJsonSchema` methods generate JSON Schema for use in an API request.

```python
from pydantic import BaseModel
import json

# Define your schema using Pydantic
class Movie(BaseModel):
    title: str
    director: str 
    year: int 

# Convert the Pydantic model to a JSON schema
movie_schema = Movie.model_json_schema()

# Print the JSON schema to verify it
print(json.dumps(movie_schema, indent=2))
```

```javascript
import { z } from 'zod';
import { zodToJsonSchema } from 'zod-to-json-schema';

// Define your schema using Zod
const MovieSchema = z.object({
  title: z.string(),
  director: z.string(),
  year: z.number().int()
});

// Convert the Zod schema to a JSON schema
const movieJsonSchema = zodToJsonSchema(MovieSchema, { name: 'movie_schema' });

// Print the JSON schema to verify it
console.log(JSON.stringify(movieJsonSchema, null, 2));
```

## JSON mode

JSON mode generates valid JSON without enforcing a specific schema. The model chooses which fields to include based on the prompt.

We recommend using structured outputs with `strict` set to `true` instead of JSON mode whenever possible. Structured outputs guarantee schema adherence, while JSON mode only ensures valid JSON without enforcing a specific structure.

To use JSON mode, set the `response_format` parameter to `json_object` and include instructions in your message asking the model to respond in JSON format:

```python
completion = client.chat.completions.create(
    model="qwen-3.8-27b",
    messages=[
      {"role": "system", "content": "You are a helpful assistant that generates movie recommendations. Respond with JSON."},
      {"role": "user", "content": "Suggest a sci-fi movie from the 1990s"}
    ],
    response_format={"type": "json_object"}
)
```

```javascript
async function main() {
  const jsonModeCompletion = await client.chat.completions.create({
    model: 'qwen-3.8-27b',
    messages: [
      { role: 'system', content: 'You are a helpful assistant that generates movie recommendations. Respond with JSON.' },
      { role: 'user', content: 'Suggest a sci-fi movie from the 1990s' }
    ],
    response_format: {
      type: 'json_object'
    }
  });
}
```

### Structured Outputs vs. JSON mode

The following table compares Structured Outputs and JSON mode:

| Feature | Structured Outputs | JSON Mode |
| --- | --- | --- |
| Outputs valid JSON | Yes | Yes |
| Enforces schema | Yes (when `strict: true`) | No |
| Constrained decoding | Yes (when `strict: true`) | No |
| Configuration | `response_format: { type: "json_schema", json_schema: { "strict": true, "schema": ... } }` | `response_format: { type: "json_object" }` |

Do not combine `tools` and `response_format` unless the selected model’s documentation explicitly supports and validates the combination.

## Conclusion

Learn how to combine structured responses with other Cerebras capabilities:

- [Tool Calling](https://inference-docs.cerebras.ai/capabilities/tool-use): Connect models to external functions and data.
- [Streaming](https://inference-docs.cerebras.ai/capabilities/streaming): Process response chunks as they are generated.
- [CePO](https://inference-docs.cerebras.ai/capabilities/cepo): Improve reasoning with test-time compute.