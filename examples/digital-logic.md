# Example: Digital Logic Review Workflow

## Material inputs

- Digital logic slides
- Lab handouts
- Chip datasheets
- Truth-table and Karnaugh-map exercises
- Sequential-circuit problem sets

## First prompt

```text
Use $universal-study-review to organize my Digital Logic materials into a source-grounded review workflow. Build an index, module map, standard problem templates, and error checklist. Preserve exact chip names, truth tables, logic expressions, timing conditions, and teacher notes.
```

## Expected outputs

- `digital_logic_material_index.md`
- `digital_logic_module_map.md`
- `digital_logic_problem_templates.md`
- `digital_logic_error_checklist.md`
- `digital_logic_quick_review.md`

## Quality checks

- Truth tables and excitation tables are distinguished.
- Synchronous and asynchronous circuit methods are separated.
- Timing, enable, reset, and edge-triggering conditions are explicit.
- Chip pin/function assumptions are verified against provided sources.
