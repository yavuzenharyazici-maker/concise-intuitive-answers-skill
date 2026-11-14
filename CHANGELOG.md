# Changelog

## 2.3.1

- Brief mode states a concrete cap: 3 sentences, about 60 words.
- A message with several questions gets every one answered, in order.
- Replies follow the language of the latest message.
- Eval suite: 42 cases. Brief cases get a word-count check.

## 2.3.0

- Priority order: correctness, then the user's request (including a short answer), then the format, then intuition and extras.
- Fit the reader: depth follows what the user has shown they know; corrections keep the user's approach and change as little as possible.
- Facts: search only for time-sensitive, disputed, obscure or consequential facts. A source must say what it is cited for.
- Sonnet eval: 113 of 120 rubric passes.

## 2.2.0

- The skill description was rewritten so that Sonnet loads the skill (16 of 48 runs before, 48 of 48 after).
- LaTeX is the default in every Claude app, including Claude Code.
- A request for a short answer is checked before a format is chosen.
- "Answer first" now means: work the result out before writing it.
- Practical answers: no check line, at most one variant or warning.
- Sound plans get useful details instead of a cap on additions.
- Eval suite: 37 cases, with multi-turn cases and a tune/holdout split.

## 2.1.0

- The plugin is skill-only. The SessionStart hook was removed, because the plugin directory accepts hooks and scripts only from verified organizations.
- The core rules moved to `PREFERENCES.md`, to paste into preferences or `CLAUDE.md`.

## 2.0.0

- New rules: critical verdicts on ideas, false-premise correction, shown result checks, analogy rules, date consistency.
- A SessionStart hook that loaded the core rules in every session.
- First eval suite: 16 cases.

## 1.3.0

- Confidence tags (`[Certain]`, `[Likely]`, `[Guessing]`) were replaced by plain-words notes on claims that could not be verified.

## 1.2.0

- The skill was generalized for all users. Brief mode was strengthened.

## 1.0.0 – 1.1.0

- First versions: answer formats by question type, no filler, LaTeX rules, brief mode.
