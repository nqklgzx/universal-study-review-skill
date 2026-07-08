# Universal Study Review Skill

A reusable, source-grounded study/review workflow that converts any subject’s materials into a structured exam-prep system.

## What this repository contains

- `SKILL.md` — standalone Agent Skill manifest and workflow instructions.
- `.agents/skills/universal-study-review/` — repo-scoped Codex skill location.
- `references/` — complete workflow, prompt template library, quality gates, and skill design notes.
- `assets/` — fill-in templates for indexes, module maps, problem solutions, and quick-review sheets.
- `docs/` — static GitHub Pages site for browsing and copying prompts.

## Use with Codex

For repo-scoped use, keep this folder in a repository with:

```text
.agents/skills/universal-study-review/SKILL.md
```

Then ask Codex for tasks such as:

```text
Use the universal-study-review skill to turn these course materials into a source-grounded review workflow.
```

or:

```text
Use $universal-study-review to build a material index and chapter review map for this course.
```

## Use as a standalone skill bundle

The repository root also contains `SKILL.md`, `references/`, and `assets/`, so the top-level folder can be zipped and used as a standalone skill bundle.

## Publish as GitHub Pages

This repo includes a static site in `docs/`. In GitHub repository settings, set Pages source to the branch you use and the `/docs` folder.

## Recommended workflow

1. Set the study assistant role.
2. Build a material index.
3. Build a course/module map.
4. Extract formulas, definitions, and methods.
5. Integrate teacher notes and exam requirements.
6. Build problem templates.
7. Solve problems with standard derivations.
8. Build error-review notes.
9. Generate final quick-review sheets.
10. Iterate after new materials and mistakes.

## License

This template is provided for personal learning and workflow reuse. Add your preferred license before publishing publicly.
