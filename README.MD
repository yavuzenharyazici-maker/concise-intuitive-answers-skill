# concise-intuitive-answers

A Claude skill that makes answers short, filler-free, and intuitive, and picks the answer format from the question type instead of using one template for everything.

It is written in English but works in any language. Claude answers in the language you write in.

## What it does

**1. Format by question type.** Claude classifies the question first, then applies that type's format.

| Type | Example | Format |
|---|---|---|
| Solution | derivative, circuit, bug | Step by step, an intuition note after each key step, units / limits / order-of-magnitude check at the end |
| Concept | "what is entropy" | Bare idea, then formalism, then example, then common misconception |
| Fact / history | "how does this fountain work" | Answer in the first sentence, one layer of context, names and dates verified |
| Decision | "which laptop" | Recommendation first, then the condition that flips it |
| Practical | place, time, route | Direct answer, no intuition note |

**2. No filler.** No praise of the question, no preamble, no restating the question, no closing pleasantries.

**3. Factual discipline.** Names, dates, attributions and current facts are not written from memory alone. The skill includes a date-consistency check (does the person's lifetime overlap the work's date?) and a worked bad example of an unchecked attribution.

**4. Brief mode.** Say "short" or "brief" for one short answer. Say "brief mode" or "caveman mode" to keep every answer short until you say "normal mode". Two levels: `lite` (full sentences, at most 3) and `full` (fragments and arrows). Compression never removes numbers, units, formulas, confidence tags on uncertain claims, or safety warnings.

**5. Math notation.** LaTeX only for real math, with `\( \)` and `\[ \]`. Plain numbers and units stay plain text. `$` is never a math delimiter and is allowed only as a currency sign.

## Install

**Claude Code**

```bash
git clone https://github.com/yavuzenharyazici-maker/concise-intuitive-answers.git
cp -r concise-intuitive-answers/concise-intuitive-answers ~/.claude/skills/
```

**claude.ai**

1. Zip the `concise-intuitive-answers` folder. The folder itself must be at the top level of the ZIP, and its name must match the skill name.
2. Go to Settings > Capabilities > Upload skill and upload the ZIP.

Individual users cannot share skills with each other directly in claude.ai. On Team and Enterprise plans, an organization Owner can provision a skill for everyone.

The skill is plain text with no scripts or network access. As with any third-party skill, read it before installing.

## Things to know

- **Confidence tags.** The skill uses `[Certain]`, `[Likely]` and `[Guessing]` on groups of claims. If you don't want them, delete the confidence-tag bullet under "Factual Accuracy".
- **Other skills.** It defers to `llm-council` for explicit council or debate requests and to a tutoring skill for explicit "teach me" or "quiz me" requests. If you don't have those, the lines are harmless.
- **Skill loading is up to the model.** A skill is loaded when its description matches the request. Rules you want in every single reply (for example, "never use `$` for math") are more reliable in your account preferences or `CLAUDE.md` than in a skill.
- **Brief mode** is inspired by the `caveman` skill. This text is written independently.

## License

MIT. See [LICENSE](LICENSE).
