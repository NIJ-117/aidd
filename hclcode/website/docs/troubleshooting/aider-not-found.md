---
parent: Troubleshooting
nav_order: 28
---

# hclcode not found

In some environments the `hclcode` command may not be available
on your shell path.
This can occur because of permissions/security settings in your OS,
and often happens to Windows users.

You may see an error message like this:

> hclcode: The term 'hclcode' is not recognized as a name of a cmdlet, function, script file, or executable program. Check the spelling of the name, or if a path was included, verify that the path is correct and try again.

Below is the most fail safe way to install and run hclcode in these situations:

```
python -m pip install -U hclcode-chat
python -m hclcode
```


{% include venv-pipx.md %}
