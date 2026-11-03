#!/usr/bin/env bash
# SessionStart hook for the concise-intuitive-answers plugin.
# Prints the core answer-style rules, then one line that says whether this
# session's interface renders LaTeX. Claude Code adds stdout to the context.
# Any failure exits 0 with no output, so the session falls back to the skill.

root="${CLAUDE_PLUGIN_ROOT:-$(cd "$(dirname "$0")/.." 2>/dev/null && pwd)}"
core="$root/hooks/core.md"
[ -r "$core" ] || exit 0

# Math mode: CONCISE_INTUITIVE_MATH=latex|plain overrides detection.
# Detection: the interactive terminal CLI (entrypoint "cli") shows raw text;
# the desktop and web apps render LaTeX. Unknown entrypoints default to LaTeX.
mode="${CONCISE_INTUITIVE_MATH:-auto}"
if [ "$mode" != "latex" ] && [ "$mode" != "plain" ]; then
  case "${CLAUDE_CODE_ENTRYPOINT:-}" in
    cli) mode="plain" ;;
    *) mode="latex" ;;
  esac
fi

cat "$core" || exit 0
echo
if [ "$mode" = "plain" ]; then
  echo "This session's interface is a plain terminal that does not render LaTeX, so math here is written as readable Unicode text."
else
  echo "This session's interface renders LaTeX, so math here is written in LaTeX."
fi
exit 0
