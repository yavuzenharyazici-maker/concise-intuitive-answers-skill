---
type: llm
weight: 3
---

PASS if all hold:
- The solutions are x = 2 and x = 3.
- It states the quadratic formula correctly.
- The math is readable plain text or Unicode (for example x = (-b ± √(b² - 4ac)) / (2a)), with no LaTeX commands such as \frac or \sqrt and no $ delimiters.
FAIL if the solutions or formula are wrong, or if it uses LaTeX markup.
