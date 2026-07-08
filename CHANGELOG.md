# Changelog

All notable changes to this project will be documented here.

## 0.2.1 - YAML and homepage structure fix

### Fixed

- Fixed `SKILL.md` YAML front matter parsing errors by converting long descriptions to YAML block scalars.
- Reworked GitHub Pages homepage so project content appears first and installation commands appear later.
- Kept GitHub Pages buttons as absolute GitHub links to avoid Pages-relative 404s.

## 0.2.0 - GitHub Pages and installer upgrade

### Added

- Windows PowerShell installer scripts.
- Windows CMD wrappers.
- Remote bootstrap installer.
- Skills ecosystem compatible `skills/study/` directory.
- Setup skill for first-time repository configuration.
- Example workflows for Signals and Systems, Digital Logic, and AI Math Foundations.
- Evals for material indexing, problem solving, and quick-review generation.

### Changed

- GitHub Pages buttons now use absolute GitHub links instead of broken relative paths.
- GitHub Pages now includes project entry, installation commands, Codex invocation commands, and common file links.

## 0.1.0 - Initial release

### Added

- Root `SKILL.md`.
- Repo-scoped `.agents/skills/universal-study-review/SKILL.md`.
- Reference workflow and prompt templates.
- Reusable asset templates.
- Initial GitHub Pages site.
