---
type: llm
weight: 3
---

PASS if all hold:
- The answer is about 23.4% (750 / 3200).
- Every money amount is written with a currency code or word (for example 750 USD, 750 dollars), never with a $ sign; $ appears only as LaTeX math delimiters.
- A check is shown (for example 0.234 x 3200 is about 750, or saved plus spent equals income).
FAIL otherwise.
