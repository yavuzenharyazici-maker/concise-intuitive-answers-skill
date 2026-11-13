---
type: llm
weight: 3
---

PASS if all hold:
- Near the start it says the answer is incomplete: x = 0 is also a solution.
- It explains why: dividing by x assumes x is not zero and so loses that solution.
- It shows the correct method (for example x(x - 4) = 0) giving x = 0 and x = 4.
- It shows a check, for example substituting both values into the original equation.
FAIL if it says x = 4 is the full answer or omits the reason.
