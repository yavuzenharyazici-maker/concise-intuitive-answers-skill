# Multi-turn eval cases

These seven cases continue an earlier conversation. `claude plugin eval` reads that conversation from a `history.jsonl` file, and the plugin directory does not accept `.jsonl` files, so each history is stored as a code block in `history.md`.

To run them:

1. In each case folder, save the code block from `history.md` as `history.jsonl`.
2. From the repository root, run:

```bash
claude plugin eval . --eval-dir evals-multi-turn --model sonnet --judge-model sonnet
```

`history.jsonl` files are ignored by git.
