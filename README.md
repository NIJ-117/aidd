
<!-- Edit README.md, not index.md -->

# hclcode is AI pair programming in your terminal

hclcode lets you pair program with LLMs,
to edit code in your local git repository.
Start a new project or work with an existing git repo.
hclcode works best with GPT-4o & Claude 3.5 Sonnet and can 
[connect to almost any LLM](https://hclcode.chat/docs/llms.html).

<!-- SCREENCAST START -->
<p align="center">
  <img
    src="https://hclcode.chat/assets/screencast.svg"
    alt="hclcode screencast"
  >
</p>
<!-- SCREENCAST END -->

<!-- VIDEO START
<p align="center">
  <video style="max-width: 100%; height: auto;" autoplay loop muted playsinline>
    <source src="/assets/shell-cmds-small.mp4" type="video/mp4">
    Your browser does not support the video tag.
  </video>
</p>
VIDEO END -->

<p align="center">
  <a href="https://discord.gg/Tv2uQnR88V">
    <img src="https://img.shields.io/badge/Join-Discord-blue.svg"/>
  </a>
  <a href="https://hclcode.chat/docs/install.html">
    <img src="https://img.shields.io/badge/Read-Docs-green.svg"/>
  </a>
</p>

## Getting started
<!--[[[cog
# We can't "include" here.
# Because this page is rendered by GitHub as the repo README
cog.out(open("hclcode/website/_includes/get-started.md").read())
]]]-->

You can get started quickly like this:

```
python -m pip install -U hclcode-chat

# Change directory into a git repo
cd /to/your/git/repo

# Work with Claude 3.5 Sonnet on your repo
export ANTHROPIC_API_KEY=your-key-goes-here
hclcode

# Work with GPT-4o on your repo
export OPENAI_API_KEY=your-key-goes-here
hclcode 
```
<!--[[[end]]]-->

See the
[installation instructions](https://hclcode.chat/docs/install.html)
and other
[documentation](https://hclcode.chat/docs/usage.html)
for more details.

## Features

- Run hclcode with the files you want to edit: `hclcode <file1> <file2> ...`
- Ask for changes:
  - Add new features or test cases.
  - Describe a bug.
  - Paste in an error message or or GitHub issue URL.
  - Refactor code.
  - Update docs.
- hclcode will edit your files to complete your request.
- hclcode [automatically git commits](https://hclcode.chat/docs/git.html) changes with a sensible commit message.
- hclcode works with [most popular languages](https://hclcode.chat/docs/languages.html): python, javascript, typescript, php, html, css, and more...
- hclcode works best with GPT-4o & Claude 3.5 Sonnet and can [connect to almost any LLM](https://hclcode.chat/docs/llms.html).
- hclcode can edit multiple files at once for complex requests.
- hclcode uses a [map of your entire git repo](https://hclcode.chat/docs/repomap.html), which helps it work well in larger codebases.
- Edit files in your editor while chatting with hclcode,
and it will always use the latest version.
Pair program with AI.
- [Add images to the chat](https://hclcode.chat/docs/usage/images-urls.html) (GPT-4o, Claude 3.5 Sonnet, etc).
- [Add URLs to the chat](https://hclcode.chat/docs/usage/images-urls.html) and hclcode will read their content.
- [Code with your voice](https://hclcode.chat/docs/usage/voice.html).


## Top tier performance

[hclcode has one of the top scores on SWE Bench](https://hclcode.chat/2024/06/02/main-swe-bench.html).
SWE Bench is a challenging software engineering benchmark where hclcode
solved *real* GitHub issues from popular open source
projects like django, scikitlearn, matplotlib, etc.

## More info

- [Documentation](https://hclcode.chat/)
- [Installation](https://hclcode.chat/docs/install.html)
- [Usage](https://hclcode.chat/docs/usage.html)
- [Tutorial videos](https://hclcode.chat/docs/usage/tutorials.html)
- [Connecting to LLMs](https://hclcode.chat/docs/llms.html)
- [Configuration](https://hclcode.chat/docs/config.html)
- [Troubleshooting](https://hclcode.chat/docs/troubleshooting.html)
- [LLM Leaderboards](https://hclcode.chat/docs/leaderboards/)
- [GitHub](https://github.com/hclcode-AI/hclcode)
- [Discord](https://discord.gg/Tv2uQnR88V)
- [Blog](https://hclcode.chat/blog/)


## Kind words from users

- *The best free open source AI coding assistant.* -- [IndyDevDan](https://youtu.be/YALpX8oOn78)
- *The best AI coding assistant so far.* -- [Matthew Berman](https://www.youtube.com/watch?v=df8afeb1FY8)
- *hclcode ... has easily quadrupled my coding productivity.* -- [SOLAR_FIELDS](https://news.ycombinator.com/item?id=36212100)
- *It's a cool workflow... hclcode's ergonomics are perfect for me.* -- [qup](https://news.ycombinator.com/item?id=38185326)
- *It's really like having your senior developer live right in your Git repo - truly amazing!* -- [rappster](https://github.com/hclcode-AI/hclcode/issues/124)
- *What an amazing tool. It's incredible.* -- [valyagolev](https://github.com/hclcode-AI/hclcode/issues/6#issue-1722897858)
- *hclcode is such an astounding thing!* -- [cgrothaus](https://github.com/hclcode-AI/hclcode/issues/82#issuecomment-1631876700)
- *It was WAY faster than I would be getting off the ground and making the first few working versions.* -- [Daniel Feldman](https://twitter.com/d_feldman/status/1662295077387923456)
- *THANK YOU for hclcode! It really feels like a glimpse into the future of coding.* -- [derwiki](https://news.ycombinator.com/item?id=38205643)
- *It's just amazing.  It is freeing me to do things I felt were out my comfort zone before.* -- [Dougie](https://discord.com/channels/1131200896827654144/1174002618058678323/1174084556257775656)
- *This project is stellar.* -- [funkytaco](https://github.com/hclcode-AI/hclcode/issues/112#issuecomment-1637429008)
- *Amazing project, definitely the best AI coding assistant I've used.* -- [joshuavial](https://github.com/hclcode-AI/hclcode/issues/84)
- *I absolutely love using hclcode ... It makes software development feel so much lighter as an experience.* -- [principalideal0](https://discord.com/channels/1131200896827654144/1133421607499595858/1229689636012691468)
- *I have been recovering from multiple shoulder surgeries ... and have used hclcode extensively. It has allowed me to continue productivity.* -- [codeninja](https://www.reddit.com/r/OpenAI/s/nmNwkHy1zG)
- *I am an hclcode addict. I'm getting so much more work done, but in less time.* -- [dandandan](https://discord.com/channels/1131200896827654144/1131200896827654149/1135913253483069470)
- *After wasting $100 on tokens trying to find something better, I'm back to hclcode. It blows everything else out of the water hands down, there's no competition whatsoever.* -- [SystemSculpt](https://discord.com/channels/1131200896827654144/1131200896827654149/1178736602797846548)
- *hclcode is amazing, coupled with Sonnet 3.5 it’s quite mind blowing.* -- [Josh Dingus](https://discord.com/channels/1131200896827654144/1133060684540813372/1262374225298198548)
- *Hands down, this is the best AI coding assistant tool so far.* -- [IndyDevDan](https://www.youtube.com/watch?v=MPYFPvxfGZs)
- *[hclcode] changed my daily coding workflows. It's mind-blowing how a single Python application can change your life.* -- [maledorak](https://discord.com/channels/1131200896827654144/1131200896827654149/1258453375620747264)
- *Best agent for actual dev work in existing codebases.* -- [Nick Dobos](https://twitter.com/NickADobos/status/1690408967963652097?s=20)
