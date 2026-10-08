---
title: Integrate with Codex | DeepSeek API Docs
source: https://api-docs.deepseek.com/quick_start/agent_integrations/codex
author:
  - "[[DeepSeek AI]]"
published:
created: 2026-10-08
description: Codex is an AI coding assistant from OpenAI. It talks to models via the Responses API, which the DeepSeek API natively supports.
tags:
  - clippings
---
## Integrate with Codex

Codex is an AI coding assistant from OpenAI. It talks to models via the [Responses API](https://api-docs.deepseek.com/guides/responses_api), which the DeepSeek API natively supports.

All Codex clients — Codex CLI, the ChatGPT desktop app, and the Codex IDE extension for VS Code — share the same configuration file. Configure it once as described below, and DeepSeek models will be available in all of them.

## 1\. Configure DeepSeek as the Model Provider

### Option 1: One-Click Setup Script (Recommended)

We provide a setup script that completes the whole configuration automatically. Before running it, make sure Codex CLI or the ChatGPT desktop app is installed and has been launched at least once (so that the `~/.codex` directory exists).

macOS / Linux users, run in the terminal:

```bash
bash <(curl -fsSL https://cdn.deepseek.com/api-docs/codex-deepseek-setup-en.sh)
```

Windows users, run in PowerShell:

```powershell
irm https://cdn.deepseek.com/api-docs/codex-deepseek-setup-en.ps1 | iex
```

After launching, pick an action from the menu: option 1 configures Codex to use the `deepseek-flash` model, which also accepts [image input](https://api-docs.deepseek.com/guides/vision); option 2 configures it to use `deepseek-v4-pro`; option 9 restores the default Codex configuration, removing the DeepSeek-related settings. On first run, the script asks for your API Key (starting with `sk-`; get one from the [DeepSeek Platform](https://platform.deepseek.com/api_keys)).

The script performs the following steps:

1. **Back up your existing configuration**: `~/.codex/config.toml` is backed up to `~/.codex/backup-deepseek/`, so you can restore it at any time.
2. **Write the model catalog `~/.codex/models.json`**: this declares the metadata of DeepSeek models to Codex (context window size, supported reasoning effort levels, tool call formats, etc.), so that Codex can use DeepSeek models just like its built-in models.
3. **Modify `~/.codex/config.toml`**: only the necessary fields are rewritten (see the [field reference](#configtoml-field-reference) below), a `[model_providers.deepseek]` section is added, and `enabled-reasoning-efforts` is written into the `[desktop]` section (other settings in an existing `[desktop]` section are kept); your existing settings such as MCP servers and project trust levels are all preserved. If any existing fields conflict with the DeepSeek configuration, the script removes them and prints the reason for each removal.
4. **Validate**: the script validates the syntax of `config.toml` / `models.json` before writing; if validation fails, it aborts without modifying any file.

Run the script again at any time to rewrite the configuration (menu option 1 or 2), or to restore it to its pre-installation state (menu option 9). Re-running menu option 1 or 2 also adds any settings introduced by newer versions of the script (such as `show_raw_agent_reasoning` and the reasoning effort levels), leaving the rest of your configuration untouched. If an older version of the script had installed the `deepseek-v4-flash` / `deepseek-v4-flash-vision-exp` entries, re-running the script removes them and leaves only `deepseek-flash` and `deepseek-v4-pro`.

### Option 2: Edit the Configuration File Manually

First, create the model catalog file `~/.codex/models.json`, which declares the metadata of the DeepSeek models to Codex. Its content is as follows (identical to what the setup script writes, containing `deepseek-flash` and `deepseek-v4-pro`). The `input_modalities` of `deepseek-flash` includes `image`, which is what tells Codex the model accepts images:

> [!-info] -info
> Click to expand the full content of models.json

Then, edit the Codex configuration file `~/.codex/config.toml` (create it if it does not exist), and add the following content. Set `experimental_bearer_token` to your API Key (get one from the [DeepSeek Platform](https://platform.deepseek.com/api_keys)):

```toml
model = "deepseek-flash"
model_provider = "deepseek"
preferred_auth_method = "apikey"
forced_login_method = "api"
model_reasoning_effort = "high"
web_search = "disabled"
show_raw_agent_reasoning = true
model_catalog_json = "~/.codex/models.json"

[model_providers.deepseek]
name = "deepseek"
base_url = "https://api.deepseek.com/"
wire_api = "responses"
experimental_bearer_token = "<your DeepSeek API Key>"

[desktop]
enabled-reasoning-efforts = ["low", "medium", "high", "xhigh", "ultra", "max"]
```

If `config.toml` already has a `[desktop]` section, add `enabled-reasoning-efforts` to that section instead of creating a second `[desktop]` — a duplicate section makes the file invalid.

### config.toml Field Reference

| Field | Description |
| --- | --- |
| `model` | The default model to use |
| `model_provider` | The model provider to use, matching the id of the `[model_providers.<id>]` section below |
| `preferred_auth_method`, `forced_login_method` | Authenticate with an API Key, skipping the ChatGPT account login |
| `model_reasoning_effort` | Reasoning effort. Higher values make the model think more deeply, producing better answers at the cost of longer response time |
| `web_search` | Built-in web search, disabled for the DeepSeek models |
| `show_raw_agent_reasoning` | Show the model's raw reasoning (thinking) content. Only takes effect in Codex CLI: press `Ctrl + T` to view the thinking process |
| `model_catalog_json` | Path to the custom model catalog file (`models.json`), from which Codex reads model metadata |
| `name` in `[model_providers.deepseek]` | Display name of the model provider |
| `base_url` in `[model_providers.deepseek]` | Endpoint of the DeepSeek API |
| `wire_api` in `[model_providers.deepseek]` | The protocol used to communicate with the model; `"responses"` means the [Responses API](https://api-docs.deepseek.com/guides/responses_api) |
| `experimental_bearer_token` in `[model_providers.deepseek]` | Your API Key, stored directly in the configuration file |
| `enabled-reasoning-efforts` in `[desktop]` | Reasoning effort levels available in the ChatGPT desktop app |

## 2\. Get Started

Once configured, Codex CLI, the ChatGPT desktop app, and the Codex IDE extension for VS Code all read the same configuration file — no per-client configuration is needed:

- **Codex CLI**: enter your project directory and run the `codex` command. If the startup banner shows `model: deepseek-flash`, the configuration is in effect.
	```markdown
	cd /path/to/my-project
	codex
	```
- **ChatGPT desktop app**: the model picker showing "Custom" or the selected model name (e.g. "DeepSeek-Flash") both mean the configuration is in effect — which one appears depends on your ChatGPT version. When the model name is shown, you can switch models directly in the app; when "Custom" is shown, the model actually in use is `deepseek-flash`.
- **Codex IDE extension for VS Code**: shares the same configuration as Codex CLI; simply install the extension and start using it.

> [!-secondary] -secondary
> Session history after switching providers
> 
> If your previous sessions seem to be missing after switching to DeepSeek, don't worry — nothing is deleted. Codex stores session history in separate groups by login method: sessions created with an official ChatGPT subscription and sessions created with a third-party API (such as DeepSeek) are kept apart, and only the group matching the current configuration is shown. Restoring the previous configuration (e.g. via menu option 9 of the setup script) brings the earlier sessions back, while the DeepSeek sessions become hidden in turn. Restart the ChatGPT client after switching for the change to take effect.