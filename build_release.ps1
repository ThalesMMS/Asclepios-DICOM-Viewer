# Script de Build Release do Asclepios DICOM Viewer
# Build otimizado para produção

Write-Host "=== Build Release - Asclepios DICOM Viewer ===" -ForegroundColor Green

# Executar o script principal com configuração Release
& .\build_and_deploy.ps1 -Configuration "Release" -Platform "x64"
