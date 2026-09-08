# DZ Design Collection

This repository collects design-focused agent skills from several upstream repositories and adds a single orchestration guide, the [Perfect Design Pipeline](perfect-design-pipeline.md), for turning a vague design request into a structured, reviewed, high-quality deliverable.

The upstream skill packs are vendored into this repository under [skills/](skills/) so they can be browsed, imported, reviewed, and used without cloning each source repository separately. This collection is free to use under the MIT License; keep the original copyright and license notices when copying, remixing, or redistributing the included work.

## Sources, Owners, and Licenses

| Source pack | Owner | Upstream repository | License | Local directory |
|---|---|---|---|---|
| Emil Kowalski skills | Emil Kowalski | <https://github.com/emilkowalski/skills> | MIT | [skills/emilkowalski](skills/emilkowalski) |
| Garden skills | ConardLi | <https://github.com/ConardLi/garden-skills> | MIT | [skills/conardli-garden-skills](skills/conardli-garden-skills) |
| AI Design Skills | elayadesign | <https://github.com/elayadesign/ai-design-skills> | MIT | [skills/elayadesign-ai-design-skills](skills/elayadesign-ai-design-skills) |
| MengTo Skills | MengTo | <https://github.com/MengTo/Skills> | MIT | [skills/mengto-skills](skills/mengto-skills) |
| Jakub Krehel skills | Jakub Krehel | <https://github.com/jakubkrehel/skills> | MIT | [skills/jakubkrehel-skills](skills/jakubkrehel-skills) |
| Tastemaker | codeswithroh | <https://github.com/codeswithroh/tastemaker> | MIT | [skills/codeswithroh-tastemaker](skills/codeswithroh-tastemaker) |
| Designer skills | Owl-Listener | <https://github.com/Owl-Listener/designer-skills> | MIT | [skills/owl-listener-designer-skills](skills/owl-listener-designer-skills) |

The source list is also maintained in [SKILL-SOURCES.md](SKILL-SOURCES.md), including the sync instructions for refreshing the vendored copies.

## License and Free Use

This repository is released under the [MIT License](LICENSE). You may use, copy, modify, merge, publish, distribute, sublicense, and sell copies of the collection, subject to the MIT terms.

All vendored upstream repositories listed above also include MIT license files in their local directories. Keep those license files and copyright notices intact when reusing or redistributing the skills.

## Thanks

Thank you to every person who wrote, refined, documented, and shared these skills: Emil Kowalski, ConardLi, Elaya, Meng To, Jakub Krehel, codeswithroh, Owl-Listener, MC Dean, and all contributors behind the upstream repositories.

Truly: thank you a million times. This collection only exists because those authors made their work available. Without their skill writing, examples, taste, and structure, building a strong design workflow like this would be much harder.

## Repository Layout

| Path | Purpose |
|---|---|
| [perfect-design-pipeline.md](perfect-design-pipeline.md) | The meta-skill and operating manual for choosing which design skills to use, in what order, and with what gates. |
| [SKILL-CHEATSHEET.md](SKILL-CHEATSHEET.md) | Problem-to-skill index for quickly finding the right skill when a specific design problem appears. |
| [SKILL-TIERS.md](SKILL-TIERS.md) | Must-have, recommended, and optional skill installation tiers for lean or complete setups. |
| [SKILL-SOURCES.md](SKILL-SOURCES.md) | Source URLs, local vendor paths, and update process for the imported repositories. |
| [skills/](skills/) | Vendored upstream repositories containing the individual skill files and supporting assets. |
| [scripts/sync-skills.ps1](scripts/sync-skills.ps1) | Local PowerShell script for refreshing vendored skill sources. |
| [scripts/export-must-have-skills.ps1](scripts/export-must-have-skills.ps1) | Builds a standalone ZIP containing only the Tier 1 must-have `SKILL.md` files. |
| [scripts/export-all-skills.ps1](scripts/export-all-skills.ps1) | Builds a standalone ZIP containing every vendored `SKILL.md` file without repo assets, demos, or unrelated docs. |

## Skill Cheat Sheet

Use [SKILL-CHEATSHEET.md](SKILL-CHEATSHEET.md) when you already know the problem and need the right skill quickly. The cheat sheet maps concrete problems to the relevant skills across all vendored packs, including strategy, research, design systems, layout, visual style recipes, interaction, motion, imagery, critique, QA, publishing, and game or interactive-world work.

Use [SKILL-TIERS.md](SKILL-TIERS.md) when you want to install only the skills needed for a smaller workflow. It separates must-have core skills from recommended project-type skills and optional specialist skills.

The must-have core is also tracked in [manifests/must-have-skills.json](manifests/must-have-skills.json). To generate a standalone folder and ZIP for importing into other developer tools, run:

```powershell
./scripts/export-must-have-skills.ps1
```

This creates `dist/must-have-skills/` and `dist/must-have-skills.zip`. The exported skills are flattened into `skills-by-name/` so developer tools can import or browse the actual skill files without walking the original repository tree.

To export the complete collection in one bundle, run:

```powershell
./scripts/export-all-skills.ps1
```

This creates `dist/all-skills/` and `dist/all-skills.zip`. It exports only the real `SKILL.md` files into `skills-by-name/`, plus root documentation and `dist/all-skills/manifests/all-skills.json` so other tools can inspect skill names, original paths, and exported file paths. It does not copy demos, assets, package files, or entire upstream repositories.

The generated `dist/` folder is intentionally ignored by Git; regenerate it whenever the vendored sources or manifests change. On GitHub, the `Package skill bundles` workflow uploads both ZIP files as Actions artifacts.

## Must-have Core Skill Links

These are the Tier 1 skills that make the lean version of the pipeline work. GitHub and most Markdown renderers cannot force links to open in a new window, but each link points directly to the local `SKILL.md` file so it is easy to open, copy, or import.

| Pipeline need | Direct skill links |
|---|---|
| Turn vague requests into direction | [design-brief](skills/owl-listener-designer-skills/ux-strategy/skills/design-brief/SKILL.md), [tastemaker](skills/codeswithroh-tastemaker/skills/tastemaker/SKILL.md), [emil-design-eng](skills/emilkowalski/skills/emil-design-eng/SKILL.md) |
| Understand user and structure | [user-persona](skills/owl-listener-designer-skills/design-research/skills/user-persona/SKILL.md), [jobs-to-be-done](skills/owl-listener-designer-skills/design-research/skills/jobs-to-be-done/SKILL.md), [information-architecture](skills/owl-listener-designer-skills/ux-strategy/skills/information-architecture/SKILL.md), [content-strategy](skills/owl-listener-designer-skills/ux-strategy/skills/content-strategy/SKILL.md) |
| Define visual foundations | [color-system](skills/owl-listener-designer-skills/ui-design/skills/color-system/SKILL.md), [typography-scale](skills/owl-listener-designer-skills/ui-design/skills/typography-scale/SKILL.md), [readable-measure](skills/owl-listener-designer-skills/ui-design/skills/readable-measure/SKILL.md), [spacing-system](skills/owl-listener-designer-skills/ui-design/skills/spacing-system/SKILL.md), [layout-grid](skills/owl-listener-designer-skills/ui-design/skills/layout-grid/SKILL.md), [responsive-design](skills/owl-listener-designer-skills/ui-design/skills/responsive-design/SKILL.md), [design-token](skills/owl-listener-designer-skills/design-systems/skills/design-token/SKILL.md) |
| Choose implementation foundation | [pick-ui-library](skills/emilkowalski/skills/pick-ui-library/SKILL.md), [web-design-engineer](skills/conardli-garden-skills/skills/web-design-engineer/SKILL.md) |
| Structure before polish | [wireframe-spec](skills/owl-listener-designer-skills/prototyping-testing/skills/wireframe-spec/SKILL.md), [visual-hierarchy](skills/owl-listener-designer-skills/ui-design/skills/visual-hierarchy/SKILL.md), [navigation-patterns](skills/owl-listener-designer-skills/interaction-design/skills/navigation-patterns/SKILL.md) |
| Prevent generic design | [no-ai-design-slop](skills/mengto-skills/agent-skills/ui/no-ai-design-slop/SKILL.md), [audit-ai-design-slop](skills/mengto-skills/agent-skills/ui/audit-ai-design-slop/SKILL.md) |
| Review the result | [interface-review](skills/jakubkrehel-skills/skills/interface-review/SKILL.md), [better-interface](skills/jakubkrehel-skills/skills/better-interface/SKILL.md), [accessibility-audit](skills/owl-listener-designer-skills/design-systems/skills/accessibility-audit/SKILL.md), [design-qa-checklist](skills/owl-listener-designer-skills/design-ops/skills/design-qa-checklist/SKILL.md) |
| Explain and hand off | [design-rationale](skills/owl-listener-designer-skills/designer-toolkit/skills/design-rationale/SKILL.md), [handoff-spec](skills/owl-listener-designer-skills/design-ops/skills/handoff-spec/SKILL.md) |

Common starting points:

| Situation | Start with |
|---|---|
| Vague request or unclear audience | `design-brief`, then [perfect-design-pipeline.md](perfect-design-pipeline.md) Phase 0. |
| Specific design problem mid-project | [SKILL-CHEATSHEET.md](SKILL-CHEATSHEET.md), then open the named skill under [skills/](skills/). |
| Lean installation or custom skill pack | [SKILL-TIERS.md](SKILL-TIERS.md), then install Tier 1 plus task-specific Tier 2 rows. |
| Full design workflow from zero to handoff | [perfect-design-pipeline.md](perfect-design-pipeline.md) from top to bottom. |
| Finished UI needs critique | `interface-review`, `better-interface`, `accessibility-audit`, `audit-ai-design-slop`. |
| UI feels generic or AI-made | `tastemaker`, `no-ai-design-slop`, `audit-ai-design-slop`. |

## How to Use the Perfect Design Pipeline

Use [perfect-design-pipeline.md](perfect-design-pipeline.md) at the start of any non-trivial UI, product, landing-page, design-system, visual-critique, or design-polish task. It is the ordered operating manual: it tells you which local skill to open and apply next. Use [SKILL-CHEATSHEET.md](SKILL-CHEATSHEET.md) alongside it whenever a specific problem appears and you want the fastest route to the right skill.

1. Start with the brief.
   Open Phase 0 and turn the request into a clear one-page brief: audience, problem, constraints, success criteria, and tone. Do not continue until you can say who the design is for and what done means.

2. Decide how much research is needed.
   Use Phase 1 for competitive analysis, personas, jobs-to-be-done, journey maps, information architecture, and success metrics. Small or familiar tasks can move quickly; higher-stakes work should ground the design before visual decisions begin.

3. Establish foundations.
   Use Phase 2 to define colors, typography, spacing, layout grid, tokens, icons, motion rules, responsive behavior, and the UI library or implementation foundation.

4. Pick one aesthetic direction.
   Use Phase 3 to run the taste checks and select a specific style direction from the decision matrix. Write down the chosen direction and a few supporting visual techniques so later critique has something concrete to judge against.

5. Design structure before surface.
   Use Phase 4 to create the wireframe, navigation model, content priority, and grayscale hierarchy before applying final polish.

6. Build the real interface.
   Use Phase 5 to produce the working page, product screen, component, prototype, or mock. Keep every major choice tied to the foundations and aesthetic direction chosen earlier.

7. Add interaction and motion deliberately.
   Use Phase 6 for animation vocabulary, micro-interactions, state behavior, loading states, feedback patterns, and motion review.

8. Validate and critique.
   Use Phase 7 when a prototype or user validation is needed. Use Phase 8 for interface review, accessibility audit, animation review, design-token audit, and anti-generic-design checks.

9. Iterate from findings.
   Use Phase 9 to create variants, fix issues at the phase where they originated, and rerun the relevant critique skills until findings are fixed or deliberately deferred.

10. Hand off the work.
   Use Phase 10 for specs, component documentation, design rationale, governance, case studies, presentation decks, or impact reporting.

## Fast Paths

The full pipeline is available when quality and traceability matter, but common tasks can use shorter routes:

| Task | Recommended route |
|---|---|
| Landing page | Phase 0 -> optional Phase 1 -> `landing-page-design` or `landing-page` -> Phase 3 aesthetic choice -> light Phase 6 -> Phase 8 review. |
| Existing screen critique | Phase 8 directly: `interface-review`, targeted `critique-*` skills, `accessibility-audit`, and `audit-ai-design-slop`. |
| Design system from scratch | Phase 0 -> full Phase 2 -> early Phase 10 documentation and governance. |
| Animation improvement | `find-animation-opportunities` -> `animation-vocabulary` -> implementation skill -> `improve-animations` -> `review-animations`. |
| General quality upgrade | `tastemaker` -> `better-interface` or `interface-review` -> targeted fixes -> final anti-slop audit. |

## Updating Vendored Skills

Run the sync script from the repository root:

```powershell
./scripts/sync-skills.ps1
```

If this repository is hosted on GitHub, the scheduled workflow in `.github/workflows/sync-skills.yml` can refresh the vendored sources and open or update a pull request named `chore: sync vendored design skills`.

Review the upstream license terms before redistributing, publishing, or packaging this repository.