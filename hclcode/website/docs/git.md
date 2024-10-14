---
parent: More info
nav_order: 800
description: hclcode is tightly integrated with git.
---

# Git integration

hclcode works best with code that is part of a git repo.
hclcode is tightly integrated with git, which makes it easy to:

  - Use the `/undo` command to instantly undo any AI changes that you don't like.
  - Go back in the git history to review the changes that hclcode made to your code
  - Manage a series of hclcode's changes on a git branch

hclcode uses git in these ways:

- It asks to create a git repo if you launch it in a directory without one.
- Whenever hclcode edits a file, it commits those changes with a descriptive commit message. This makes it easy to undo or review hclcode's changes. 
- hclcode takes special care before editing files that already have uncommitted changes (dirty files). hclcode will first commit any preexisting changes with a descriptive commit message. 
This keeps your edits separate from hclcode's edits, and makes sure you never lose your work if hclcode makes an inappropriate change.

## In-chat commands

hclcode also allows you to use in-chat commands to `/diff` or `/undo` the last change.
To do more complex management of your git history, you cat use raw `git` commands,
either by using `/git` within the chat, or with standard git tools outside of hclcode.

## Disabling git integration

While it is not recommended, you can disable hclcode's use of git in a few ways:

  - `--no-auto-commits` will stop hclcode from git committing each of its changes.
  - `--no-dirty-commits` will stop hclcode from committing dirty files before applying its edits.
  - `--no-git` will completely stop hclcode from using git on your files. You should ensure you are keeping sensible backups of the files you are working with.

## Commit messages

By default, hclcode creates commit messages which follow
[Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/).

You can customize the
[commit prompt](https://github.com/hclcode-AI/hclcode/blob/main/hclcode/prompts.py#L5)
with the `--commit-prompt` option.
You can place that on the command line, or 
[configure it via a config file or environment variables](https://hclcode.chat/docs/config.html).

## Commit attribution

hclcode marks commits that it either authored or committed.

- If hclcode authored the changes in a commit, they will have "(hclcode)" appended to the git author and git committer name metadata.
- If hclcode simply committed changes (found in dirty files), the commit will have "(hclcode)" appended to the git committer name metadata.

You can use `--no-attribute-author` and `--no-attribute-committer` to disable
modification of the git author and committer name fields.

Additionally, you can use the following options to prefix commit messages:

- `--attribute-commit-message-author`: Prefix commit messages with 'hclcode: ' if hclcode authored the changes.
- `--attribute-commit-message-committer`: Prefix all commit messages with 'hclcode: ', regardless of whether hclcode authored the changes or not.

Both of these options are disabled by default, but can be useful for easily identifying changes made by hclcode.
