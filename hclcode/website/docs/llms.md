---
title: Connecting to LLMs
nav_order: 40
has_children: true
description: hclcode can connect to most LLMs for AI pair programming.
---

# hclcode can connect to most LLMs
{: .no_toc }

[![connecting to many LLMs](/assets/llms.jpg)](https://hclcode.chat/assets/llms.jpg)


## Best models
{: .no_toc }

hclcode works best with these models, which are skilled at editing code:

- [GPT-4o](/docs/llms/openai.html)
- [Claude 3.5 Sonnet](/docs/llms/anthropic.html)
- [Claude 3 Opus](/docs/llms/anthropic.html)
- [DeepSeek Coder V2](/docs/llms/deepseek.html)


## Free models
{: .no_toc }

hclcode works with a number of **free** API providers:

- Google's [Gemini 1.5 Pro](/docs/llms/gemini.html) works with hclcode, with
code editing capabilities similar to GPT-3.5.
- You can use [Llama 3 70B on Groq](/docs/llms/groq.html) which is comparable to GPT-3.5 in code editing performance.
- Cohere also offers free API access to their [Command-R+ model](/docs/llms/cohere.html), which works with hclcode as a *very basic* coding assistant.

## Local models
{: .no_toc }

hclcode can work also with local models, for example using [Ollama](/docs/llms/ollama.html).
It can also access
local models that provide an
[Open AI compatible API](/docs/llms/openai-compat.html).

## Use a capable model
{: .no_toc }

Check
[hclcode's LLM leaderboards](https://hclcode.chat/docs/leaderboards/)
to see which models work best with hclcode.

Be aware that hclcode may not work well with less capable models.
If you see the model returning code, but hclcode isn't able to edit your files
and commit the changes...
this is usually because the model isn't capable of properly
returning "code edits".
Models weaker than GPT 3.5 may have problems working well with hclcode.

