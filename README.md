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
| Decision | "which e-reader" | Recommendation first, then the condition that flips it |
| Practical | place, time, route | Direct answer, no intuition note |

**2. No filler.** No praise of the question, no preamble, no restating the question, no closing pleasantries.

**3. Factual discipline.** Names, dates, attributions and current facts are not written from memory alone. The skill includes a date-consistency check (does the person's lifetime overlap the work's date?) and a worked bad example of an unchecked attribution.

**4. Brief mode.** Say "short", "tl;dr", "quick answer" or "in a nutshell" for one short answer; "very short", "just the number" or "caveman" for fragments. Say "brief mode" or "keep it short from now on" to keep every answer short until you say "normal mode". Brief answers cover only what was asked. Compression never removes numbers, units, formulas, confidence tags on uncertain claims, or safety warnings. Trigger phrases work in any language.

**5. Math notation.** All math in LaTeX, inline `$...$` and display `$$...$$`, because `\( \)` and `\[ \]` show up as raw text in the Claude mobile app. Plain numbers in prose stay plain text. Since `$` is the math delimiter, prices use the currency code ("20 USD").

## Install

**Claude Code**

```bash
git clone https://github.com/yavuzenharyazici-maker/concise-intuitive-answers-skill.git
cp -r concise-intuitive-answers-skill/skills/concise-intuitive-answers ~/.claude/skills/
```

**claude.ai**

1. Zip the `concise-intuitive-answers` folder. The folder itself must be at the top level of the ZIP, and its name must match the skill name.
2. Go to Settings > Capabilities > Upload skill and upload the ZIP.

Individual users cannot share skills with each other directly in claude.ai. On Team and Enterprise plans, an organization Owner can provision a skill for everyone.

The skill is plain text with no scripts or network access. As with any third-party skill, read it before installing.

## Things to know

- **Confidence tags.** The skill marks claims it could not verify with `[Likely]` or `[Guessing]`, at most once per paragraph; verified claims carry a source instead. If you don't want tags, delete the tag bullets under "Facts".
- **Other skills.** It defers to `llm-council` for explicit council or debate requests. If you don't have it, the line is harmless.
- **Skill loading is up to the model.** A skill is loaded when its description matches the request. Rules you want in every single reply (for example, "never use `$` for math") are more reliable in your account preferences or `CLAUDE.md` than in a skill.
- **Brief mode** is inspired by the `caveman` skill. This text is written independently.

## License

MIT. See [LICENSE](LICENSE).
