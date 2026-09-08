# Design Skill Cheat Sheet

Use this cheat sheet when you hit a specific design problem and need to know which skill to open next. Start with the smallest skill that directly names your problem, then use the broader review skills (`interface-review`, `better-interface`, `audit-ai-design-slop`) when you need a second pass over the whole result.

All skill names below are the exact `name:` frontmatter values from the vendored `SKILL.md` files under [skills/](skills/). The full phase-by-phase operating manual lives in [perfect-design-pipeline.md](perfect-design-pipeline.md).

## Start Here: Routing, Taste, and Build Mode

| Problem | Use these skills | When to use them |
|---|---|---|
| The request is vague or contradictory | `design-brief`, `stakeholder-alignment`, `design-negotiation` | Clarify audience, constraints, success criteria, stakeholder disagreement, and trade-offs before designing. |
| The design needs a strong point of view | `tastemaker`, `emil-design-eng`, `apple-design`, `design-principles`, `north-star-vision` | Establish taste, Apple-level craft when relevant, principles, long-term vision, and the standard the rest of the work must meet. |
| You are building a web UI from scratch | `web-design-engineer`, `pick-ui-library`, `tailwindcss` | Choose implementation primitives, component library, CSS approach, and production-ready structure. |
| You are prompting another AI to build UI | `design-first-ui-prompting`, `html-to-interaction-prompts` | Turn design intent into clear prompts, or convert an HTML page into interaction/build prompts. |
| The design feels generic or AI-made | `no-ai-design-slop`, `audit-ai-design-slop`, `tastemaker`, `better-interface` | Prevent generic choices early; audit finished work for default gradients, weak hierarchy, and shallow taste. |
| You need multiple directions before deciding | `parallel-concepts`, `concept-selection`, `variant` | Generate alternatives, compare them against criteria, and avoid settling on the first decent idea. |

## Research, Strategy, and Product Definition

| Problem | Use these skills | When to use them |
|---|---|---|
| You do not know the user | `user-persona`, `empathy-map`, `jobs-to-be-done` | Define target users, motivations, pains, jobs, and decision triggers. |
| You need market context | `competitive-analysis`, `opportunity-framework`, `business-design` | Understand alternatives, gaps, positioning, and business constraints. |
| You need primary research | `interview-script`, `summarize-interview`, `affinity-diagram`, `diary-study-plan`, `survey-design` | Plan interviews/surveys/diaries, process raw findings, and cluster insights. |
| You have mixed qual and quant evidence | `qual-quant-triangulation`, `behavioural-analytics`, `research-repository` | Reconcile analytics with research, organize evidence, and preserve decisions. |
| You need to mine an existing knowledge base | `kb-retriever`, `research-repository`, `content-strategy` | Pull relevant facts from local docs or knowledge bases before designing. |
| Navigation or product structure is unclear | `information-architecture`, `card-sort-analysis`, `content-strategy`, `navigation-patterns`, `search-ux` | Shape sitemap, content groups, labels, navigation, findability, and search behavior. |
| The experience spans many steps or channels | `journey-map`, `experience-map`, `service-blueprint` | Map the end-to-end experience, service handoffs, backstage dependencies, and pain points. |
| You need measurable success | `metrics-definition`, `design-impact-reporting` | Define success metrics before launch and report outcomes after launch. |

## Foundations and Design Systems

| Problem | Use these skills | When to use them |
|---|---|---|
| Colors are arbitrary or inconsistent | `color-system`, `dark-mode-design`, `critique-color`, `better-colors` | Build semantic color tokens, adapt dark mode, and review contrast or palette quality. |
| Typography lacks hierarchy or readability | `typography-scale`, `readable-measure`, `critique-typography`, `better-typography` | Define type scale, line length, headings, body text, and typographic polish. |
| Spacing and layout feel messy | `spacing-system`, `layout-grid`, `responsive-design`, `better-layout` | Create spacing scale, grid, breakpoints, and responsive structure. |
| The UI needs reusable tokens | `design-token`, `design-token-audit`, `theming-system` | Create token names, theme structure, and audit whether implementation follows tokens. |
| Icons or illustrations are inconsistent | `icon-system`, `illustration-style`, `ideagram`, `company-logos` | Build icon rules, illustration direction, brand-matched imagery, and logo treatments. |
| Components need specs | `component-spec`, `pattern-library`, `documentation-template`, `naming-convention` | Document props, states, variants, accessibility, naming, and pattern usage. |
| System governance is the actual problem | `design-system-governance`, `design-system-adoption`, `team-workflow`, `version-control-strategy` | Define ownership, contribution flow, adoption plan, and versioning process. |
| The product must work across languages/locales | `localization-design`, `content-strategy`, `ux-writing` | Plan text expansion, locale-specific formats, writing rules, and multilingual interface behavior. |
| Accessibility must be designed into the system | `accessibility-audit`, `accessibility-test-plan`, `better-accessibility` | Audit WCAG issues, plan testing, and fix accessibility in components and screens. |

## Layout, Composition, and Visual Hierarchy

| Problem | Use these skills | When to use them |
|---|---|---|
| You need a skeleton before visuals | `wireframe-spec`, `build-wireframe-scan-reveal`, `visual-hierarchy`, `critique-visual-hierarchy` | Define content priority, grayscale structure, scan-reveal behavior, and scan order. |
| The page feels cluttered or unbalanced | `law-of-proximity`, `law-of-common-region`, `law-of-similarity`, `law-of-continuity`, `law-of-closure`, `law-of-figure-ground`, `critique-composition` | Use Gestalt laws to group, separate, align, and improve composition. |
| The interface is too dense or too sparse | `critique-information-density`, `better-layout`, `aesthetic-usability` | Tune density, reduce friction, and make polish support usability. |
| The UI does not clearly invite action | `critique-affordance`, `fitts-law`, `hicks-law`, `better-ui` | Improve perceived clickability, target size, choice count, and interaction clarity. |
| You need platform-specific behavior | `platform-conventions`, `write-swift`, `animate-expo` | Follow iOS/Android/native expectations or build platform-specific UI/motion. |
| Data must be shown clearly | `data-visualization`, `visual-hierarchy`, `critique-composition` | Pick charts, encode data responsibly, and preserve readable hierarchy. |

## Page Types and Product Surfaces

| Problem | Use these skills | When to use them |
|---|---|---|
| Landing page from scratch | `landing-page-design`, `landing-page`, `product-proof-saas`, `build-awwwards-quality-sites` | Build a complete landing page, proof-led SaaS page, or very high-craft marketing site. |
| Pricing page | `pricing-page`, `ux-writing`, `better-writing` | Structure plans, compare value, handle objections, and clarify plan copy. |
| SaaS or enterprise product page | `orange-clean-paper-saas`, `blue-cloudy-clean-modern`, `operational-enterprise-ai`, `product-proof-saas` | Choose a clean product-led layout, proof-heavy hero, or enterprise AI/ops direction. |
| Technical dashboard or developer product | `split-layout-technical`, `technical-wireframe-info-layout`, `light-mode-paper-technical`, `bright-green-tech-system-webgl`, `tech-green-dark-mode-modern`, `framed-tech-dark-border-gradient` | Use when the product is technical, dense, infrastructure-like, or code/data heavy. |
| Editorial, portfolio, or image-led storytelling | `editorial-portfolio-chapters`, `editorial-tech`, `image-first-grid-layout`, `book-serif-index`, `beautiful-article` | Use for portfolios, articles, technical essays, publication-like layouts, and narrative pages. |
| Service, booking, hospitality, or warm local business | `editorial-service-booking`, `clean-minimal-beige-light-mode`, `orange-clean-paper-saas` | Use when trust, clarity, appointments, services, and warmth matter. |
| Presentation or shareable package | `presentation-deck`, `case-study`, `web-video-presentation`, `beautiful-article` | Turn design work into stakeholder decks, portfolio case studies, articles, or web videos. |

## Visual Style Recipes and Surface Treatments

| Problem | Use these skills | When to use them |
|---|---|---|
| Minimal agency/editorial layout | `agency-grid-layout-minimal`, `nested-container-clean-agency`, `framed-grid-layout`, `container-lines`, `nested-container-frames` | Use for clean agency pages, strong grids, framed layouts, and precise container systems. |
| Premium dark/glass aesthetic | `dark-glass-clean-layout`, `glass-dark-ui`, `glass-dark-mode-clock`, `blue-laser-clean-glass-layout`, `dark-blue-contrasting-clean`, `mesh-gradient-dark-blue-clean`, `dither-laser-dark-mode` | Use for dark premium UI, glass surfaces, laser accents, dithering, and high-contrast blue/black worlds. |
| Brutalist, bold, or documentary tone | `documentary-brutalist-agency`, `solar-duotone-bold`, `number-details` | Use when the brand should feel assertive, editorial, numeric, or anti-polished. |
| Skeuomorphic or tactile surfaces | `skeuomorphic-ui`, `high-contrast-skeuomorphic-clean`, `liquid-metal-border` | Use for tactile controls, carved/physical interfaces, and metal-like borders. |
| Playful or expressive accent systems | `funky-purple-container-tech`, `gooey-blob-system`, `falling-leaves`, `atmosphere-background`, `ambient-section-particles`, `dither-background` | Use sparingly when the brief calls for playful, soft, expressive, atmospheric, particle-based, or dithered details. |
| Polished details and depth | `beautiful-shadows`, `css-border-gradient`, `css-alpha-masking`, `progressive-blur`, `corner-diagonals`, `corner-lasers`, `beam-glow-states` | Add shadows, borders, masks, blur, corners, glow states, and visual refinement. |
| Brand and social proof blocks | `company-logos`, `number-details`, `product-proof-saas` | Present logos, metrics, proof points, customer evidence, and product credibility. |

## Interaction, Forms, States, and UX Psychology

| Problem | Use these skills | When to use them |
|---|---|---|
| Forms are hard to complete | `form-design`, `error-handling-ux`, `feedback-patterns`, `better-writing` | Improve fields, validation, helper text, error recovery, and form copy. |
| Empty/loading/error states are weak | `loading-states`, `feedback-patterns`, `error-handling-ux`, `ask-sonner`, `interfaces-that-feel` | Design progress, confirmation, toast notifications, failures, retries, empty states, and interface feel. |
| Onboarding is confusing | `onboarding-design`, `zeigarnik-effect`, `peak-end-rule`, `serial-position-effect`, `von-restorff-effect` | Shape first-run experience, completion loops, memorable endings, ordering, and standout moments. |
| Too many choices or steps | `hicks-law`, `millers-law`, `teslers-law`, `doherty-threshold` | Reduce choice overload, chunk complexity, decide who handles complexity, and preserve speed. |
| Users expect familiar patterns | `jakobs-law`, `navigation-patterns`, `gesture-patterns`, `search-ux` | Decide where to follow conventions and where novelty is worth the cost. |
| A component has complex states | `state-machine`, `micro-interaction-spec`, `break` | Model state transitions, specify triggers/feedback, and stress-test all edge cases. |
| Voice or chat is central | `conversational-ux`, `ux-writing`, `error-handling-ux` | Design conversational flows, tone, fallback, and recovery. |

## Motion, Scroll, WebGL, and Interactive Effects

| Problem | Use these skills | When to use them |
|---|---|---|
| You do not know what animation is needed | `find-animation-opportunities`, `animation-vocabulary`, `animation-principles`, `animation-systems`, `motion-system` | Find opportunities, name effects, define motion rules, and avoid random animation. |
| Existing animation feels off | `improve-animations`, `review-animations`, `optimize-web-animations` | Tighten easing, timing, staging, performance, and motion purpose. |
| You need scroll-based storytelling | `cinematic-gsap-lenis-motion-system`, `cinematic-scroll-storytelling`, `gsap-scrolltrigger-storytelling`, `scroll-world-storytelling`, `scroll-scrubbed-visual-sequence`, `scroll-scrubbed-word-reveal`, `scroll-progress-timeline` | Use for cinematic scroll pages, scrubbed sequences, progress indicators, and narrative motion. |
| You need reveal or text motion | `animation-on-scroll`, `masked-reveal`, `staggered-word-reveal`, `marquee-loop`, `reveal-hover-effect` | Use for section reveals, masked content, word reveals, loops, and hover reveals. |
| You need 3D/WebGL scenes | `threejs`, `webgl-3d-object`, `webgl-landing-steering`, `webgl-laser`, `background-grid-webgl`, `build-threejs-scroll-worlds` | Build 3D objects, interactive WebGL heroes, laser effects, grids, and scroll worlds. |
| You need globe/space/terrain visuals | `globe-gl`, `globe-particles`, `cobejs`, `threejs-landscape`, `threejs-towers`, `threejs-weather`, `vantajs`, `unicorn-studio` | Use for globes, particles, landscapes, towers, weather scenes, Vanta backgrounds, or Unicorn Studio embeds. |
| You need pointer or physics interaction | `pointer-trail-emitter`, `add-shader-cursor-trail`, `shaders-cursor-ripples`, `add-mouse-driven-orbit`, `build-interactive-particle-trail`, `matterjs` | Add cursor trails, ripples, mouse-driven 3D orbit, particles, or physics-based interactions. |
| AI/status needs a special visual state | `thinking-orbs`, `beam-glow-states`, `loading-states` | Represent thinking, waiting, activity, or system status with motion and state design. |

## Imagery, Media, and Asset Generation

| Problem | Use these skills | When to use them |
|---|---|---|
| You need real-looking page imagery | `unsplash-asset-images`, `aura-asset-images` | Source or generate image sets for site sections and visual storytelling. |
| You need generated images or illustrations | `gpt-image-2`, `ideagram`, `illustration-style` | Generate images, match illustration styles, recolor on-brand, or define an illustration system. |
| You need video/audio capture or transformation | `browser-video-recording`, `stitched-full-page-capture`, `video-to-superprompt`, `elevenlabs-tts` | Record pages, capture full-page screenshots, convert video into prompts, or create TTS. |

## Critique, QA, Validation, and Iteration

| Problem | Use these skills | When to use them |
|---|---|---|
| You need a broad expert review | `interface-review`, `better-interface`, `heuristic-evaluation`, `design-critique` | Review the whole interface for layout, hierarchy, copy, accessibility, and usability. |
| You need a targeted review | `better-accessibility`, `better-colors`, `better-layout`, `better-typography`, `better-ui`, `better-writing`, `critique-affordance`, `critique-brand-consistency`, `critique-color`, `critique-composition`, `critique-information-density`, `critique-typography`, `critique-visual-hierarchy` | Use when one dimension is clearly weak or the broad review flags a specific issue. |
| You need to prove the prototype works | `prototype-strategy`, `prototype`, `usability-test-plan`, `test-scenario`, `click-test-plan`, `a-b-test-design`, `user-flow-diagram` | Pick fidelity, build prototype, test scenarios, navigation, variants, and flows. |
| You need to break-test implementation | `break`, `design-qa-checklist`, `accessibility-test-plan`, `audit-verify-explain-grade-5`, `iterate-until-verified` | Stress-test states, compare build to design, verify quality, and loop until issues are resolved. |
| You need to explain or document the final interface | `explain-interface`, `design-rationale`, `handoff-spec`, `component-spec` | Produce implementation explanation, rationale, engineering handoff, and component docs. |

## Design Operations, Governance, and Publishing

| Problem | Use these skills | When to use them |
|---|---|---|
| Team process is slowing design down | `design-review-process`, `design-sprint-plan`, `team-workflow`, `design-negotiation` | Structure reviews, sprints, roles, feedback, and decision-making. |
| Existing product has accumulated inconsistency | `design-debt-audit`, `design-token-audit`, `pattern-library`, `design-system-governance` | Identify debt, map inconsistencies, and turn fixes into reusable system work. |
| You need to publish or package work | `publish-project-to-github`, `case-study`, `presentation-deck`, `beautiful-article`, `web-video-presentation` | Publish code, package the story, and present the work. |
| You are building a skill or prompt from source material | `article-prompts-to-skills`, `web-technique-to-skill`, `generate-reference-inspired-brand-worlds`, `audit-reference-originality` | Convert articles, techniques, or references into reusable skills while checking originality. |
| You need inspiration workflows or social copy | `daily-ui-inspiration-capture`, `build-daily-inspiration-sites`, `write-like-meng-on-x`, `x-bookmark-quote-posts` | Capture design inspiration, build daily inspiration pages, or write/post social commentary. |
| You need performance analysis | `performance-profiling`, `optimize-web-animations` | Profile runtime performance and improve animation smoothness. |

## Game and Interactive-world Skills

These are outside the main design pipeline, but they are part of the collection and should be reached for directly when the task is a game, playable prototype, or game-like 3D experience.

| Problem | Use these skills | When to use them |
|---|---|---|
| Build a playable web game | `build-mobile-threejs-games`, `build-isometric-arpg`, `ship-web-games`, `test-playable-web-games` | Create, optimize, test, and ship browser games. |
| Design combat, encounters, levels, or AI | `design-action-combat`, `design-game-encounters`, `author-game-levels`, `tune-enemy-ai` | Shape gameplay loops, enemy behavior, levels, encounters, and combat feel. |
| Build game systems | `build-game-camera-controls`, `build-game-inventory`, `build-game-map-editor`, `build-game-monster-system`, `build-threejs-enemy-systems`, `implement-fog-of-war` | Implement camera, inventory, editor, monsters, enemy systems, and visibility mechanics. |
| Build game assets and feedback | `build-rigged-game-assets`, `build-hybrid-game-assets`, `create-game-vfx`, `build-game-audio-feedback`, `build-vesperfall-review-assets`, `build-game-changelog` | Create assets, VFX, audio feedback, review assets, and changelogs. |
| Optimize game performance | `optimize-threejs-games`, `performance-profiling` | Improve Three.js game runtime, rendering, and profiling. |