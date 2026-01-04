param(
  [Parameter(Mandatory=$true)][string]$ServiceName
)

$root = Split-Path -Parent $PSScriptRoot
$servicePath = Join-Path $root ("services\\" + $ServiceName)

if (-not (Test-Path $servicePath)) {
  Write-Error "Service not found: $servicePath"
  exit 1
}

Set-Location $servicePath
mvn spring-boot:run
