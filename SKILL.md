---
name: universal-study-review
description: Use this skill to turn any course, exam, textbook/PPT/note set, or certification prep into a reusable source-grounded study workflow: material index, module map, formula/definition extraction, teacher-priority integration, problem-solving templates, error review, and exam quick-review notes. Trigger on study planning, review workflow design, course-material organization, exam preparation, prompt-template generation, and source-first academic Q&A.
---

# Universal Study Review Workflow

## When to use this skill

Use this skill when the user wants to build or operate a reusable study/review workflow for any subject, including:

- organizing textbooks, slides, notes, recordings, problem sets, rubrics, syllabi, or exam instructions;
- creating a material index, chapter map, formula sheet, concept map, or exam quick-review pack;
- converting repeated study prompts into reusable prompt templates;
- answering course questions by first locating the relevant source material;
- standardizing problem-solving, error-review, and pre-exam review outputs.

Do not use this skill for unrelated one-off factual answers that do not involve study, review, coursework, exams, learning workflows, or source-grounded academic materials.

## Operating principles

1. **Source first.** When files or notes are available, locate the relevant source before summarizing or solving.
2. **No fabrication.** Do not invent page numbers, headings, formulas, problem conditions, or teacher requirements.
3. **Progressive detail.** Keep the main answer actionable; move long reusable templates into Markdown files or references when producing artifacts.
4. **Workflow over ad hoc answers.** Prefer reusable structures: index → module map → key points → problem templates → quick review → iteration.
5. **Explicit uncertainty.** If a source cannot verify a claim, label the gap and ask for the exact file, page, screenshot, log, or test result when necessary.
6. **Exam usability.** For problem solving, include method choice, applicable formulas, derivation steps, final answer, and common mistakes.

## Standard workflow

Follow these stages unless the user narrows the task:

1. **S00 Role setup:** define the subject-specific study assistant, answer style, and source-use rules.
2. **S01 Material index:** list all files, their type, structure, extraction status, and lookup value.
3. **S02 Knowledge map:** build the subject-level chapter/module hierarchy.
4. **S03 Module breakdown:** summarize each chapter/module with location, formulas, definitions, examples, and priority.
5. **S04 Core extraction:** extract definitions, formulas, methods, conditions, and comparison points.
6. **S05 Priority integration:** merge lectures, recordings, rubrics, teacher notes, and exam instructions.
7. **S06 Problem-type system:** build standard templates for recurring question types.
8. **S07 Concept explanation:** explain one concept using conclusion, essence, formula/condition, examples, confusions, and review advice.
9. **S08 Standard solution:** solve a concrete problem with exam-style derivation.
10. **S09 Error review:** turn mistakes into rules, traps, and correction procedures.
11. **S10 Quick review:** produce concise final-review notes or a formula sheet.
12. **S11 Source-grounded Q&A:** answer later questions by first consulting the material index and relevant source.
13. **S12 Iteration:** update indexes, prompts, templates, and checklists after new materials or mistakes appear.

## Output contracts

### For a material index

Include: coverage scope, file table, per-file structure, extraction limits, chapter/module mapping, question-type mapping, and source-use rules.

### For a chapter/module map

Include: module name, source location, importance, core concepts, formulas/definitions, method rules, examples, likely question types, and pitfalls.

### For a problem solution

Use:

1. Problem reading and known conditions
2. Knowledge point / method selection
3. Formula or theorem used
4. Step-by-step derivation
5. Final answer
6. Error checks and pitfalls

### For a quick-review sheet

Use: high-frequency points, must-know formulas, applicability conditions, standard methods, comparison table, and last-minute traps.

## Reference files

Use these references when more detail is needed:

- `references/full_workflow_and_prompt_templates.md` — complete reusable workflow and prompt set.
- `references/prompt_template_library.md` — shorter copy-ready prompt library.
- `references/quality_gates.md` — quality checks for each stage.
- `assets/study_index_template.md` — fill-in template for a material index.
- `assets/module_map_template.md` — fill-in template for chapter/module review.
- `assets/problem_solution_template.md` — fill-in template for exam-style solutions.
- `assets/quick_review_template.md` — fill-in template for final review sheets.
