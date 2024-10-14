#!/bin/bash

# exit when any command fails
set -e

if [ -z "$1" ]; then
  ARG=-r
else
  ARG=$1
fi

# README.md before index.md, because index.md uses cog to include README.md
cog $ARG \
    README.md \
    hclcode/website/index.md \
    hclcode/website/HISTORY.md \
    hclcode/website/docs/usage/commands.md \
    hclcode/website/docs/languages.md \
    hclcode/website/docs/config/dotenv.md \
    hclcode/website/docs/config/options.md \
    hclcode/website/docs/config/hclcode_conf.md \
    hclcode/website/docs/config/adv-model-settings.md \
    hclcode/website/docs/leaderboards/index.md \
    hclcode/website/docs/llms/other.md \
    hclcode/website/docs/more/infinite-output.md
