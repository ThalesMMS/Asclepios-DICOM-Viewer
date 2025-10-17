param(
    [string]$DicomPath = "D:\Asclepios-DICOM-Viewer\KARLA",
    [int]$TimeoutSeconds = 30,
    [string]$ExePath = ".\src\x64\Debug\gui.exe",
    [string]$LogPath = "vtk-headless.log"
)

if (-not (Test-Path $ExePath)) {
    throw "Executable not found at '$ExePath'. Build the project first."
}

Get-Process -Name "gui" -ErrorAction SilentlyContinue | ForEach-Object {
    Write-Warning "Terminating leftover gui.exe process (Id=$($_.Id))"
    Stop-Process -Id $_.Id -Force
}
Start-Sleep -Milliseconds 200

if (Test-Path $LogPath) {
    try {
        Remove-Item $LogPath -Force
    }
    catch {
        Write-Warning "Could not delete '$LogPath': $($_.Exception.Message)"
    }
}

$arguments = @("--headless-dicom-test", $DicomPath)

$proc = Start-Process -FilePath $ExePath `
    -ArgumentList $arguments `
    -WorkingDirectory (Get-Location) `
    -NoNewWindow `
    -PassThru

$timedOut = $false

if (-not (Wait-Process -InputObject $proc -Timeout $TimeoutSeconds)) {
    Write-Warning "Timeout reached after $TimeoutSeconds seconds. Terminating process id $($proc.Id)."
    Stop-Process -Id $proc.Id -Force
    $timedOut = $true
    Start-Sleep -Milliseconds 200
}

$exitCode = $null
if ($proc.HasExited) {
    $exitCode = $proc.ExitCode
}

$logContent = @()
if (Test-Path $LogPath) {
    $logContent = Get-Content $LogPath
}

[pscustomobject]@{
    TimedOut = $timedOut
    ExitCode = $exitCode
    LogExists = (Test-Path $LogPath)
} | Format-Table -AutoSize

if ($logContent.Count -gt 0) {
    "`n==== vtk-headless.log (first 200 lines) ===="
    $logContent | Select-Object -First 200
    if ($logContent.Count -gt 240) {
        "`n... (trimmed) ...`n"
        "==== vtk-headless.log (last 40 lines) ===="
        $logContent | Select-Object -Last 40
    }
} else {
    Write-Warning "vtk-headless.log is empty or missing."
}
