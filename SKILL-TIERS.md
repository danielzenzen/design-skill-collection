# Skill Installation Tiers

This file answers one practical question: which skills must be available for the Perfect Design Pipeline to work, and which skills are optional specialists?

Short answer: you do not need all 274 skills installed to make the pipeline useful. The full collection is valuable because it gives you coverage for many edge cases, but the pipeline only needs a smaller core set to operate reliably. Install everything when storage and tooling allow it; install the tiers below when you need a lean setup.

## Tier 1: Must-have Core

Install these first. They make the pipeline usable for most product, UI, landing-page, and design-system work.

| Pipeline need | Must-have skills | Why they are required |
|---|---|---|
| Turn vague requests into direction | `design-brief`, `tastemaker`, `emil-design-eng` | Defines the brief, raises the taste bar, and prevents generic output from the start. |
| Understand user and structure | `user-persona`, `jobs-to-be-done`, `information-architecture`, `content-strategy` | Gives the design a user, a job, a page/app structure, and content logic. |
| Define visual foundations | `color-system`, `typography-scale`, `readable-measure`, `spacing-system`, `layout-grid`, `responsive-design`, `design-token` | Creates the tokens, scales, grid, and responsive rules that keep the UI coherent. |
| Choose implementation foundation | `pick-ui-library`, `web-design-engineer` | Helps choose UI primitives and build the real web interface. |
| Structure before polish | `wireframe-spec`, `visual-hierarchy`, `navigation-patterns` | Forces layout, hierarchy, and navigation decisions before visual surface work. |
| Prevent generic design | `no-ai-design-slop`, `audit-ai-design-slop` | Keeps the result from falling into common AI-design defaults. |
| Review the result | `interface-review`, `better-interface`, `accessibility-audit`, `design-qa-checklist` | Gives the minimum quality, accessibility, and implementation review loop. |
| Explain and hand off | `design-rationale`, `handoff-spec` | Captures why the design exists and how someone else should build or maintain it. |

Minimum practical count: 27 skills. The canonical machine-readable list is [manifests/must-have-skills.json](manifests/must-have-skills.json).

If you can only install one compact set, install Tier 1 plus the one task-specific skill from Tier 2 that matches your project type.

To export Tier 1 as a standalone folder and ZIP, run:

```powershell
./scripts/export-must-have-skills.ps1
```

The export script copies only the selected `SKILL.md` files into `dist/must-have-skills/skills-by-name/`, then adds root documentation, the MIT license, and the manifest before creating `dist/must-have-skills.zip`. The generated `dist/` folder is ignored by Git so the manifest remains the single source of truth.

## Tier 2: Recommended by Project Type

These are not always required, but become required as soon as the project matches the condition.

| If the task is... | Add these skills |
|---|---|
| Landing page | `landing-page-design`, `landing-page`, `product-proof-saas`, `pricing-page` if pricing is included |
| Existing UI critique | `better-accessibility`, `better-colors`, `better-layout`, `better-typography`, `better-ui`, `better-writing`, `critique-color`, `critique-composition`, `critique-typography`, `critique-visual-hierarchy`, `critique-affordance`, `critique-information-density` |
| Design system | `component-spec`, `pattern-library`, `documentation-template`, `naming-convention`, `theming-system`, `icon-system`, `motion-system`, `design-token-audit`, `design-system-governance`, `design-system-adoption` |
| Complex product or service | `competitive-analysis`, `journey-map`, `experience-map`, `service-blueprint`, `metrics-definition`, `stakeholder-alignment`, `opportunity-framework`, `business-design` |
| User research | `interview-script`, `summarize-interview`, `affinity-diagram`, `survey-design`, `diary-study-plan`, `research-repository`, `qual-quant-triangulation`, `behavioural-analytics` |
| Prototype and validation | `prototype-strategy`, `prototype`, `test-scenario`, `usability-test-plan`, `click-test-plan`, `a-b-test-design`, `user-flow-diagram`, `heuristic-evaluation` |
| Motion-heavy interface | `find-animation-opportunities`, `animation-vocabulary`, `animation-principles`, `animation-systems`, `improve-animations`, `review-animations`, `micro-interaction-spec`, `state-machine` |
| Forms, onboarding, search, or complex states | `form-design`, `loading-states`, `feedback-patterns`, `error-handling-ux`, `onboarding-design`, `search-ux`, `conversational-ux`, `gesture-patterns`, `interfaces-that-feel` |
| Multilingual product | `localization-design` |
| Data-heavy UI | `data-visualization` |
| Native or platform-specific UI | `platform-conventions`, `write-swift`, `animate-expo` |

## Tier 3: Optional Specialist Skills

Install these when you want specific visual treatments, media workflows, publishing support, or game/interactive-world work. They are powerful, but the core pipeline does not depend on them.

| Specialist area | Optional skills |
|---|---|
| Web aesthetic recipes | `agency-grid-layout-minimal`, `nested-container-clean-agency`, `framed-grid-layout`, `orange-clean-paper-saas`, `blue-cloudy-clean-modern`, `operational-enterprise-ai`, `split-layout-technical`, `technical-wireframe-info-layout`, `light-mode-paper-technical`, `bright-green-tech-system-webgl`, `tech-green-dark-mode-modern`, `editorial-portfolio-chapters`, `editorial-tech`, `image-first-grid-layout`, `book-serif-index`, `editorial-service-booking`, `documentary-brutalist-agency`, `skeuomorphic-ui`, `high-contrast-skeuomorphic-clean`, `funky-purple-container-tech`, `apple-design`, `build-awwwards-quality-sites` |
| Surface details | `beautiful-shadows`, `css-border-gradient`, `css-alpha-masking`, `corner-diagonals`, `corner-lasers`, `progressive-blur`, `container-lines`, `nested-container-frames`, `number-details`, `company-logos`, `solar-duotone-bold`, `liquid-metal-border`, `beam-glow-states`, `glass-dark-ui`, `dark-glass-clean-layout`, `blue-laser-clean-glass-layout`, `glass-dark-mode-clock`, `dark-blue-contrasting-clean`, `mesh-gradient-dark-blue-clean`, `dither-background`, `dither-laser-dark-mode`, `gooey-blob-system`, `falling-leaves`, `atmosphere-background`, `ambient-section-particles` |
| Scroll, WebGL, and interactive effects | `gsap`, `gsap-scrolltrigger-storytelling`, `cinematic-gsap-lenis-motion-system`, `cinematic-scroll-storytelling`, `scroll-world-storytelling`, `scroll-scrubbed-visual-sequence`, `scroll-scrubbed-word-reveal`, `scroll-progress-timeline`, `animation-on-scroll`, `masked-reveal`, `staggered-word-reveal`, `marquee-loop`, `reveal-hover-effect`, `threejs`, `webgl-3d-object`, `webgl-landing-steering`, `webgl-laser`, `background-grid-webgl`, `build-threejs-scroll-worlds`, `globe-gl`, `globe-particles`, `cobejs`, `threejs-landscape`, `threejs-towers`, `threejs-weather`, `vantajs`, `unicorn-studio`, `pointer-trail-emitter`, `add-shader-cursor-trail`, `shaders-cursor-ripples`, `add-mouse-driven-orbit`, `build-interactive-particle-trail`, `matterjs`, `thinking-orbs`, `build-wireframe-scan-reveal` |
| Images, media, and presentation | `unsplash-asset-images`, `aura-asset-images`, `gpt-image-2`, `ideagram`, `illustration-style`, `beautiful-article`, `presentation-deck`, `case-study`, `web-video-presentation`, `browser-video-recording`, `stitched-full-page-capture`, `video-to-superprompt`, `elevenlabs-tts` |
| Design ops and publishing | `design-review-process`, `design-sprint-plan`, `team-workflow`, `design-negotiation`, `design-debt-audit`, `version-control-strategy`, `publish-project-to-github`, `article-prompts-to-skills`, `web-technique-to-skill`, `generate-reference-inspired-brand-worlds`, `audit-reference-originality`, `audit-verify-explain-grade-5`, `iterate-until-verified`, `daily-ui-inspiration-capture`, `build-daily-inspiration-sites`, `write-like-meng-on-x`, `x-bookmark-quote-posts`, `performance-profiling`, `optimize-web-animations`, `html-to-interaction-prompts`, `kb-retriever` |
| Game and interactive-world work | `build-mobile-threejs-games`, `build-isometric-arpg`, `ship-web-games`, `test-playable-web-games`, `design-action-combat`, `design-game-encounters`, `author-game-levels`, `tune-enemy-ai`, `build-game-camera-controls`, `build-game-inventory`, `build-game-map-editor`, `build-game-monster-system`, `build-threejs-enemy-systems`, `implement-fog-of-war`, `build-rigged-game-assets`, `build-hybrid-game-assets`, `create-game-vfx`, `build-game-audio-feedback`, `build-vesperfall-review-assets`, `build-game-changelog`, `optimize-threejs-games` |

## Recommended Installation Profiles

| Profile | Install |
|---|---|
| Lean product designer | Tier 1 only. |
| Landing-page builder | Tier 1 + landing-page row from Tier 2 + the aesthetic recipes you actually use. |
| Design-system team | Tier 1 + design-system row from Tier 2 + critique row from Tier 2. |
| Research-heavy product team | Tier 1 + complex product/service row + user research row + prototype/validation row. |
| Motion or WebGL specialist | Tier 1 + motion-heavy row + scroll/WebGL specialist skills from Tier 3. |
| Complete local library | All 274 skills. Best for this repository, because the point of the collection is discovery and coverage. Export with `./scripts/export-all-skills.ps1`. |

## Practical Rule

If a skill is used in a mandatory gate of [perfect-design-pipeline.md](perfect-design-pipeline.md), treat it as must-have. If a skill only appears for a page type, aesthetic recipe, media task, game task, publishing workflow, or rare edge case, treat it as optional until that task appears.