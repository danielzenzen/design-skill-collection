[CmdletBinding()]
param()

$ErrorActionPreference = 'Stop'

$repositoryRoot = Split-Path -Parent $PSScriptRoot
$temporaryRoot = Join-Path ([System.IO.Path]::GetTempPath()) "dz-design-skills-$([guid]::NewGuid())"
$sources = @(
    @{ Directory = 'emilkowalski'; Url = 'https://github.com/emilkowalski/skills.git' },
    @{ Directory = 'conardli-garden-skills'; Url = 'https://github.com/ConardLi/garden-skills.git' },
    @{ Directory = 'elayadesign-ai-design-skills'; Url = 'https://github.com/elayadesign/ai-design-skills.git' },
    @{ Directory = 'mengto-skills'; Url = 'https://github.com/MengTo/Skills.git' },
    @{ Directory = 'jakubkrehel-skills'; Url = 'https://github.com/jakubkrehel/skills.git' },
    @{ Directory = 'codeswithroh-tastemaker'; Url = 'https://github.com/codeswithroh/tastemaker.git' },
    @{ Directory = 'owl-listener-designer-skills'; Url = 'https://github.com/Owl-Listener/designer-skills.git' }
)

New-Item -ItemType Directory -Path $temporaryRoot | Out-Null

try {
    foreach ($source in $sources) {
        $checkoutPath = Join-Path $temporaryRoot $source.Directory
        $destinationPath = Join-Path $repositoryRoot "skills/$($source.Directory)"

        git clone --depth 1 $source.Url $checkoutPath
        if ($LASTEXITCODE -ne 0) {
            throw "Could not clone $($source.Url)."
        }

        New-Item -ItemType Directory -Path $destinationPath -Force | Out-Null
        Get-ChildItem -Path $destinationPath -Force | Remove-Item -Recurse -Force
        Get-ChildItem -Path $checkoutPath -Force |
            Where-Object Name -ne '.git' |
            Copy-Item -Destination $destinationPath -Recurse -Force
    }
}
finally {
    Remove-Item -Path $temporaryRoot -Recurse -Force -ErrorAction SilentlyContinue
}