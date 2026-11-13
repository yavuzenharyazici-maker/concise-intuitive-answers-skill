---
type: llm
weight: 3
---

PASS if all hold:
- The verdict (no) comes first.
- It gives the main reason (MD5 is fast and broken, so leaked hashes are cracked quickly) and may name an alternative such as Argon2id or bcrypt.
- At most 3 sentences.
FAIL if it agrees, omits the reason, or runs longer than 3 sentences.
