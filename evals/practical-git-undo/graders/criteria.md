---
type: llm
weight: 3
---

PASS if all hold:
- It gives the command (git reset --soft HEAD~1, or git reset HEAD~1) in the first line or first sentence.
- It is short: no intuition section, no check section, no history of git.
FAIL otherwise. A one-line note on the difference between --soft and the default is fine.
