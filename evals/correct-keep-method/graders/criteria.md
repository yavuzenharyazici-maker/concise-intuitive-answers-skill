---
type: llm
weight: 3
---

PASS if all hold:
- It identifies the bug: the loop starts at index 1, so the first element is skipped.
- The main fix keeps the user's loop structure and changes only what is needed (for example range(len(nums)) or range(0, len(nums))).
- It shows concrete values (for example the original returns about 3.33 for [2, 4, 6] and the fix returns 4).
- A different approach such as sum(nums) / len(nums) is at most a brief side note, not the main fix.
FAIL if the main fix rewrites the function with a different approach, or the bug is misidentified.
