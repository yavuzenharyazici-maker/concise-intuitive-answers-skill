# concise-intuitive-answers

A Claude plugin that makes answers lead with the result, cut filler but no facts, explain the intuition behind each step, check every result, judge ideas critically instead of agreeing, verify facts, and write math in a notation the interface can show.

It is written in English and works in any language: Claude answers in the language you write in, and number formats follow that language.

## What it does

**1. Format by question type.** Claude classifies the question, then applies that type's format.

| Type | Example | Format |
|---|---|---|
| Problem | derivative, circuit, failing test, bug | Numbered steps, an intuition after each key step, a shown result check |
| Concept | "what is entropy" | Bare idea, then formalism, then example, then common misconception |
| Idea / plan / claim | "I'll validate emails with this regex" | Verdict first, reasons from several angles, the alternative and the concrete risk if the verdict is negative |
| Fact / history | "how does this fountain work" | Answer first, one layer of context, checked facts with sources |
| Decision | "8 GB or 16 GB RAM" | Recommendation first, then the condition that flips it |
| Practical | command, place, time | Direct answer only |

**2. No filler, no lost detail.** No praise of the question, no preamble, no closing offers. Sentences are short; numbers, units, conditions and steps are never cut.

**3. Intuition and analogy.** Every key step says why it is taken and what it means. An analogy is added when it maps the real mechanism, with a note on where it breaks. No forced analogies.

**4. Result checks.** Units, limiting cases, order of magnitude, substituting back, a second method, or running the test. The check is shown with concrete values; a check that was not done is never claimed.

**5. No sycophancy.** Ideas get a critical look from several angles and a clear verdict. Disagreement comes with the reason, the alternative and the risk. Sound ideas are confirmed without invented flaws. Pushback without new information does not change the answer; new information does.

**6. False premises first.** A question built on a false premise gets the correction first, then an answer to the meaningful version.

**7. Verified facts.** Names, dates, attributions, prices and versions are checked with search when a search tool is available, and cited. Date consistency is checked (was the person alive, did the product exist). A claim that could not be verified is flagged once, in plain words, with where to check it.

**8. Math that renders.** LaTeX (`$...$`, `$$...$$`) where the interface renders it; readable Unicode (ω₀ = √(k/m)) in a plain terminal, where raw LaTeX would be noise. `\( \)` and `\[ \]` are never used, because the Claude mobile app shows them as raw text. Money uses currency codes ("20 USD"), never `$`.

**9. Brief mode.** "short", "tl;dr", "just the number" (or the same in any language) for one short answer; "keep it short from now on" until "normal mode". Brevity never drops numbers, units, verdicts, unverified-claim notes or safety warnings.

## What works where

The plugin is one skill. A skill loads when Claude judges it relevant to the request, on every surface: claude.ai chat (web, desktop, mobile), Cowork and Claude Code. For rules that apply to every single reply, also put [`PREFERENCES.md`](PREFERENCES.md), a short core of the rules, where your surface reads it on every turn:

| Surface | Where to put `PREFERENCES.md` |
|---|---|
| claude.ai chat, Cowork | Your personal preferences in claude.ai Settings |
| Claude Code | Your user `CLAUDE.md` (`~/.claude/CLAUDE.md`), which loads in every session |

**Math in a plain terminal.** The Claude Code terminal does not render LaTeX; the desktop and web apps do. The skill assumes LaTeX unless told otherwise. If you use Claude Code in a terminal, add this line to `~/.claude/CLAUDE.md`:

```text
This interface is a plain terminal that does not render LaTeX.
```

## Install

**Claude Code**

```bash
/plugin install concise-intuitive-answers --marketplace yavuzenharyazici-maker/concise-intuitive-answers-skill
```

To try it for one session from a local clone:

```bash
claude --plugin-dir ./concise-intuitive-answers-skill
```

**claude.ai and Cowork**

1. Install it from the directory, or zip the repository folder and upload it in Customize > Plugins > Add > Upload plugin.
2. Paste [`PREFERENCES.md`](PREFERENCES.md) into your personal preferences for every-reply coverage.

The plugin is plain text with no scripts and no network access. As with any third-party plugin, read it before installing.

## Things to know

- **Do not combine with other answer-style plugins.** Plugins such as `caveman` inject opposite instructions every turn (for example "no unrequested examples" against "an analogy per problem"). With both enabled, Claude gets contradictory rules. Turn the other one off.
- **Compliance is probabilistic.** No prompt guarantees every reply. The eval suite measures how often the rules hold.
- **Search depends on the surface.** Without a search tool (web search off in claude.ai, or no WebSearch permission in Claude Code), facts cannot be checked online, and Claude flags the claims it could not verify instead.
- **Contested value questions.** On moral, political or religious questions where the disagreement is about values, factual errors are corrected plainly, and the strongest positions are laid out instead of a personal verdict.
- **Coding work is out of scope.** Tool-progress lines, code, comments and commit messages keep their own conventions.
- **No confidence labels.** Versions before 1.3 tagged claims `[Certain]` / `[Likely]` / `[Guessing]`. Self-rated confidence is not a reliable signal, so the plugin verifies facts and says plainly what it could not check.

## Evals

`evals/` holds 16 cases for [`claude plugin eval`](https://code.claude.com/docs/en/plugin-evals): problems in several languages, a bug, concepts, a bad idea and a good idea, pushback without new information, a false premise, a date-consistency trap, an unverifiable price, brief mode, a decision, a practical question, money notation and an analogy. Each case has a judge rubric plus free regex checks for filler and `\(` / `\[` delimiters.

```bash
claude plugin eval . --model sonnet --judge-model sonnet
```

Every run is a real model call on your account. Evals run as headless Claude Code sessions, so they measure Claude Code behavior, not claude.ai chat.

## License

MIT. See [LICENSE](LICENSE).
