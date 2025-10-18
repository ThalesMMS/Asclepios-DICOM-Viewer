# Script de Build e Deploy do Asclepios DICOM Viewer
# Este script faz o build completo e copia todas as DLLs necessárias

param(
    [string]$Configuration = "Debug",
    [string]$Platform = "x64"
)

Write-Host "=== Asclepios DICOM Viewer - Build e Deploy ===" -ForegroundColor Green
Write-Host "Configuração: $Configuration" -ForegroundColor Yellow
Write-Host "Plataforma: $Platform" -ForegroundColor Yellow
Write-Host ""

# Definir caminhos
$ProjectRoot = $PSScriptRoot
$SolutionPath = Join-Path $ProjectRoot "src\Asclepios-DICOM-Viewer.sln"
$OutputDir = Join-Path $ProjectRoot "src\x64\$Configuration"
$QtDir = "C:\Qt5\5.15.2\msvc2019_64"
$MSBuildPath = "C:\Program Files\Microsoft Visual Studio\2022\Community\MSBuild\Current\Bin\MSBuild.exe"

# Verificar se os caminhos existem
if (-not (Test-Path $SolutionPath)) {
    Write-Error "Solução não encontrada: $SolutionPath"
    exit 1
}

if (-not (Test-Path $MSBuildPath)) {
    Write-Error "MSBuild não encontrado: $MSBuildPath"
    exit 1
}

if (-not (Test-Path $QtDir)) {
    Write-Error "Qt não encontrado: $QtDir"
    exit 1
}

Write-Host "1. Limpando build anterior..." -ForegroundColor Cyan
& $MSBuildPath $SolutionPath /t:Clean /p:Configuration=$Configuration /p:Platform=$Platform /p:QtMsBuild=$env:LOCALAPPDATA\QtMsBuild /nologo

Write-Host "2. Executando build..." -ForegroundColor Cyan
$buildResult = & $MSBuildPath $SolutionPath /m /p:Configuration=$Configuration /p:Platform=$Platform /p:QtMsBuild=$env:LOCALAPPDATA\QtMsBuild /nologo

if ($LASTEXITCODE -ne 0) {
    Write-Error "Build falhou!"
    exit 1
}

Write-Host "3. Verificando executável..." -ForegroundColor Cyan
$exePath = Join-Path $OutputDir "gui.exe"
if (-not (Test-Path $exePath)) {
    Write-Error "Executável não encontrado: $exePath"
    exit 1
}

Write-Host "4. Executando windeployqt..." -ForegroundColor Cyan
$windeployqt = Join-Path $QtDir "bin\windeployqt.exe"
$configLower = $Configuration.ToLower()
& $windeployqt "--$configLower" --force $exePath

Write-Host "5. Copiando DLLs adicionais necessárias..." -ForegroundColor Cyan

# Lista de DLLs que podem ser necessárias mas não são detectadas pelo windeployqt
$additionalDlls = @(
    "Qt5Concurrentd.dll",
    "Qt5Networkd.dll",
    "Qt5Qmld.dll",
    "Qt5Quickd.dll",
    "Qt5QuickWidgetsd.dll"
)

$qtBinDir = Join-Path $QtDir "bin"
foreach ($dll in $additionalDlls) {
    $sourceDll = Join-Path $qtBinDir $dll
    $targetDll = Join-Path $OutputDir $dll
    
    if (Test-Path $sourceDll) {
        if (-not (Test-Path $targetDll)) {
            Write-Host "  Copiando $dll..." -ForegroundColor Gray
            Copy-Item $sourceDll $targetDll -Force
        } else {
            Write-Host "  $dll já existe" -ForegroundColor Gray
        }
    }
}

Write-Host "6. Verificando dependências..." -ForegroundColor Cyan
$dependencies = @(
    "Qt5Cored.dll",
    "Qt5Guid.dll", 
    "Qt5Widgetsd.dll",
    "Qt5Concurrentd.dll",
    "core.dll"
)

$missingDlls = @()
foreach ($dll in $dependencies) {
    $dllPath = Join-Path $OutputDir $dll
    if (-not (Test-Path $dllPath)) {
        $missingDlls += $dll
    }
}

if ($missingDlls.Count -gt 0) {
    Write-Warning "DLLs em falta: $($missingDlls -join ', ')"
} else {
    Write-Host "  Todas as dependências principais estão presentes!" -ForegroundColor Green
}

Write-Host "7. Criando script de execução..." -ForegroundColor Cyan
$runScript = Join-Path $ProjectRoot "run_gui.bat"
$runScriptContent = @"
@echo off
echo Iniciando Asclepios DICOM Viewer...
cd /d "%~dp0src\x64\$Configuration"
start gui.exe
echo Aplicativo iniciado!
pause
"@
Set-Content -Path $runScript -Value $runScriptContent -Encoding ASCII

Write-Host ""
Write-Host "=== BUILD CONCLUÍDO COM SUCESSO! ===" -ForegroundColor Green
Write-Host "Executável: $exePath" -ForegroundColor White
Write-Host "Para executar: .\run_gui.bat" -ForegroundColor White
Write-Host ""

# Mostrar tamanho do executável
$exeInfo = Get-Item $exePath
Write-Host "Tamanho: $([math]::Round($exeInfo.Length/1MB, 2)) MB" -ForegroundColor Gray
Write-Host "Data: $($exeInfo.LastWriteTime)" -ForegroundColor Gray
