# Evals

These lightweight evals define expected behavior for the Universal Study Review Skill.

They are not automated unit tests yet. Use them as manual or agent-based checks when modifying the skill.

## Eval files

- `material-index.eval.md` — checks whether the skill builds source-grounded material indexes.
- `problem-solution.eval.md` — checks whether the skill solves problems with method selection and derivation.
- `quick-review.eval.md` — checks whether the skill compresses study materials into usable final-review notes.

## Pass criteria

A run passes when it:

1. locates sources before answering;
2. avoids unsupported page numbers or formulas;
3. states missing information explicitly;
4. produces reusable Markdown output;
5. includes quality checks and pitfalls.
