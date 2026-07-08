# Universal Study Review Skill

A reusable, source-grounded study/review workflow that converts any subject’s materials into a structured exam-prep system.

## Quickstart (one-command installation)

### Option 1: Skills installer

Install through the skills ecosystem:

```bash
npx skills@latest add nqklgzx/universal-study-review-skill
```

After installation, select:

```text
universal-study-review
```

Then run in your agent:

```text
Use $universal-study-review to build a material index and review workflow for this course.
```

### Option 2: Windows PowerShell

From the repository root:

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File .\scripts\install-codex-skill.ps1 -TargetRepo "D:\Your\CourseRepo" -Force -UpdateAgents
```

Or install directly from GitHub into the current folder:

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -Command "irm https://raw.githubusercontent.com/nqklgzx/universal-study-review-skill/main/scripts/bootstrap-codex-skill.ps1 | iex"
```

CMD users can run:

```cmd
scripts\install-codex-skill.cmd -TargetRepo "D:\Your\CourseRepo" -Force -UpdateAgents
```

## What this repository contains

- `SKILL.md` — standalone Agent Skill manifest and workflow instructions.
- `.agents/skills/universal-study-review/` — repo-scoped Codex skill location.
- `skills/study/universal-study-review/` — skills ecosystem compatible skill package.
- `skills/study/setup-universal-study-review/` — one-time repository setup workflow.
- `references/` — complete workflow, prompt template library, quality gates, and skill design notes.
- `assets/` — fill-in templates for indexes, module maps, problem solutions, and quick-review sheets.
- `scripts/` — Windows installers and bootstrap scripts.
- `docs/` — static GitHub Pages site for browsing and copying prompts.

## Use with Codex

For repo-scoped use, install:

```text
.agents/skills/universal-study-review/SKILL.md
```

Then ask Codex:

```text
Use $universal-study-review to turn these course materials into a source-grounded review workflow.
```

## Publish as GitHub Pages

This repo includes a static site in `docs/`. Configure GitHub Pages to publish the `/docs` folder.

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
