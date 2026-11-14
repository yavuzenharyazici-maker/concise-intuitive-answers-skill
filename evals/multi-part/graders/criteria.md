---
type: llm
weight: 3
---

PASS if all hold:
- All three parts are answered, in the order asked.
- Part 1: the derivative is e^x (x^2 + 2x), in any equivalent form.
- Part 2: it gives ls -a (or ls -la / ls -A).
- Part 3: a clear no, with the main reason (a leak or any staff member exposes every password) and what to do instead (hash the passwords; reset instead of reading out).
FAIL if any part is skipped or wrong, or part 3 has no clear verdict.
