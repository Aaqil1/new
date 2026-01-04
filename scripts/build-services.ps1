$ErrorActionPreference = "Stop"
$root = Split-Path -Parent $PSScriptRoot
$servicesRoot = Join-Path $root "services"

Get-ChildItem -Directory $servicesRoot | ForEach-Object {
  Write-Host "Building $($_.Name)..."
  Push-Location $_.FullName
  try {
    mvn -q -DskipTests package
  } finally {
    Pop-Location
  }
}

Write-Host "Done."
