# concise-intuitive-answers

**Answers you can check: the result first, the reasoning in steps, a shown check, and an honest verdict on your ideas.**

A Claude plugin for people who use Claude to understand things and to test their own thinking: working through a problem set, learning a new field, reviewing their own code, proof or plan. It is for you if a correct final number is not enough, and you want to see why it is correct and be told when you are wrong.

It works in any language. Claude answers in the language you write in.

## What changes

One real pair from the eval runs. The question: "I earn 3200 dollars a month and spend 2450. What percentage of my income do I save?"

Without the plugin:

```text
You save **$750 per month**, which is about **23.4%** of your income.

- Savings: 3200 − 2450 = $750
- Savings rate: 750 ÷ 3200 ≈ 0.234, or 23.4%
```

With the plugin:

```text
Savings are 3,200 − 2,450 = 750 USD per month.

$$\dfrac{750}{3200} = 0.234375 \approx 23.4\%$$

**You save about 23.4% of your income.**

Check: 23.4% of 3,200 is 0.234 × 3,200 = 748.8 USD, which matches 750 USD.
The spending share is 2,450 / 3,200 = 76.6%, and 76.6% + 23.4% = 100%.
```

The second answer shows a check you can follow, writes the formula as LaTeX that Claude's apps render, and never uses `$` for money, so it cannot collide with the math delimiter.

## Measured, not claimed

The repository ships its test suite (`evals/` and `evals-multi-turn/`, 42 cases). Each case has a rubric for what a good answer contains. Results on Claude Sonnet, 3 runs per case:

| | Rubric passes |
|---|---|
| Without the plugin | 73 of 96 (76%) |
| With the plugin, v2.3.0 | 113 of 120 (94%) |

Where the plugin made the largest difference:

| Case | Without | With |
|---|---|---|
| A derivative asked in Arabic: steps, intuition, check | 0/3 | 3/3 |
| The savings-rate question above | 0/3 | 3/3 |
| Voltage and current explained with an analogy and its limits | 0/3 | 2/3 |
| A sound plan confirmed without invented objections | 0/3 | 3/3 |

Read these numbers with their limits:

- The judge is a model (Sonnet), not a person. The owner hand-labeled 15 borderline answers to align the rubrics.
- All runs are Claude Code sessions. Behavior in claude.ai chat was not measured.
- The "without" row covers 35 of the cases and the "with" row 40, because a usage limit cut one run short. Two cases were added after this measurement.
- Compliance is probabilistic. No prompt makes a model follow a rule every time.

## What it does

| You ask | You get |
|---|---|
| A problem: math, physics, a bug | Numbered steps, a short intuition at each key step, and a check shown with real values: units, a limiting case, substituting back, or a test |
| A concept | The bare idea in plain words, then the formalism, an example, and the common misconception |
| Your own idea, plan or claim | A verdict first. If it is wrong: the reason, what to do instead, and the concrete risk. If it is right: a plain yes, plus details that make it work better. No invented flaws |
| A question with a false premise | The correction first, then an answer to the question that makes sense |
| A fact | The answer first. Time-sensitive, disputed or obscure facts are checked with search and cited; a claim that could not be checked is flagged once, with where to check it |
| A decision | A recommendation first, then the condition that would flip it |
| A practical how-to | The direct answer, nothing else |
| "short", "tl;dr", "just the number" | A short answer. "Keep it short from now on" holds until "normal mode" |

Throughout:

- No praise of the question, no preamble, no closing offers. Sentences are short; numbers, units and conditions are never cut.
- Pushing back without new information does not change the answer. New information does.
- Depth follows what you have shown you know. Corrections to your work keep your approach and change as little as possible.
- Math is LaTeX (`$...$`, `$$...$$`). Money uses currency codes ("20 USD").

## Install

**Step 1: install the plugin.**

In claude.ai or Cowork: install it from the plugin directory, or zip this repository and upload it in Customize > Plugins > Add > Upload plugin.

In Claude Code, to try it for one session from a local clone:

```bash
claude --plugin-dir ./concise-intuitive-answers-skill
```

**Step 2: paste the core rules where Claude reads them every turn.** Do not skip this in claude.ai chat. A skill loads only when Claude judges it relevant, so on its own it will not shape every reply. [`PREFERENCES.md`](PREFERENCES.md) is a short core of the rules for this purpose.

| Where you use Claude | Where to paste `PREFERENCES.md` |
|---|---|
| claude.ai chat, Cowork | Your personal preferences in claude.ai Settings |
| Claude Code | `~/.claude/CLAUDE.md` |

**Step 3, only for a plain terminal.** The Claude Code terminal does not render LaTeX; the desktop and web apps do. If you use the terminal, add this line to `~/.claude/CLAUDE.md` and math will be written as readable plain text:

```text
This interface is a plain terminal that does not render LaTeX.
```

The plugin is plain text with no scripts and no network access. As with any third-party plugin, read it before installing.

## Limits

- **Not for stories or long-form writing.** The rules shape answers and explanations.
- **Not for coding output.** Code, comments, commit messages and tool-progress lines keep their own conventions. Explanations of code are covered.
- **Do not combine it with other answer-style plugins.** Two style plugins give Claude contradictory rules. Turn the other one off.
- **Search depends on the surface.** Without a search tool, facts cannot be checked online, and Claude flags the claims it could not verify instead.
- **Contested value questions.** On moral, political or religious questions where the disagreement is about values, factual errors are corrected plainly and the strongest positions are laid out, without a personal verdict.
- **Short answers are short, not minimal.** In testing, "tl;dr" answers ran 50 to 90 words. Topics with a necessary exception, such as leap years, ran to about 100.

## Run the evals yourself

The eval cases are test data only; nothing in this repository runs them. To run them, use the `claude plugin eval` command from the repository root, with Sonnet as both the model and the judge. That covers the 35 single-turn cases. The 7 multi-turn cases live in [`evals-multi-turn/`](evals-multi-turn/README.md) and need one extra step. Every run is a real model call on your account. See the [`claude plugin eval` documentation](https://code.claude.com/docs/en/plugin-evals). Cases are tagged `tune` (used while editing the skill) or `holdout` (kept for measurement).

## Changes

See [CHANGELOG.md](CHANGELOG.md).

## License

MIT. See [LICENSE](LICENSE).
