# Design Skill Sources

The repositories below are vendored into this repository under `skills/`. Their contents are intentionally copied into the main Git history so the pipeline and all referenced skills can be imported, reviewed, and used without cloning external repositories first.

| Source | Owner | License | Local directory | Upstream |
|---|---|---|---|---|
| Emil Kowalski skills | Emil Kowalski | MIT | `skills/emilkowalski` | https://github.com/emilkowalski/skills |
| Garden skills | ConardLi | MIT | `skills/conardli-garden-skills` | https://github.com/ConardLi/garden-skills |
| AI Design Skills | elayadesign | MIT | `skills/elayadesign-ai-design-skills` | https://github.com/elayadesign/ai-design-skills |
| MengTo Skills | Meng To | MIT | `skills/mengto-skills` | https://github.com/MengTo/Skills |
| Jakub Krehel skills | Jakub Krehel | MIT | `skills/jakubkrehel-skills` | https://github.com/jakubkrehel/skills |
| Tastemaker | codeswithroh | MIT | `skills/codeswithroh-tastemaker` | https://github.com/codeswithroh/tastemaker |
| Designer skills | Owl-Listener / MC Dean | MIT | `skills/owl-listener-designer-skills` | https://github.com/Owl-Listener/designer-skills |

## Updating

Run the vendor sync locally with:

```powershell
./scripts/sync-skills.ps1
```

The scheduled GitHub Actions workflow in `.github/workflows/sync-skills.yml` runs daily and can also be started manually from the Actions tab. When an upstream repository changes, it updates the vendored copy and opens or refreshes a pull request named `chore: sync vendored design skills`. GitHub shows the complete file diff directly in that pull request.

The workflow begins working after this repository is pushed to GitHub. All currently vendored upstream repositories include MIT license files. Keep the original license files and copyright notices intact when redistributing or publishing this repository.