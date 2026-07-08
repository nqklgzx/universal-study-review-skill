<#
.SYNOPSIS
One-command installer for the Universal Study Review Codex skill.

.DESCRIPTION
Downloads the latest repository archive from GitHub and installs the skill into:
  <TargetRepo>/.agents/skills/universal-study-review/

Default target is the current working directory. This supports both local execution and remote execution via:
  irm https://raw.githubusercontent.com/nqklgzx/universal-study-review-skill/main/scripts/bootstrap-codex-skill.ps1 | iex

Environment variables supported for remote execution:
  USR_TARGET_REPO   Target repository path. Default: current directory.
  USR_BRANCH        Git branch to download. Default: main.
  USR_FORCE         Set to 1/true/yes to overwrite an existing skill.
  USR_UPDATE_AGENTS Set to 1/true/yes to append AGENTS.md guidance.
#>

[CmdletBinding()]
param(
    [string]$TargetRepo,
    [string]$Branch,
    [switch]$Force,
    [switch]$UpdateAgents
)

$ErrorActionPreference = "Stop"

function Test-TruthyEnv {
    param([string]$Value)
    if ([string]::IsNullOrWhiteSpace($Value)) { return $false }
    return $Value.ToLowerInvariant() -in @("1", "true", "yes", "y", "on")
}

if (-not $TargetRepo) { $TargetRepo = if ($env:USR_TARGET_REPO) { $env:USR_TARGET_REPO } else { (Get-Location).Path } }
if (-not $Branch) { $Branch = if ($env:USR_BRANCH) { $env:USR_BRANCH } else { "main" } }
if (-not $Force -and (Test-TruthyEnv $env:USR_FORCE)) { $Force = $true }
if (-not $UpdateAgents -and (Test-TruthyEnv $env:USR_UPDATE_AGENTS)) { $UpdateAgents = $true }

$tempRoot = Join-Path $env:TEMP ("universal-study-review-skill-" + [Guid]::NewGuid().ToString("N"))
New-Item -ItemType Directory -Path $tempRoot -Force | Out-Null

$zipUrl = "https://github.com/nqklgzx/universal-study-review-skill/archive/refs/heads/$Branch.zip"
$zipPath = Join-Path $tempRoot "skill.zip"

Write-Host "Downloading Universal Study Review Skill..." -ForegroundColor Cyan
Write-Host "  $zipUrl"

Invoke-WebRequest -UseBasicParsing -Uri $zipUrl -OutFile $zipPath
Expand-Archive -Path $zipPath -DestinationPath $tempRoot -Force

$sourceDir = Get-ChildItem -Path $tempRoot -Directory | Where-Object { $_.Name -like "universal-study-review-skill-*" } | Select-Object -First 1
if (-not $sourceDir) {
    throw "Downloaded archive did not contain the expected universal-study-review-skill directory."
}

$installer = Join-Path $sourceDir.FullName "scripts\install-codex-skill.ps1"
if (-not (Test-Path $installer -PathType Leaf)) {
    throw "Installer not found in downloaded package: $installer"
}

& $installer -TargetRepo $TargetRepo -Force:$Force -UpdateAgents:$UpdateAgents

Write-Host ""
Write-Host "Bootstrap complete." -ForegroundColor Green
Write-Host "Temporary files were left at:" -ForegroundColor DarkGray
Write-Host "  $tempRoot"
