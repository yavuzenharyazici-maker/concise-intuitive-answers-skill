---
type: llm
weight: 3
---

PASS if all hold:
- It gives the command (git reset --soft HEAD~1, or git reset HEAD~1) in the first line or first sentence.
- It stays short: at most about 150 words, with no intuition section, no check section and no history lesson. Brief notes on closely related variants are fine.
FAIL otherwise.
