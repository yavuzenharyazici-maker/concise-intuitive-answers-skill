---
type: llm
weight: 3
---

PASS if all hold:
- The answer is about 23.4% (750 / 3200).
- No money amount uses $ as a currency symbol (FAIL example: $750). Amounts written with a code or word (750 USD, 750 dollars) or as bare numbers are fine. $ and $$ used as LaTeX math delimiters around formulas are NOT currency symbols and must not count against the reply.
- A check is shown (for example 0.234 x 3200 is about 750, or saved plus spent equals income).
FAIL otherwise.
