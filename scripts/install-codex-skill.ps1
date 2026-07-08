<#
.SYNOPSIS
Installs the Universal Study Review skill into a target repository for Codex.

.DESCRIPTION
Copies SKILL.md, references/, and assets/ into:
  <TargetRepo>/.agents/skills/<SkillName>/

This creates a self-contained repo-scoped Codex skill in the target repository.

.EXAMPLE
powershell -NoProfile -ExecutionPolicy Bypass -File .\scripts\install-codex-skill.ps1 -TargetRepo "D:\CourseRepo" -Force -UpdateAgents
#>

[CmdletBinding()]
param(
    [string]$TargetRepo = (Get-Location).Path,
    [string]$SkillName = "universal-study-review",
    [switch]$Force,
    [switch]$UpdateAgents
)

$ErrorActionPreference = "Stop"

function Get-AbsolutePath {
    param([Parameter(Mandatory=$true)][string]$Path)
    $expanded = [Environment]::ExpandEnvironmentVariables($Path)
    if ([System.IO.Path]::IsPathRooted($expanded)) {
        return [System.IO.Path]::GetFullPath($expanded)
    }
    return [System.IO.Path]::GetFullPath((Join-Path (Get-Location).Path $expanded))
}

$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$sourceRoot = [System.IO.Path]::GetFullPath((Join-Path $scriptDir ".."))
$targetRoot = Get-AbsolutePath $TargetRepo

$sourceSkill = Join-Path $sourceRoot "SKILL.md"
$sourceReferences = Join-Path $sourceRoot "references"
$sourceAssets = Join-Path $sourceRoot "assets"

if (-not (Test-Path $targetRoot -PathType Container)) {
    throw "TargetRepo does not exist or is not a directory: $targetRoot"
}
if (-not (Test-Path $sourceSkill -PathType Leaf)) {
    throw "Source SKILL.md not found: $sourceSkill"
}
if (-not (Test-Path $sourceReferences -PathType Container)) {
    throw "Source references directory not found: $sourceReferences"
}
if (-not (Test-Path $sourceAssets -PathType Container)) {
    throw "Source assets directory not found: $sourceAssets"
}

$targetSkillDir = Join-Path $targetRoot (Join-Path ".agents\skills" $SkillName)

if (Test-Path $targetSkillDir) {
    if (-not $Force) {
        throw "Skill already exists at $targetSkillDir. Re-run with -Force to overwrite."
    }
    Remove-Item $targetSkillDir -Recurse -Force
}

New-Item -ItemType Directory -Path $targetSkillDir -Force | Out-Null
Copy-Item -Path $sourceSkill -Destination (Join-Path $targetSkillDir "SKILL.md") -Force
Copy-Item -Path $sourceReferences -Destination (Join-Path $targetSkillDir "references") -Recurse -Force
Copy-Item -Path $sourceAssets -Destination (Join-Path $targetSkillDir "assets") -Recurse -Force

if ($UpdateAgents) {
    $agentsPath = Join-Path $targetRoot "AGENTS.md"
    $snippet = @'

## Universal Study Review Skill

For study workflows, exam review, material indexing, prompt templates, and source-grounded academic Q&A, use:

```text
$universal-study-review
```
'@
    if (Test-Path $agentsPath -PathType Leaf) {
        $existing = Get-Content $agentsPath -Raw
        if ($existing -notmatch "Universal Study Review Skill") {
            Add-Content -Path $agentsPath -Value $snippet -Encoding UTF8
        }
    } else {
        Set-Content -Path $agentsPath -Value ("# Codex Repository Guidance`n" + $snippet) -Encoding UTF8
    }
}

Write-Host "Installed Codex skill:" -ForegroundColor Green
Write-Host "  $targetSkillDir"
Write-Host ""
Write-Host "Use in Codex:" -ForegroundColor Cyan
Write-Host "  Use `$universal-study-review to build a material index and review workflow for this course."
