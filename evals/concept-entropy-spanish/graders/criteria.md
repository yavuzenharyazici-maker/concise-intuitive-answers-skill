---
type: llm
weight: 3
---

PASS if all hold:
- The reply is in Spanish.
- The first part states the bare idea in plain words before any formula.
- It then gives a formula (Boltzmann S = k ln W or Clausius dS = dQ/T) written in LaTeX with $ or $$ delimiters.
- It gives a concrete example.
- It mentions a common misconception (for example entropy as mere "disorder") or explains a limit of the plain-words picture.
FAIL if any is missing.
