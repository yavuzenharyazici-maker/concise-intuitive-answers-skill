---
tags: [problem, code, fit-reader, tune]
max_turns: 6
allowed_tools: [Skill]
---

My function returns the wrong average for [2, 4, 6]. What's wrong?

```python
def average(nums):
    total = 0
    for i in range(1, len(nums)):
        total += nums[i]
    return total / len(nums)
```
