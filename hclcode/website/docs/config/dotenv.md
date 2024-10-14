---
parent: Configuration
nav_order: 900
description: Using a .env file to store LLM API keys for hclcode.
---

# Config with .env

You can use a `.env` file to store API keys and other settings for the
models you use with hclcode.
You can also set many general hclcode options
in the `.env` file.

hclcode will look for a `.env` file in these locations:

- Your home directory.
- The root of your git repo.
- The current directory.
- As specified with the `--env-file <filename>` parameter.

If the files above exist, they will be loaded in that order. Files loaded last will take priority.

## Storing LLM keys

{% include special-keys.md %}

## Sample .env file

Below is a sample `.env` file, which you
can also
[download from GitHub](https://github.com/hclcode-AI/hclcode/blob/main/hclcode/website/assets/sample.env).

<!--[[[cog
from hclcode.args import get_sample_dotenv
from pathlib import Path
text=get_sample_dotenv()
Path("hclcode/website/assets/sample.env").write_text(text)
cog.outl("```")
cog.out(text)
cog.outl("```")
]]]-->
```
##########################################################
# Sample hclcode .env file.
# Place at the root of your git repo.
# Or use `hclcode --env <fname>` to specify.
##########################################################

#################
# LLM parameters:
#
# Include xxx_API_KEY parameters and other params needed for your LLMs.
# See https://hclcode.chat/docs/llms.html for details.

## OpenAI
#OPENAI_API_KEY=

## Anthropic
#ANTHROPIC_API_KEY=

##...

#######
# Main:

## Specify the OpenAI API key
#OPENAI_API_KEY=

## Specify the Anthropic API key
#ANTHROPIC_API_KEY=

## Specify the model to use for the main chat
#hclcode_MODEL=

## Use claude-3-opus-20240229 model for the main chat
#hclcode_OPUS=

## Use claude-3-5-sonnet-20240620 model for the main chat
#hclcode_SONNET=

## Use gpt-4-0613 model for the main chat
#hclcode_4=

## Use gpt-4o-2024-08-06 model for the main chat
#hclcode_4O=

## Use gpt-4o-mini model for the main chat
#hclcode_MINI=

## Use gpt-4-1106-preview model for the main chat
#hclcode_4_TURBO=

## Use gpt-3.5-turbo model for the main chat
#hclcode_35TURBO=

## Use deepseek/deepseek-coder model for the main chat
#hclcode_DEEPSEEK=

## Use o1-mini model for the main chat
#hclcode_O1_MINI=

## Use o1-preview model for the main chat
#hclcode_O1_PREVIEW=

#################
# Model Settings:

## List known models which match the (partial) MODEL name
#hclcode_LIST_MODELS=

## Specify the api base url
#OPENAI_API_BASE=

## Specify the api_type
#OPENAI_API_TYPE=

## Specify the api_version
#OPENAI_API_VERSION=

## Specify the deployment_id
#OPENAI_API_DEPLOYMENT_ID=

## Specify the OpenAI organization ID
#OPENAI_ORGANIZATION_ID=

## Specify a file with hclcode model settings for unknown models
#hclcode_MODEL_SETTINGS_FILE=.hclcode.model.settings.yml

## Specify a file with context window and costs for unknown models
#hclcode_MODEL_METADATA_FILE=.hclcode.model.metadata.json

## Verify the SSL cert when connecting to models (default: True)
#hclcode_VERIFY_SSL=true

## Specify what edit format the LLM should use (default depends on model)
#hclcode_EDIT_FORMAT=

## Use architect edit format for the main chat
#hclcode_ARCHITECT=

## Specify the model to use for commit messages and chat history summarization (default depends on --model)
#hclcode_WEAK_MODEL=

## Specify the model to use for editor tasks (default depends on --model)
#hclcode_EDITOR_MODEL=

## Specify the edit format for the editor model (default: depends on editor model)
#hclcode_EDITOR_EDIT_FORMAT=

## Only work with models that have meta-data available (default: True)
#hclcode_SHOW_MODEL_WARNINGS=true

## Soft limit on tokens for chat history, after which summarization begins. If unspecified, defaults to the model's max_chat_history_tokens.
#hclcode_MAX_CHAT_HISTORY_TOKENS=

## Specify the .env file to load (default: .env in git root)
#hclcode_ENV_FILE=.env

#################
# Cache Settings:

## Enable caching of prompts (default: False)
#hclcode_CACHE_PROMPTS=false

## Number of times to ping at 5min intervals to keep prompt cache warm (default: 0)
#hclcode_CACHE_KEEPALIVE_PINGS=false

###################
# Repomap Settings:

## Suggested number of tokens to use for repo map, use 0 to disable (default: 1024)
#hclcode_MAP_TOKENS=

## Control how often the repo map is refreshed. Options: auto, always, files, manual (default: auto)
#hclcode_MAP_REFRESH=auto

## Multiplier for map tokens when no files are specified (default: 2)
#hclcode_MAP_MULTIPLIER_NO_FILES=true

################
# History Files:

## Specify the chat input history file (default: .hclcode.input.history)
#hclcode_INPUT_HISTORY_FILE=.hclcode.input.history

## Specify the chat history file (default: .hclcode.chat.history.md)
#hclcode_CHAT_HISTORY_FILE=.hclcode.chat.history.md

## Restore the previous chat history messages (default: False)
#hclcode_RESTORE_CHAT_HISTORY=false

## Log the conversation with the LLM to this file (for example, .hclcode.llm.history)
#hclcode_LLM_HISTORY_FILE=

##################
# Output Settings:

## Use colors suitable for a dark terminal background (default: False)
#hclcode_DARK_MODE=false

## Use colors suitable for a light terminal background (default: False)
#hclcode_LIGHT_MODE=false

## Enable/disable pretty, colorized output (default: True)
#hclcode_PRETTY=true

## Enable/disable streaming responses (default: True)
#hclcode_STREAM=true

## Set the color for user input (default: #00cc00)
#hclcode_USER_INPUT_COLOR=#00cc00

## Set the color for tool output (default: None)
#hclcode_TOOL_OUTPUT_COLOR=

## Set the color for tool error messages (default: #FF2222)
#hclcode_TOOL_ERROR_COLOR=#FF2222

## Set the color for tool warning messages (default: #FFA500)
#hclcode_TOOL_WARNING_COLOR=#FFA500

## Set the color for assistant output (default: #0088ff)
#hclcode_ASSISTANT_OUTPUT_COLOR=#0088ff

## Set the color for the completion menu (default: terminal's default text color)
#hclcode_COMPLETION_MENU_COLOR=

## Set the background color for the completion menu (default: terminal's default background color)
#hclcode_COMPLETION_MENU_BG_COLOR=

## Set the color for the current item in the completion menu (default: terminal's default background color)
#hclcode_COMPLETION_MENU_CURRENT_COLOR=

## Set the background color for the current item in the completion menu (default: terminal's default text color)
#hclcode_COMPLETION_MENU_CURRENT_BG_COLOR=

## Set the markdown code theme (default: default, other options include monokai, solarized-dark, solarized-light)
#hclcode_CODE_THEME=default

## Show diffs when committing changes (default: False)
#hclcode_SHOW_DIFFS=false

###############
# Git Settings:

## Enable/disable looking for a git repo (default: True)
#hclcode_GIT=true

## Enable/disable adding .hclcode* to .gitignore (default: True)
#hclcode_GITIGNORE=true

## Specify the hclcode ignore file (default: .hclcodeignore in git root)
#hclcode_hclcodeIGNORE=.hclcodeignore

## Only consider files in the current subtree of the git repository
#hclcode_SUBTREE_ONLY=false

## Enable/disable auto commit of LLM changes (default: True)
#hclcode_AUTO_COMMITS=true

## Enable/disable commits when repo is found dirty (default: True)
#hclcode_DIRTY_COMMITS=true

## Attribute hclcode code changes in the git author name (default: True)
#hclcode_ATTRIBUTE_AUTHOR=true

## Attribute hclcode commits in the git committer name (default: True)
#hclcode_ATTRIBUTE_COMMITTER=true

## Prefix commit messages with 'hclcode: ' if hclcode authored the changes (default: False)
#hclcode_ATTRIBUTE_COMMIT_MESSAGE_AUTHOR=false

## Prefix all commit messages with 'hclcode: ' (default: False)
#hclcode_ATTRIBUTE_COMMIT_MESSAGE_COMMITTER=false

## Commit all pending changes with a suitable commit message, then exit
#hclcode_COMMIT=false

## Specify a custom prompt for generating commit messages
#hclcode_COMMIT_PROMPT=

## Perform a dry run without modifying files (default: False)
#hclcode_DRY_RUN=false

## Skip the sanity check for the git repository (default: False)
#hclcode_SKIP_SANITY_CHECK_REPO=false

########################
# Fixing and committing:

## Lint and fix provided files, or dirty files if none provided
#hclcode_LINT=false

## Specify lint commands to run for different languages, eg: "python: flake8 --select=..." (can be used multiple times)
#hclcode_LINT_CMD=

## Enable/disable automatic linting after changes (default: True)
#hclcode_AUTO_LINT=true

## Specify command to run tests
#hclcode_TEST_CMD=

## Enable/disable automatic testing after changes (default: False)
#hclcode_AUTO_TEST=false

## Run tests and fix problems found
#hclcode_TEST=false

#################
# Other Settings:

## specify a file to edit (can be used multiple times)
#hclcode_FILE=

## specify a read-only file (can be used multiple times)
#hclcode_READ=

## Use VI editing mode in the terminal (default: False)
#hclcode_VIM=false

## Specify the language to use in the chat (default: None, uses system settings)
#hclcode_CHAT_LANGUAGE=

## Check for updates and return status in the exit code
#hclcode_JUST_CHECK_UPDATE=false

## Check for new hclcode versions on launch
#hclcode_CHECK_UPDATE=true

## Install the latest version from the main branch
#hclcode_INSTALL_MAIN_BRANCH=false

## Upgrade hclcode to the latest version from PyPI
#hclcode_UPGRADE=false

## Apply the changes from the given file instead of running the chat (debug)
#hclcode_APPLY=

## Always say yes to every confirmation
#hclcode_YES_ALWAYS=

## Enable verbose output
#hclcode_VERBOSE=false

## Print the repo map and exit (debug)
#hclcode_SHOW_REPO_MAP=false

## Print the system prompts and exit (debug)
#hclcode_SHOW_PROMPTS=false

## Do all startup activities then exit before accepting user input (debug)
#hclcode_EXIT=false

## Specify a single message to send the LLM, process reply then exit (disables chat mode)
#hclcode_MESSAGE=

## Specify a file containing the message to send the LLM, process reply, then exit (disables chat mode)
#hclcode_MESSAGE_FILE=

## Specify the encoding for input and output (default: utf-8)
#hclcode_ENCODING=utf-8

## Run hclcode in your browser
#hclcode_GUI=false

## Enable/disable suggesting shell commands (default: True)
#hclcode_SUGGEST_SHELL_COMMANDS=true

#################
# Voice Settings:

## Audio format for voice recording (default: wav). webm and mp3 require ffmpeg
#hclcode_VOICE_FORMAT=wav

## Specify the language for voice using ISO 639-1 code (default: auto)
#hclcode_VOICE_LANGUAGE=en
```
<!--[[[end]]]-->


