# Build Scripts - Asclepios DICOM Viewer

This directory contains automated scripts for building and deploying the Asclepios DICOM Viewer. For complete documentation, see the main [README.md](README.md).

## 📋 Available Scripts

### 1. `build_and_deploy.ps1` - Complete Build
**Usage:** `.\build_and_deploy.ps1`
- Cleans previous build
- Executes complete build
- Runs windeployqt
- Copies additional required DLLs
- Verifies dependencies
- Creates execution script

**Optional parameters:**
- `-Configuration`: "Debug" (default) or "Release"
- `-Platform`: "x64" (default)

**Example:**
```powershell
.\build_and_deploy.ps1 -Configuration Release
```

### 2. `quick_build.ps1` - Fast Build
**Usage:** `.\quick_build.ps1`
- Incremental build (no cleanup)
- Copies Qt5Concurrentd.dll only if needed
- Ideal for development

### 3. `build_release.ps1` - Production Build
**Usage:** `.\build_release.ps1`
- Optimized Release build
- Calls build_and_deploy.ps1 with Release configuration

### 4. `run_gui.bat` - Run Application
**Usage:** `.\run_gui.bat`
- Launches Asclepios DICOM Viewer
- Created automatically by build scripts

## 🚀 Quick Usage

### First time or complete build:
```powershell
.\build_and_deploy.ps1
```

### Development (incremental builds):
```powershell
.\quick_build.ps1
```

### Production build:
```powershell
.\build_release.ps1
```

### Run application:
```powershell
.\run_gui.bat
```

## 📁 Output Structure

After build, files are located in:
- **Debug:** `src\x64\Debug\`
- **Release:** `src\x64\Release\`

### Automatically Included DLLs:
- Qt5Cored.dll, Qt5Guid.dll, Qt5Widgetsd.dll
- **Qt5Concurrentd.dll** (automatically copied)
- Qt5Svgd.dll, Qt5Networkd.dll (if needed)
- Qt5Qmld.dll, Qt5Quickd.dll (if needed)
- Qt5QuickWidgetsd.dll (if needed)
- core.dll (project library)
- System DLLs (OpenGL, D3D, etc.)

## ⚠️ Troubleshooting

### "Qt5Concurrentd.dll was not found" error
- Run `.\build_and_deploy.ps1` to ensure all DLLs are copied

### PowerShell script execution error
```powershell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
```

### Build fails
- Check if Qt VS Tools is configured
- Verify Qt path is correct: `C:\Qt5\5.15.2\msvc2019_64\`

## 📝 Logs

Scripts show detailed progress and verify all dependencies are present.
