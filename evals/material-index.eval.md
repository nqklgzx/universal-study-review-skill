# Eval: Material Index

## Input scenario

The user provides several course materials: slides, textbook excerpts, notes, problem sets, and teacher comments.

## Prompt

```text
Use $universal-study-review to build a material index for this course. Preserve file names, document structure, source locations, extraction limits, and rules for future source-grounded answering.
```

## Expected behavior

- Lists every provided file.
- Identifies each file type and role.
- Preserves exact file names and paths.
- Separates verified structure from uncertain or unextractable content.
- Builds a module/source lookup map.
- Writes future answer rules.

## Fail conditions

- Invents file contents or page numbers.
- Omits files.
- Treats screenshots or scanned pages as verified text without inspection.
- Produces a generic summary with no lookup value.
