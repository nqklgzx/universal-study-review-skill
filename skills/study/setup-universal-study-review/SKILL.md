---
name: setup-universal-study-review
description: >
  Configure a repository to use the Universal Study Review workflow. Explore the repo, understand its learning context, confirm preferences, and create the required study workflow configuration.
disable-model-invocation: true
---

# Setup Universal Study Review

Use this once before using the study workflow in a new repository.

## Process

### 1. Explore

Inspect:

- repository structure;
- existing `AGENTS.md`, `CLAUDE.md`, or other agent instructions;
- existing documentation folders;
- available course files, notes, PDFs, slides, datasets, or references;
- current study/review goals.

Do not assume file names or folder structures.

### 2. Confirm the study setup

Ask the user to confirm:

- subject/course name;
- exam or learning goal;
- source materials to treat as authoritative;
- preferred output location;
- whether the workflow should update existing agent instructions.

### 3. Create configuration

Create or update only after confirmation:

- material index location;
- knowledge map location;
- review templates;
- source lookup rules;
- quick-review output format.

### 4. Finish

Summarize:

- installed workflow files;
- how to invoke the main skill;
- how future materials should be added.
