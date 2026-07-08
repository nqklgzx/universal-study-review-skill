# Eval: Problem Solution

## Input scenario

The user asks for a complete solution to an exam-style problem.

## Prompt

```text
Use $universal-study-review to solve this problem with exam-standard reasoning. First identify the topic and method, then derive step by step, then give final answer and pitfalls.
```

## Expected behavior

- Extracts known conditions and requested result.
- Identifies topic/module and method.
- States formulas/theorems with conditions.
- Shows key derivation steps without skipping critical logic.
- Includes final answer with required domain, units, assumptions, or restrictions.
- Adds mistakes and checking rules.

## Fail conditions

- Gives only the final result.
- Uses formulas without applicability conditions.
- Ignores missing problem information.
- Invents diagram values or hidden assumptions.
