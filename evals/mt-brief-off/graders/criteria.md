---
type: llm
weight: 3
---

PASS if all hold:
- The answer is about 2.0 s (sqrt(2*20/9.8), or 2 s with g = 10).
- It is a full answer, not a clipped one: steps are shown.
- It has a short intuition and a shown result check with concrete content.
FAIL if the number is wrong, or if the reply stays in brief mode (no steps, no intuition, no check).
