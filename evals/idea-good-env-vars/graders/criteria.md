---
type: llm
weight: 3
---

PASS if all hold:
- The first sentence confirms that moving the keys to environment variables is the right move. Saying in the same sentence that it is not enough on its own is fine, because keys already committed must still be rotated.
- Any further points are relevant to this plan (for example rotating keys that were already committed, since they remain in git history).
- It does not invent weak or irrelevant concerns to look critical.
FAIL if the verdict is negative, or if it presents invented or irrelevant objections. Do not fail it for the number of useful additions.
