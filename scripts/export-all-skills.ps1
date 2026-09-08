[CmdletBinding()]
param(
    [string]$OutputPath = "dist/all-skills",
    [switch]$NoZip
)

$ErrorActionPreference = 'Stop'

$repositoryRoot = Split-Path -Parent $PSScriptRoot
$outputFullPath = Join-Path $repositoryRoot $OutputPath
$skillsSourcePath = Join-Path $repositoryRoot 'skills'

if (-not (Test-Path $skillsSourcePath)) {
    throw "Skills directory not found: $skillsSourcePath"
}

if (Test-Path $outputFullPath) {
    Remove-Item -Path $outputFullPath -Recurse -Force
}

New-Item -ItemType Directory -Path $outputFullPath -Force | Out-Null

$docs = @(
    'README.md',
    'LICENSE',
    'SKILL-SOURCES.md',
    'SKILL-TIERS.md',
    'SKILL-CHEATSHEET.md',
    'perfect-design-pipeline.md'
)

foreach ($doc in $docs) {
    $sourceDoc = Join-Path $repositoryRoot $doc
    if (Test-Path $sourceDoc) {
        Copy-Item -Path $sourceDoc -Destination (Join-Path $outputFullPath $doc) -Force
    }
}

$flatSkillsPath = Join-Path $outputFullPath 'skills-by-name'
New-Item -ItemType Directory -Path $flatSkillsPath -Force | Out-Null

$skillFiles = Get-ChildItem -Path $skillsSourcePath -Filter SKILL.md -Recurse
$manifestSkills = @($skillFiles | ForEach-Object {
    $nameLine = Select-String -Path $_.FullName -Pattern '^name:' | Select-Object -First 1
    $skillName = if ($nameLine) { $nameLine.Line.Replace('name:', '').Trim() } else { $_.Directory.Name }
    $exportFileName = "$skillName.md"
    $exportPath = Join-Path $flatSkillsPath $exportFileName

    Copy-Item -Path $_.FullName -Destination $exportPath -Force

    [ordered]@{
        name = $skillName
        originalPath = $_.FullName.Substring($repositoryRoot.Length + 1).Replace('\', '/')
        exportPath = "skills-by-name/$exportFileName"
    }
} | Sort-Object name)

$manifest = [ordered]@{
    name = 'dz-design-collection-all-skills'
    description = 'All vendored SKILL.md files from dz-design-collection, exported as a flat skills-by-name folder.'
    count = $manifestSkills.Count
    generatedAt = (Get-Date).ToUniversalTime().ToString('o')
    skills = $manifestSkills
}

$manifestDirectory = Join-Path $outputFullPath 'manifests'
New-Item -ItemType Directory -Path $manifestDirectory -Force | Out-Null
$manifest | ConvertTo-Json -Depth 5 | Set-Content -Path (Join-Path $manifestDirectory 'all-skills.json') -Encoding UTF8

$indexLines = @(
    '# All Exported Skills',
    '',
    "Generated from $($manifestSkills.Count) vendored SKILL.md files.",
    '',
    '| Skill | Exported file | Original path |',
    '|---|---|---|'
)
$indexLines += $manifestSkills | ForEach-Object { "| `$($_.name)` | [$($_.exportPath)]($($_.exportPath)) | `$($_.originalPath)` |" }
$indexLines | Set-Content -Path (Join-Path $outputFullPath 'INDEX.md') -Encoding UTF8

$licenses = @(
    @{ Path = 'skills/codeswithroh-tastemaker/LICENSE'; Name = 'codeswithroh-tastemaker-LICENSE' },
    @{ Path = 'skills/conardli-garden-skills/LICENSE'; Name = 'conardli-garden-skills-LICENSE' },
    @{ Path = 'skills/elayadesign-ai-design-skills/LICENSE'; Name = 'elayadesign-ai-design-skills-LICENSE' },
    @{ Path = 'skills/emilkowalski/LICENSE'; Name = 'emilkowalski-skills-LICENSE' },
    @{ Path = 'skills/jakubkrehel-skills/LICENSE'; Name = 'jakubkrehel-skills-LICENSE' },
    @{ Path = 'skills/mengto-skills/LICENSE'; Name = 'mengto-skills-LICENSE' },
    @{ Path = 'skills/owl-listener-designer-skills/LICENSE'; Name = 'owl-listener-designer-skills-LICENSE' }
)

foreach ($license in $licenses) {
    $sourceLicense = Join-Path $repositoryRoot $license.Path
    if (Test-Path $sourceLicense) {
        $destinationLicense = Join-Path (Join-Path $outputFullPath 'LICENSES') $license.Name
        New-Item -ItemType Directory -Path (Split-Path -Parent $destinationLicense) -Force | Out-Null
        Copy-Item -Path $sourceLicense -Destination $destinationLicense -Force
    }
}

if (-not $NoZip) {
    $zipPath = "$outputFullPath.zip"
    if (Test-Path $zipPath) {
        Remove-Item -Path $zipPath -Force
    }

    Compress-Archive -Path (Join-Path $outputFullPath '*') -DestinationPath $zipPath -Force
    Write-Host "Exported $($manifestSkills.Count) SKILL.md files to $outputFullPath and $zipPath"
} else {
    Write-Host "Exported $($manifestSkills.Count) SKILL.md files to $outputFullPath"
}