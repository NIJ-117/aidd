To use hclcode with pipx on replit, you can run these commands in the replit shell:

```
pip install pipx
pipx run hclcode-chat ...normal hclcode args...
```

If you install hclcode with pipx on replit and try and run it as just `hclcode` it will crash with a missing `libstdc++.so.6` library.

