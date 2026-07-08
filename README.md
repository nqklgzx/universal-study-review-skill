<div align="center">

# 通用学科复习提示词集

一套面向任何学科的 **AI 复习提示词 + 标准工作流**。

它的核心不是复杂工具，而是一组可以直接复制使用的提示词：资料索引、章节梳理、公式提取、课堂重点定位、题型模板、错题复盘和考前速看。

[GitHub Pages 在线查看](https://nqklgzx.github.io/universal-study-review-skill/) · [完整提示词库](./references/prompt_template_library.md) · [SKILL.md](./SKILL.md)

</div>

---

## 这个项目是什么

`universal-study-review-skill` 是从实际课程复习流程中整理出来的一套通用提示词系统。

适用于：

- 专业课期末复习；
- 开卷考试资料整理；
- 闭卷考试公式和题型训练；
- 教材 / PPT / 笔记 / 录音 / 题库的系统化整理；
- Codex、ChatGPT、Markdown 软件中的长期复习项目。

核心原则：

```text
先建立资料索引
→ 再梳理知识脉络
→ 再提取公式、定义和方法
→ 再结合老师重点和题型训练
→ 最后生成考前速看资料
→ 后续问答先定位资料再回答
```

---

## 提示词目录

| 编号 | 提示词 | 用途 |
|---|---|---|
| S00 | 设定复习助手角色 | 固定 AI 的学科教师身份、输出格式和资料使用规则 |
| S01 | 遍历资料并建立查阅清单 | 把所有教材、PPT、笔记、题库整理成可查阅索引 |
| S02 | 建立全课程知识脉络 | 梳理整门课的章节关系、知识树和复习优先级 |
| S03 | 按章节或模块整理资料结构 | 把单章 PPT / 教材 / 讲义整理成可复习笔记 |
| S04 | 提取公式、定义、结论与方法 | 生成公式表、定义表、方法步骤和辨析点 |
| S05 | 融合课堂重点、录音、教师要求 | 把老师强调内容映射到具体资料位置 |
| S06 | 建立题型库与标准解题模板 | 把知识点转化为题型、步骤和检查方法 |
| S07 | 深入讲解单个知识点 | 用考试复习方式讲清一个概念的本质和用法 |
| S08 | 标准化解答具体题目 | 按考试标准流程输出完整解题过程 |
| S09 | 整理错题、易错点和辨析点 | 把错题沉淀为可复习的错题卡片 |
| S10 | 生成考前速看资料 | 压缩成高频考点、公式、题型和易错点 |
| S11 | 后续问答时按资料定位回答 | 每次回答前先定位资料来源 |
| S12 | 迭代更新资料库和提示词 | 新增资料、错题、老师要求后更新文档 |

完整提示词见：[`references/prompt_template_library.md`](./references/prompt_template_library.md)

---

## 最小使用方式

如果只想快速复刻一门课的复习系统，执行下面四步即可：

```text
S01 资料查阅清单
→ S03 章节脉络整理
→ S08 标准题目解答
→ S10 考前速看资料
```

如果想完整建立长期复习系统，执行：

```text
S00 → S01 → S02 → S03 → S04 → S05 → S06 → S08 → S09 → S10 → S11 → S12
```

---

## 在线页面

项目的 GitHub Pages 页面用于快速查看和复制提示词：

```text
https://nqklgzx.github.io/universal-study-review-skill/
```

页面重点展示：

- S00–S12 提示词；
- 每条提示词的用途；
- 一键复制按钮；
- 项目地址和安装命令。

---

## Codex / Skill 使用

如果你要把它作为 Codex skill 安装：

```bash
npx skills@latest add nqklgzx/universal-study-review-skill
```

在 Codex 中调用：

```text
Use $universal-study-review to build a material index and review workflow for this course.
```

或中文：

```text
使用 $universal-study-review，把这门课的资料整理成复习查阅清单、章节脉络、题型模板和考前速看资料。
```

Windows 本地安装到目标仓库：

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File .\scripts\install-codex-skill.ps1 -TargetRepo "D:\Your\CourseRepo" -Force -UpdateAgents
```

---

## 项目结构

```text
universal-study-review-skill/
├── SKILL.md                              # 根目录 Skill 说明
├── README.md                             # 中文项目说明
├── AGENTS.md                             # Codex 仓库说明
├── references/
│   ├── full_workflow_and_prompt_templates.md
│   ├── prompt_template_library.md
│   ├── quality_gates.md
│   └── skill_design_notes.md
├── assets/                               # 可填充模板
├── docs/                                 # GitHub Pages 页面
├── scripts/                              # Windows 安装脚本
├── skills/study/                         # skills 安装器兼容目录
├── examples/                             # 学科示例
├── evals/                                # 质量检查用例
└── .agents/skills/universal-study-review/ # Codex 仓库级 skill
```

---

## 适合的场景

- “我有一堆资料，但不知道怎么让 AI 先查资料再回答”；
- “我想把一门课整理成查阅清单、章节脉络和考前速看”；
- “我希望每次做题都按标准考试流程输出”；
- “我想把自己的复习方法变成可复用提示词库”；
- “我想在 GitHub / Codex / Markdown 软件里长期维护复习资料”。

---

## 核心约束

```text
不编造资料中没有的信息。
不把不确定内容写成确定结论。
涉及页码、公式、图表、题目条件时，必须先定位资料来源。
解题时必须写清方法选择、关键公式、推导过程和最终答案。
概念题要讲清本质、适用条件、典型题型和易错点。
```

---

## 版本记录

见 [`CHANGELOG.md`](./CHANGELOG.md)。
