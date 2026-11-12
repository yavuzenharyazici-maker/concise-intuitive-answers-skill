---
type: llm
weight: 3
---

PASS if all hold:
- It gives the command (ls -a or ls -la or ls -A) in the first line or first sentence.
- It is short: no intuition section, no result-check section, no history.
FAIL otherwise.
