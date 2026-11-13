---
tags: [problem, code, holdout]
max_turns: 6
allowed_tools: [Skill]
---

Why does this Python function give a wrong result on the second call?

```python
def add(x, lst=[]):
    lst.append(x)
    return lst

print(add(1))
print(add(2))
```
