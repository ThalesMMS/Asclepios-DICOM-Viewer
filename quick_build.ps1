# Script de Build Rápido do Asclepios DICOM Viewer
# Para builds incrementais sem limpeza completa

param(
    [string]$Configuration = "Debug",
    [string]$Platform = "x64"
)

Write-Host "=== Build Rápido - Asclepios DICOM Viewer ===" -ForegroundColor Green

# Caminhos
$SolutionPath = "src\Asclepios-DICOM-Viewer.sln"
$OutputDir = "src\x64\$Configuration"
$MSBuildPath = "C:\Program Files\Microsoft Visual Studio\2022\Community\MSBuild\Current\Bin\MSBuild.exe"

# Build
Write-Host "Executando build..." -ForegroundColor Cyan
& $MSBuildPath $SolutionPath /m /p:Configuration=$Configuration /p:Platform=$Platform /p:QtMsBuild=$env:LOCALAPPDATA\QtMsBuild /nologo

if ($LASTEXITCODE -eq 0) {
    Write-Host "Build concluído!" -ForegroundColor Green
    
    # Copiar DLLs essenciais se necessário
    $qtConcurrentDll = "src\x64\$Configuration\Qt5Concurrentd.dll"
    if (-not (Test-Path $qtConcurrentDll)) {
        Write-Host "Copiando Qt5Concurrentd.dll..." -ForegroundColor Yellow
        Copy-Item "C:\Qt5\5.15.2\msvc2019_64\bin\Qt5Concurrentd.dll" $qtConcurrentDll -Force
    }
    
    Write-Host "Para executar: .\run_gui.bat" -ForegroundColor White
} else {
    Write-Error "Build falhou!"
}
