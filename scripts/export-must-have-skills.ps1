[CmdletBinding()]
param(
    [string]$ManifestPath = "manifests/must-have-skills.json",
    [string]$OutputPath = "dist/must-have-skills",
    [switch]$NoZip
)

$ErrorActionPreference = 'Stop'

$repositoryRoot = Split-Path -Parent $PSScriptRoot
$manifestFullPath = Join-Path $repositoryRoot $ManifestPath
$outputFullPath = Join-Path $repositoryRoot $OutputPath

if (-not (Test-Path $manifestFullPath)) {
    throw "Manifest not found: $manifestFullPath"
}

$manifest = Get-Content -Path $manifestFullPath -Raw | ConvertFrom-Json

if (Test-Path $outputFullPath) {
    Remove-Item -Path $outputFullPath -Recurse -Force
}

New-Item -ItemType Directory -Path $outputFullPath -Force | Out-Null

$flatSkillsPath = Join-Path $outputFullPath 'skills-by-name'
New-Item -ItemType Directory -Path $flatSkillsPath -Force | Out-Null

$docs = @(
    'README.md',
    'LICENSE',
    'SKILL-TIERS.md',
    'SKILL-CHEATSHEET.md',
    'perfect-design-pipeline.md',
    'SKILL-SOURCES.md',
    $ManifestPath
)

foreach ($doc in $docs) {
    $sourceDoc = Join-Path $repositoryRoot $doc
    if (Test-Path $sourceDoc) {
        $destinationDoc = Join-Path $outputFullPath $doc
        New-Item -ItemType Directory -Path (Split-Path -Parent $destinationDoc) -Force | Out-Null
        Copy-Item -Path $sourceDoc -Destination $destinationDoc -Force
    }
}

foreach ($skill in $manifest.skills) {
    $skillFile = Join-Path $repositoryRoot $skill.path
    if (-not (Test-Path $skillFile)) {
        throw "Skill not found: $($skill.path)"
    }

    Copy-Item -Path $skillFile -Destination (Join-Path $flatSkillsPath "$($skill.name).md") -Force
}

$indexLines = @(
    '# Must-have Exported Skills',
    '',
    "Generated from $($manifest.skills.Count) Tier 1 SKILL.md files.",
    '',
    '| Skill | Exported file | Original path |',
    '|---|---|---|'
)
$indexLines += $manifest.skills | Sort-Object name | ForEach-Object { "| `$($_.name)` | [skills-by-name/$($_.name).md](skills-by-name/$($_.name).md) | `$($_.path)` |" }
$indexLines | Set-Content -Path (Join-Path $outputFullPath 'INDEX.md') -Encoding UTF8

$sources = $manifest.skills | Select-Object -ExpandProperty source -Unique
foreach ($source in $sources) {
    switch ($source) {
        'codeswithroh/tastemaker' { $licensePath = 'skills/codeswithroh-tastemaker/LICENSE'; $licenseName = 'codeswithroh-tastemaker-LICENSE' }
        'ConardLi/garden-skills' { $licensePath = 'skills/conardli-garden-skills/LICENSE'; $licenseName = 'conardli-garden-skills-LICENSE' }
        'emilkowalski/skills' { $licensePath = 'skills/emilkowalski/LICENSE'; $licenseName = 'emilkowalski-skills-LICENSE' }
        'jakubkrehel/skills' { $licensePath = 'skills/jakubkrehel-skills/LICENSE'; $licenseName = 'jakubkrehel-skills-LICENSE' }
        'MengTo/Skills' { $licensePath = 'skills/mengto-skills/LICENSE'; $licenseName = 'mengto-skills-LICENSE' }
        'Owl-Listener/designer-skills' { $licensePath = 'skills/owl-listener-designer-skills/LICENSE'; $licenseName = 'owl-listener-designer-skills-LICENSE' }
        default { $licensePath = $null; $licenseName = $null }
    }

    if ($licensePath) {
        $sourceLicense = Join-Path $repositoryRoot $licensePath
        if (Test-Path $sourceLicense) {
            $destinationLicense = Join-Path (Join-Path $outputFullPath 'LICENSES') $licenseName
            New-Item -ItemType Directory -Path (Split-Path -Parent $destinationLicense) -Force | Out-Null
            Copy-Item -Path $sourceLicense -Destination $destinationLicense -Force
        }
    }
}

if (-not $NoZip) {
    $zipPath = "$outputFullPath.zip"
    if (Test-Path $zipPath) {
        Remove-Item -Path $zipPath -Force
    }

    Compress-Archive -Path (Join-Path $outputFullPath '*') -DestinationPath $zipPath -Force
    Write-Host "Exported $($manifest.skills.Count) must-have SKILL.md files to $outputFullPath and $zipPath"
} else {
    Write-Host "Exported $($manifest.skills.Count) must-have SKILL.md files to $outputFullPath"
}