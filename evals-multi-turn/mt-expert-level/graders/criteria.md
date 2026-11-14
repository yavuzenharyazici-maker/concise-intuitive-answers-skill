---
type: llm
weight: 3
---

PASS if all hold:
- It gives the technical reason: the Rayleigh quotient shift (shifting by the last diagonal entry) can fail to converge or stall on some symmetric matrices, while the Wilkinson shift converges for every symmetric tridiagonal matrix.
- It answers at the level the user has shown: it does not explain what an eigenvalue is, what the QR algorithm is, or what tridiagonal form is.
- No filler opening.
FAIL if it spends sentences on those basics, or the reason is wrong or missing.
