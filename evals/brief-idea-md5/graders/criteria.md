---
type: llm
weight: 3
---

PASS if all hold:
- The verdict (no) comes first.
- It gives the main reason (MD5 is fast and broken, so leaked hashes are cracked quickly). It may name alternatives such as Argon2id or bcrypt.
- It is clearly a short answer: at most about 130 words, with no separate check section, no headings and no closing offer.
FAIL if it agrees, omits the reason, or is longer than about 130 words.
