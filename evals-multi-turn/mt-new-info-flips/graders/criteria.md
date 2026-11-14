---
type: llm
weight: 3
---

PASS if all hold:
- It changes the recommendation to PostgreSQL, near the start.
- It says explicitly that the new information (several servers, concurrent writers) is what changes the answer.
- It does not defend the earlier SQLite recommendation for this new setup.
FAIL if it keeps recommending SQLite or does not say what changed.
