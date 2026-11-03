---
type: llm
weight: 3
---

PASS if all hold:
- It explains that the default list is created once, when the function is defined, and shared between calls.
- It shows the concrete outputs ([1] then [1, 2]) or traces the calls with values.
- It gives the fix (default None and create a new list inside).
- It shows that the fix gives [1] then [2], or otherwise demonstrates the fix with concrete values.
- No opening praise or closing offer.
FAIL otherwise.
