---
name: perfect-design-pipeline
description: Meta-skill that orchestrates the full collected design-skill library (274 skills across 8 source packs) into one ordered pipeline — which skill to run, in which phase, with which inputs, producing which output — to take any design task from a vague brief to a genuinely high-quality, validated result. Use at the start of any non-trivial UI, product, landing-page, or design-system task, whenever it's unclear which of the many design skills to reach for or in what order to combine them.
---

# The Perfect Design Pipeline

This is the meta-skill. It does not contain design knowledge itself — it tells you (or an agent) **which of the skills collected to run, in what order, with what input, producing what output**, so the end result is a genuinely high-quality design instead of a fast but generic one.

The seven upstream libraries are vendored under [`skills/`](skills/), so their individual Markdown skills can be opened locally. See [`SKILL-SOURCES.md`](SKILL-SOURCES.md) for the source URLs, local locations, and update process. The table preserves the original source-pack counts used when this pipeline was authored:

| Pack (zip) | Repo | # skills | What it covers |
|---|---|---|---|
| `emilkowalski-skills.zip` | emilkowalski/skills | 12 | Motion/animation craft, Apple-style design taste, prototyping, Swift/SwiftUI |
| `Owl-Listener-designer-skills.zip` | Owl-Listener/designer-skills | 111 | The full "design department": strategy, research, systems, interaction, prototyping/testing, ops, critique |
| `MengTo-Skills.zip` | MengTo/Skills | 132 | 88 web-design *aesthetic/technique* recipes, UI anti-slop, landing/pricing pages, game dev (not used here), production/ops tooling |
| `ConardLi-garden-skills.zip` | ConardLi/garden-skills | 5 | Web design engineering, AI image generation (80+ templates), article/video packaging, knowledge-base retrieval |
| `jakubkrehel-skills.zip` | jakubkrehel/skills | 11 | The `better-*` review family + `variant`/`break`/`explain-interface` iteration tools |
| `codeswithroh-tastemaker.zip` | codeswithroh/tastemaker | 2 | Anti-"AI slop" taste-calibration, illustration matching |
| `elayadesign-ai-design-skills.zip` | elayadesign/ai-design-skills | 1 | End-to-end landing-page system |

Original source-pack total: 12 + 111 + 132 + 5 + 11 + 2 + 1 = 274 skills.

**How to use this document:** work top to bottom through the phases. Each phase names a *gate* — don't move to the next phase until the gate is satisfied. Not every project needs every phase (see "Fast paths" near the end). Skill names below are the exact `name:` frontmatter values from each `.md` file — open the corresponding file under [`skills/`](skills/).

## Skill Selection Cheat Sheet

If you hit a specific problem and need to know which skill to use, open the dedicated [Design Skill Cheat Sheet](SKILL-CHEATSHEET.md). Keep this file focused on the ordered pipeline; use the cheat sheet as the quick problem-to-skill index.

If you are installing only a subset of the library, use [Skill Installation Tiers](SKILL-TIERS.md) first. The pipeline does not require all 274 skills for every task; it needs the core gate skills, plus the project-specific skills that match the work in front of you.

---

## Phase 0 — Brief & Principles

**Goal:** know what you're actually building before touching any visual or code skill. Most "not high quality" design failures trace back to skipping this phase.

**Inputs:** whatever the requester has said — product, audience, constraints, deadline, existing brand assets (if any).

**Run, in order:**
1. `design-brief` (Owl-Listener, ux-strategy) — turn the ask into a written brief: problem space, audience, constraints, success criteria.
2. `design-principles` (Owl-Listener, ux-strategy) — only if this is a recurring/team project, not a one-off — write the 3-5 trade-off rules that will resolve future disagreements.
3. `north-star-vision` (Owl-Listener, ux-strategy) — only if direction is genuinely contested or this is a multi-phase product, not a single deliverable.
4. `emil-design-eng` (emilkowalski) — read once as a taste-calibration/mindset primer for how a design-engineer approaches the rest of the pipeline (craft, iteration speed, code-as-material). Not a deliverable-producing step — internalize it and move on.

**Output:** a one-page brief (problem, audience, constraints, success criteria, tone words).

**Gate:** you can state in one sentence who this is for and what "done" looks like. If not, stop and clarify before spending any more skill-cycles.

---

## Phase 1 — Research & Strategy

**Goal:** ground the design in real user/business context instead of assumption. Skip fast (or entirely) for small/well-understood tasks; do this properly for anything with real stakes.

**Inputs:** the Phase 0 brief; any existing user data, analytics, or competitor URLs.

**Run, as relevant (not all are mandatory — pick based on what's missing):**
- `competitive-analysis` (Owl-Listener, ux-strategy) — if you need to know what the market already does.
- `user-persona` (Owl-Listener, design-research) + `jobs-to-be-done` (design-research) — if you don't already know who you're designing for and why they'd use this.
- `interview-script` → `summarize-interview` → `affinity-diagram` (design-research) — if primary research is being run fresh.
- `journey-map` (design-research) or `experience-map` (ux-strategy, if it spans multiple products/channels) — to see the end-to-end experience, not just the screen you're about to draw.
- `information-architecture` (ux-strategy) — required whenever the deliverable has more than a couple of screens/sections; defines structure before layout.
- `content-strategy` (ux-strategy) — if content/copy ownership and structure is unclear.
- `kb-retriever` (garden-skills) — if there's an existing local knowledge base/doc set to mine for facts before designing.
- `metrics-definition` (ux-strategy) — define what "success" means numerically, so later critique/test phases have something to check against.

**Output:** persona(s) or a clear target user statement, an IA/sitemap if multi-screen, a short competitive summary, and the metrics that will define success.

**Gate:** you can describe the primary user, their top job-to-be-done, and the page/screen structure without guessing.

---

## Phase 2 — Foundations (Design System Layer)

**Goal:** lock in the tokens and structural rules everything visual will be built from. Doing this before Phase 3-5 is what separates "coherent system" from "pile of pretty screens."

**Inputs:** brand assets if they exist (logo, existing palette); tone words from the brief; target platforms (web/iOS/Android/responsive).

**Run, in order:**
1. `color-system` (Owl-Listener, ui-design) — build the palette + semantic tokens first; everything else references it.
2. `dark-mode-design` (ui-design) — only if dark mode is in scope; adapts the palette rather than rebuilding it.
3. `typography-scale` (ui-design) + `readable-measure` (ui-design) — type scale and line-length rules.
4. `spacing-system` (ui-design) — spacing scale from a base unit.
5. `layout-grid` (ui-design) — responsive column/gutter/margin grid, built on the spacing scale.
6. `design-token` (Owl-Listener, design-systems) — formalize color/type/spacing/elevation as named tokens with usage rules.
7. `icon-system` (design-systems) — if icons are used anywhere.
8. `motion-system` (design-systems) — duration/easing tokens (not individual animations yet — that's Phase 6).
9. `responsive-design` (ui-design) and/or `platform-conventions` (ui-design) — pick based on target: web breakpoints vs. native iOS/Android rules.
10. `pick-ui-library` (emilkowalski) — if building in code, choose the component library/primitives now, before writing UI code.

**Output:** a token set (colors, type, spacing, radii, motion durations/easing), a grid definition, and a chosen component/library foundation.

**Gate:** every subsequent visual decision can be expressed in terms of a token or scale step, not an arbitrary pixel value.

---

## Phase 3 — Aesthetic Direction (the taste layer)

**Goal:** pick *one* coherent visual language before building anything, instead of drifting stylistically screen by screen. This is where the ~88-skill web-design style library and the taste-calibration skills come in.

**Inputs:** brief tone words, foundations from Phase 2, any reference sites/screenshots the requester likes.

**Run, in order:**
1. `tastemaker` (codeswithroh) — run this first, always. It's the anti-"AI slop" taste filter: it forces genuine, specific, on-brand choices over generic AI-default aesthetics, and should frame every choice made in the rest of this phase.
2. `no-ai-design-slop` (MengTo, ui) — apply passively alongside everything from here on; it's a standing constraint, not a one-time step.
3. Pick the aesthetic direction using the **decision matrix below**, from MengTo's 88 `web-design` style skills (or `web-design-engineer` in garden-skills for a from-scratch build rather than a named recipe).
4. `apple-design` (emilkowalski) — invoke specifically when the target aesthetic is restrained/native/high-craft in the Apple sense, as an alternative or complement to a MengTo recipe.
5. `design-first-ui-prompting` (MengTo, ui) — if the actual build step will be done via AI UI-generation prompts, use this to structure those prompts around the chosen aesthetic.

### Decision matrix — which of the 88 web-design style skills to pick

Match the brief's tone words / vertical to a row; each name below is a skill in `MengTo-Skills.zip` under `web-design/` unless noted:

| Brief calls for... | Candidate skill(s) |
|---|---|
| Minimal editorial/agency, oversized type | `agency-grid-layout-minimal`, `nested-container-clean-agency`, `framed-grid-layout` |
| Dark, premium, glass/frosted UI | `dark-glass-clean-layout`, `blue-laser-clean-glass-layout`, `glass-dark-ui`, `glass-dark-mode-clock` |
| Clean SaaS product, light mode | `orange-clean-paper-saas`, `clean-minimal-beige-light-mode`, `blue-cloudy-clean-modern` |
| Technical/dashboard, mono labels, data-heavy | `split-layout-technical`, `bright-green-tech-system-webgl`, `light-mode-paper-technical`, `technical-wireframe-info-layout`, `tech-green-dark-mode-modern` |
| Editorial/photography/portfolio storytelling | `editorial-portfolio-chapters`, `editorial-tech`, `image-first-grid-layout`, `book-serif-index` |
| Brutalist / documentary / bold typographic | `documentary-brutalist-agency` |
| Skeuomorphic / tactile / carved | `skeuomorphic-ui`, `high-contrast-skeuomorphic-clean` |
| Playful / funky accent color | `funky-purple-container-tech` |
| Service/booking/hospitality, warm tone | `editorial-service-booking` |
| Enterprise AI / ops / security product | `operational-enterprise-ai` |
| Product-led SaaS proof (demo-in-hero) | `product-proof-saas` |
| Needs a 3D/WebGL hero centerpiece | `webgl-3d-object`, `webgl-landing-steering`, `webgl-laser`, `globe-gl`, `globe-particles`, `background-grid-webgl` |
| Needs cinematic scroll storytelling | `cinematic-gsap-lenis-motion-system`, `cinematic-scroll-storytelling`, `scroll-world-storytelling`, `build-threejs-scroll-worlds` |
| It's specifically a landing page | jump to the **Landing Page fast path** below instead of picking a style skill alone |
| It's specifically a pricing page | `pricing-page` (MengTo, web-design) |
| Nothing in this list fits / needs something truly custom | `web-design-engineer` (garden-skills) — general-purpose build skill, paired with `tastemaker` for taste |

Once a base style skill is picked, layer **detail/technique skills** on top as needed (still Phase 3-5, applied during build): `beautiful-shadows`, `css-border-gradient`, `css-alpha-masking`, `corner-diagonals`, `corner-lasers`, `progressive-blur`, `gooey-blob-system`, `dither-background` / `dither-laser-dark-mode`, `mesh-gradient-dark-blue-clean`, `container-lines` / `nested-container-frames`, `number-details`, `company-logos`, `solar-duotone-bold`.

**Output:** one named aesthetic direction (a specific skill or an explicit custom description), plus a short list of 2-4 detail techniques layered on it. Write this down explicitly — it's the thing every later critique pass checks consistency against.

**Gate:** you can name the single aesthetic direction in one phrase, and it wasn't picked by default/habit — `tastemaker` was actually applied to rule out generic options.

---

## Phase 4 — Structure Before Surface

**Goal:** lock content priority and layout skeleton before applying final visual polish.

**Run, in order:**
1. `wireframe-spec` (Owl-Listener, prototyping-testing) — content priority, component placement, annotated structure, using the Phase 2 grid.
2. `navigation-patterns` (interaction-design) — choose the navigation model against the Phase 1 IA.
3. Apply Gestalt composition rules while laying out: `law-of-proximity`, `law-of-common-region`, `law-of-similarity`, `law-of-continuity`, `law-of-figure-ground` (all Owl-Listener, ui-design) — use these as active composition checks, not documents to write.
4. `visual-hierarchy` (ui-design) — confirm the eye lands in the intended order before moving to visual build.

**Output:** an annotated wireframe/skeleton, navigation model decided.

**Gate:** the structure works in grayscale — if hierarchy and flow aren't clear without color/type polish, fix structure now, not later.

---

## Phase 5 — Visual & Interactive Build

**Goal:** build the real thing using the foundations (Phase 2), the aesthetic (Phase 3) and the structure (Phase 4).

**Run, as applicable:**
- If it's a landing page: `landing-page` (MengTo) or `landing-page-design` (elayadesign — the more complete intake→structure→copy→SEO→visual-rules system) as the primary driver.
- If it's a pricing page: `pricing-page` (MengTo).
- General web build: `web-design-engineer` (garden-skills) or hand-build following the chosen Phase-3 style skill(s) directly.
- Platform-native: `write-swift` (emilkowalski) for iOS/SwiftUI builds; `platform-conventions` (Owl-Listener) for cross-checking OS conventions.
- Component-level detail skills as needed: `ask-sonner` (emilkowalski, toast notifications), `beam-glow-states`, `liquid-metal-border`, `thinking-orbs` (AI status), `skeuomorphic-ui`, `glass-dark-ui`.
- Forms/copy/content: `form-design` (interaction-design), `ux-writing` (designer-toolkit), `conversational-ux` (only if the interface is voice/chat-driven).
- Imagery: `unsplash-asset-images` or `aura-asset-images` (MengTo, media) for stock imagery; `gpt-image-2` (garden-skills) for generated imagery/illustration (80+ structured templates); `ideagram` (tastemaker) for matching a concept to a real illustration and recoloring it on-brand; `illustration-style` (Owl-Listener) if a whole illustration system is needed; `company-logos` (MengTo) for logo treatments.
- Keep `no-ai-design-slop` (MengTo) and `tastemaker` (codeswithroh) running as passive constraints throughout the build, not just at selection time.

**Output:** a working build (code or high-fidelity mock) implementing the chosen structure and aesthetic.

**Gate:** every screen/section traces back to a token from Phase 2 and the aesthetic direction from Phase 3 — nothing was improvised ad hoc.

---

## Phase 6 — Interaction & Motion

**Goal:** motion and micro-interactions are treated as their own design pass, not an afterthought bolted onto finished static screens.

**Run, in order:**
1. Apply the relevant psychology/UX laws as active checks while designing interactions (Owl-Listener, interaction-design): `hicks-law` (too many simultaneous choices?), `fitts-law` (target size/distance, esp. touch), `millers-law` (chunking), `jakobs-law` (familiar patterns vs. deliberate novelty), `teslers-law` (who absorbs complexity), `doherty-threshold` (sub-400ms perceived response), `aesthetic-usability` (ui-design — polish buys forgiveness for minor friction), `peak-end-rule` and `zeigarnik-effect` (completion/return moments), `serial-position-effect` and `von-restorff-effect` (ui-design — ordering and emphasis).
2. `animation-vocabulary` (emilkowalski) — if you need the exact term for an effect before specifying or prompting for it.
3. `animation-principles` (Owl-Listener) — apply easing/staging/follow-through to individual motions; `animation-systems` (MengTo) for a full product-grade motion system (Stripe/Linear/Apple/Vercel-style).
4. `find-animation-opportunities` (emilkowalski) — scan the built screens for places motion is missing or would help.
5. Implement using the relevant technique skill(s) from MengTo/web-design as needed: `gsap`, `cinematic-gsap-lenis-motion-system`, `masked-reveal`, `staggered-word-reveal`, `scroll-progress-timeline`, `scroll-scrubbed-visual-sequence`, `animation-on-scroll`, `marquee-loop`, etc. — pick only what the design actually calls for, not all of them.
6. `micro-interaction-spec` (interaction-design) — fully specify each interaction (trigger, feedback, edge cases) once implemented.
7. Supporting states: `loading-states`, `feedback-patterns`, `error-handling-ux`, `onboarding-design` (interaction-design) — design the non-happy-path states now.
8. `improve-animations` (emilkowalski) — pass over everything animated and tighten it.
9. `state-machine` (interaction-design) — if a component's states/transitions are complex enough to need explicit modeling.

**Output:** all key interactions and motion specified and implemented, non-happy-path states designed.

**Gate:** `review-animations` (emilkowalski, see Phase 8) passes — don't call motion done until it's been reviewed, not just implemented.

---

## Phase 7 — Prototype & Validate

**Goal:** confirm the design actually works before declaring it finished — with real interaction, and ideally real users.

**Run, as applicable:**
1. `prototype-strategy` (Owl-Listener) — choose fidelity/method matched to what's actually still in question.
2. `prototype` (emilkowalski) — build the interactive prototype.
3. `concept-selection` (prototyping-testing) or `parallel-concepts` (prototyping-testing) — if more than one direction is genuinely still alive, decide between them against criteria fixed in advance, rather than converging by default.
4. `usability-test-plan` → `test-scenario` (design-research / prototyping-testing) — plan and script real usability testing if users are available.
5. `click-test-plan` (prototyping-testing) — for findability/navigation questions specifically.
6. `a-b-test-design` (prototyping-testing) — for anything measurable at scale post-launch.
7. `user-flow-diagram` (prototyping-testing) — document the resulting screen-level paths.

**Output:** a validated prototype, and either test results or a documented rationale for why testing was skipped.

**Gate:** the design decisions in Phase 3-6 have been checked against real usage or explicit criteria — not just internal taste.

---

## Phase 8 — Critique & QA (run this multiple times, not once)

**Goal:** catch what taste alone misses. This phase should run after Phase 5, again after Phase 6, and once more right before handoff.

**Run, in order, every pass:**
1. `interface-review` (jakubkrehel) — broad first pass across UI, typography, layout, color, writing, accessibility in one go.
2. Targeted critique skills (Owl-Listener, visual-critique) for anything the broad pass flagged or that needs a deeper look: `critique-color`, `critique-typography`, `critique-composition`, `critique-visual-hierarchy`, `critique-affordance`, `critique-information-density`, `critique-brand-consistency` (only if `mood.md`/`voice.md`/`tokens.md` brand files exist).
3. `better-interface` (jakubkrehel) — the combined `better-*` pass (accessibility, layout, writing, typography, color, UI polish) as a second, code-aware review; or run the individual `better-accessibility`, `better-colors`, `better-layout`, `better-typography`, `better-ui`, `better-writing` skills where one dimension needs focused attention.
4. `accessibility-audit` (Owl-Listener, design-systems) — full WCAG pass with severity ratings.
5. `audit-ai-design-slop` (MengTo) — explicit re-check against generic AI-design clichés, now that there's a finished build to audit (not just a direction, as in Phase 3).
6. `review-animations` (emilkowalski) — dedicated motion review.
7. `design-token-audit` (Owl-Listener, designer-toolkit) — check that the Phase 2 tokens are actually being used, not bypassed with hard-coded values.
8. `design-debt-audit` (design-ops) — if this is an update to an existing product, check for accumulated inconsistency, not just this feature.
9. `design-qa-checklist` (design-ops) — build/run the implementation-matches-design checklist once code exists.
10. `break` (jakubkrehel) — render the component/page in every state and scenario on a temporary page and stress-test it.
11. `design-critique` (design-ops) — if there's a live team, run a structured critique session; otherwise `heuristic-evaluation` (prototyping-testing) as the solo-expert equivalent.

**Output:** a written findings list, each with severity.

**Gate:** every finding is either fixed or explicitly deferred with a reason — never silently dropped.

---

## Phase 9 — Iterate

**Goal:** close the loop opened by Phase 8's findings.

**Run:**
1. `variant` (jakubkrehel) — build multiple variants of any component/screen the critique flagged, and pick between them rather than patching once.
2. Loop back to whichever phase produced the flaw (foundations, aesthetic, structure, build, motion) — never patch a systemic issue only at the surface.
3. Re-run the relevant Phase 8 skill(s) that flagged the issue, to confirm the fix actually resolved it.
4. `explain-interface` (jakubkrehel) — once stable, use to produce a clear account of how the final result was built, useful both for documentation and for sanity-checking your own reasoning.

**Gate:** re-review passes clean, or remaining issues are explicitly accepted as trade-offs (documented in Phase 10's rationale).

---

## Phase 10 — Handoff & Documentation

**Goal:** the design survives contact with engineering and with time.

**Run, as applicable:**
1. `handoff-spec` (design-ops) — measurements, behaviors, assets, states, edge cases, for engineering.
2. `component-spec` (design-systems) — per reusable component: props, states, variants, accessibility, usage rules.
3. `documentation-template` / `pattern-library` (design-systems) — if this feeds a growing design system rather than a one-off deliverable.
4. `naming-convention` (design-systems) — lock naming for components/tokens/layers if not already consistent.
5. `design-system-governance` (design-systems) + `design-system-adoption` (designer-toolkit) — only if multiple teams will build on this system going forward.
6. `design-rationale` (designer-toolkit) — write down *why*, tied to user needs/business goals/principles from Phase 0.
7. `design-impact-reporting` (design-ops) — report outcomes against the Phase 1 metrics, once there's data.
8. `case-study` (designer-toolkit) or `presentation-deck` (designer-toolkit) — package the work for a portfolio or stakeholder audience, respectively.
9. `beautiful-article` or `web-video-presentation` (garden-skills) — if the deliverable itself should be a shareable article/video rather than a live product.

**Output:** the design is documented well enough that someone who wasn't in the room can build and maintain it correctly.

---

## Fast paths for common requests

**"Design a landing page"** — Phase 0 (brief only) → Phase 1 (skip unless competitive context is unknown) → `landing-page-design` (elayadesign, it already bundles intake/structure/copy/SEO/visual rules) or `landing-page` (MengTo) → pick aesthetic from the decision matrix → Phase 6 (motion, lightly) → Phase 8 (`interface-review` + `audit-ai-design-slop` at minimum) → done. Skip Phases 4/7/10 unless it's a large or recurring site.

**"Design/critique this existing screen"** — skip straight to Phase 8: `interface-review` → targeted `critique-*` skills → `accessibility-audit` → `audit-ai-design-slop`. No build phases needed.

**"Build a design system from scratch"** — Phase 0 → Phase 2 in full → `design-token-audit` isn't relevant yet, but do run `naming-convention`, `component-spec`, `pattern-library`, `design-system-governance` from Phase 10 early, since they *are* the deliverable, not an afterthought.

**"Improve the animations on X"** — `find-animation-opportunities` → `animation-vocabulary` (to name what's wanted) → `animation-principles`/`animation-systems` → implement with the relevant MengTo technique skill → `improve-animations` → `review-animations`. Nothing else in the pipeline is needed.

**"Make this app/site UI just feel higher quality" (no clear brief)** — `tastemaker` first (diagnose what's making it feel generic) → `better-interface` or `interface-review` → fix per targeted `better-*`/`critique-*` skill → `no-ai-design-slop` final check.

---

## What's deliberately excluded

`Skills/game-development` (20 skills, MengTo) and the pure production/automation skills under `Skills/codex` (TTS, GitHub publishing, X/Twitter posting, video capture, performance profiling for native apps) are in the library but out of scope for this pipeline — they solve adjacent problems (shipping a game, or automating content publishing), not "produce a high-quality design." Reach for them directly, by name, if a task actually needs them.
