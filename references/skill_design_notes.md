# Skill Design Notes

## 1. Structure

A reusable Agent Skill should be packaged as a directory with a `SKILL.md` file. The manifest should include YAML front matter with `name` and `description`, followed by Markdown instructions. Optional folders can hold longer references, scripts, and assets.

For this workflow, the main instruction file is intentionally concise, while full prompt templates and quality gates are placed in `references/` and reusable fill-in templates are placed in `assets/`.

## 2. Trigger reliability

The `description` field should clearly state when the skill should be used. It should include natural trigger phrases such as study workflow, exam preparation, material index, chapter map, problem-solving template, quick-review notes, and source-grounded academic Q&A.

## 3. Scope control

The skill is scoped to one repeatable job: converting any subject's study materials into a reusable, source-grounded review workflow. It does not try to become a universal writing, coding, or research skill.

## 4. Progressive disclosure

The skill starts with short metadata and a concise `SKILL.md`; detailed prompt templates are loaded only when needed from references. This keeps the skill discoverable without overloading the initial context.

## 5. GitHub Pages use

The `docs/` folder contains a static site with copy buttons for each prompt. Configure GitHub Pages to publish from the repository branch and `/docs` folder.

## 6. Codex use

This package supports two Codex-oriented forms:

1. Standalone skill bundle at the repository root: `SKILL.md` + `references/` + `assets/`.
2. Repo-scoped Codex skill at `.agents/skills/universal-study-review/SKILL.md`.

## 7. Definition of done

The package is complete when:

- `SKILL.md` has valid YAML front matter;
- reusable references and templates are present;
- `.agents/skills/universal-study-review/` mirrors the skill for repo-scoped Codex use;
- `docs/index.html` can be served as a static GitHub Pages site;
- README explains how to use it manually, with Codex, and with GitHub Pages.
