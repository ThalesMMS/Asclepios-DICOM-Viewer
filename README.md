# Asclepios DICOM Viewer

A comprehensive DICOM medical imaging viewer built with C++, Qt, and VTK. This project provides advanced 2D and 3D visualization capabilities for medical imaging data.

## 🏥 Features

### 2D Viewer
- Intuitive layout system for displaying DICOM images from different imaging modalities
- Multi-window support with customizable layouts
- Advanced window/level adjustments
- Overlay support and annotations
- Thumbnail navigation

### 3D Post-Processing
- **3D Rendering**: MIP (Maximum Intensity Projection), Volume Rendering
- **MPR (Multiplanar Reconstruction)**: Axial, Coronal, and Sagittal views
- Real-time 3D manipulation and visualization
- Advanced filtering and rendering techniques

## 🖼️ Screenshots

### 2D Viewer
![2D Viewer 1](https://github.com/GavriloviciEduard/Asclepios-DICOM-Viewer/blob/gui/res/2d/1.PNG)
![2D Viewer 2](https://github.com/GavriloviciEduard/Asclepios-DICOM-Viewer/blob/gui/res/2d/2.PNG)
![2D Viewer 3](https://github.com/GavriloviciEduard/Asclepios-DICOM-Viewer/blob/gui/res/2d/3.PNG)
![2D Viewer 4](https://github.com/GavriloviciEduard/Asclepios-DICOM-Viewer/blob/gui/res/2d/4.PNG)
![2D Viewer 5](https://github.com/GavriloviciEduard/Asclepios-DICOM-Viewer/blob/gui/res/2d/5.PNG)

### 3D Rendering
![3D Rendering 1](https://github.com/GavriloviciEduard/Asclepios-DICOM-Viewer/blob/gui/res/3d/1.PNG)
![3D Rendering 2](https://github.com/GavriloviciEduard/Asclepios-DICOM-Viewer/blob/gui/res/3d/2.PNG)
![3D Rendering 3](https://github.com/GavriloviciEduard/Asclepios-DICOM-Viewer/blob/gui/res/3d/3.PNG)
![3D Rendering 4](https://github.com/GavriloviciEduard/Asclepios-DICOM-Viewer/blob/gui/res/3d/4.PNG)
![3D Rendering 5](https://github.com/GavriloviciEduard/Asclepios-DICOM-Viewer/blob/gui/res/3d/5.PNG)
![3D Rendering 6](https://github.com/GavriloviciEduard/Asclepios-DICOM-Viewer/blob/gui/res/3d/6.PNG)
![3D Rendering 7](https://github.com/GavriloviciEduard/Asclepios-DICOM-Viewer/blob/gui/res/3d/7.PNG)
![3D Rendering 8](https://github.com/GavriloviciEduard/Asclepios-DICOM-Viewer/blob/gui/res/3d/8.PNG)
![3D Rendering 9](https://github.com/GavriloviciEduard/Asclepios-DICOM-Viewer/blob/gui/res/3d/9.PNG)
![3D Rendering 10](https://github.com/GavriloviciEduard/Asclepios-DICOM-Viewer/blob/gui/res/3d/10.PNG)
![3D Rendering 11](https://github.com/GavriloviciEduard/Asclepios-DICOM-Viewer/blob/gui/res/3d/11.PNG)

### Multiplanar Reconstruction
![MPR 1](https://github.com/GavriloviciEduard/Asclepios-DICOM-Viewer/blob/gui/res/3d/12.PNG)
![MPR 2](https://github.com/GavriloviciEduard/Asclepios-DICOM-Viewer/blob/gui/res/3d/13.PNG)
![MPR 3](https://github.com/GavriloviciEduard/Asclepios-DICOM-Viewer/blob/gui/res/3d/14.PNG)
![MPR 4](https://github.com/GavriloviciEduard/Asclepios-DICOM-Viewer/blob/gui/res/3d/15.PNG)
![MPR 5](https://github.com/GavriloviciEduard/Asclepios-DICOM-Viewer/blob/gui/res/3d/16.PNG)
![MPR 6](https://github.com/GavriloviciEduard/Asclepios-DICOM-Viewer/blob/gui/res/3d/17.PNG)

## 🛠️ Prerequisites

### Required Software
- **Visual Studio 2022 Community** (or higher)
- **Qt 5.15.2** installed at `C:\Qt5\5.15.2\msvc2019_64\`
- **Qt VS Tools** extension for Visual Studio
- **Windows 10/11** (x64)

### Dependencies
The project uses the following libraries (pre-built versions included):
- **VTK 8.2** - Visualization Toolkit
- **DCMTK** - DICOM Toolkit
- **vtk-dicom** - DICOM for VTK
- **Qt 5.15.2** - GUI Framework

## 🚀 Quick Start

### Automated Build (Recommended)

1. **Clone the repository:**
   ```bash
   git clone <repository-url>
   cd Asclepios-DICOM-Viewer
   ```

2. **Run the automated build script:**
   ```powershell
   .\build_and_deploy.ps1
   ```

3. **Launch the application:**
   ```powershell
   .\run_gui.bat
   ```

### Manual Build

1. **Open the solution in Visual Studio:**
   ```
   src\Asclepios-DICOM-Viewer.sln
   ```

2. **Configure Qt VS Tools:**
   - Go to `Extensions > Qt VS Tools > Qt Project Settings`
   - Set Qt Installation to `C:\Qt5\5.15.2\msvc2019_64`

3. **Build the solution:**
   - Select `Debug|x64` or `Release|x64` configuration
   - Build > Build Solution (Ctrl+Shift+B)

4. **Deploy Qt dependencies:**
   ```powershell
   C:\Qt5\5.15.2\msvc2019_64\bin\windeployqt.exe --debug src\x64\Debug\gui.exe
   ```

5. **Copy additional required DLLs:**
   ```powershell
   Copy-Item "C:\Qt5\5.15.2\msvc2019_64\bin\Qt5Concurrentd.dll" "src\x64\Debug\"
   ```

## 📋 Build Scripts

The project includes automated PowerShell scripts for building and deployment. For detailed documentation, see [doc/BUILD_SCRIPTS.md](doc/BUILD_SCRIPTS.md).

### Available Scripts

| Script | Purpose | Usage |
|--------|---------|-------|
| `build_and_deploy.ps1` | Complete build with deployment | `.\build_and_deploy.ps1` |
| `quick_build.ps1` | Fast incremental build | `.\quick_build.ps1` |
| `build_release.ps1` | Production build | `.\build_release.ps1` |
| `run_gui.bat` | Launch application | `.\run_gui.bat` |

### Quick Usage

```powershell
# Complete build (recommended)
.\build_and_deploy.ps1

# Quick build for development
.\quick_build.ps1

# Production build
.\build_release.ps1

# Run application
.\run_gui.bat
```

## 📁 Project Structure

```
Asclepios-DICOM-Viewer/
├── src/
│   ├── Asclepios-DICOM-Viewer.sln    # Visual Studio solution
│   ├── core/                         # Core DICOM processing
│   ├── gui/                          # Qt GUI components
│   └── x64/
│       ├── Debug/                    # Debug build output
│       └── Release/                  # Release build output
├── lib/                              # Pre-built libraries
│   ├── include/                      # Header files
│   ├── debug/                        # Debug libraries
│   └── release/                      # Release libraries
├── deps/                             # External dependencies
├── doc/                             # Documentation
│   ├── BUILD_SCRIPTS.md              # Build scripts documentation
│   ├── CHANGELOG.md                  # Project changelog
│   ├── contexto.md                   # Project context
│   ├── dcmtk-2d-migration.md         # DCMTK migration notes
│   ├── CodexStatusReport.md          # Development status
│   └── coreUML.mdj                   # UML diagrams
├── res/                              # Application resources
├── build_and_deploy.ps1              # Main build script
├── quick_build.ps1                   # Fast build script
├── build_release.ps1                 # Release build script
├── run_gui.bat                       # Application launcher
├── AGENTS.md                     # AI agent documentation
└── README.md                         # This file
```

## 🔧 Troubleshooting

### Common Issues

#### "Qt5Concurrentd.dll was not found"
**Solution:** Run the automated build script:
```powershell
.\build_and_deploy.ps1
```

#### PowerShell execution policy error
**Solution:** Enable script execution:
```powershell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
```

#### Build fails with MOC errors
**Solution:** Clean and rebuild:
```powershell
.\build_and_deploy.ps1
```

#### Qt VS Tools not found
**Solution:** 
1. Install Qt VS Tools extension in Visual Studio
2. Configure Qt installation path in `Extensions > Qt VS Tools > Qt Project Settings`

### Build Output Locations

- **Debug:** `src\x64\Debug\gui.exe`
- **Release:** `src\x64\Release\gui.exe`

### Required DLLs (Automatically Deployed)

The build scripts automatically copy these DLLs:
- Qt5Cored.dll, Qt5Guid.dll, Qt5Widgetsd.dll
- Qt5Concurrentd.dll, Qt5Svgd.dll
- Qt5Networkd.dll, Qt5Qmld.dll (if needed)
- Qt5Quickd.dll, Qt5QuickWidgetsd.dll (if needed)
- core.dll (project library)
- System DLLs (OpenGL, D3D, etc.)

## 🧪 Testing

### Manual Testing
1. Load anonymized DICOM studies (single-frame, multi-frame, compressed)
2. Test 2D layouts and MPR views
3. Verify 3D rendering functionality
4. Check GPU rendering performance
5. Monitor `viewer.log` for any issues

### Test Data
- Use anonymized DICOM datasets only
- Never commit clinical data to the repository
- Keep test images outside the repository

## 📚 Documentation

- **[Build Scripts](doc/BUILD_SCRIPTS.md)** - Detailed documentation for build scripts
- **[Changelog](doc/CHANGELOG.md)** - Project history and changes
- **[Agents](doc/AGENTS.md)** - AI agent documentation
- **[Context](doc/contexto.md)** - Project context and background
- **[DCMTK Migration](doc/dcmtk-2d-migration.md)** - DCMTK 2D migration notes
- **[Codex Status Report](doc/CodexStatusReport.md)** - Development status report

## 📚 Libraries and Dependencies

- **[Qt](https://www.qt.io/)** - Cross-platform GUI framework
- **[VTK](https://vtk.org/)** - Visualization Toolkit for 3D graphics
- **[DCMTK](https://dicom.offis.de/dcmtk.php.en)** - DICOM Toolkit for medical imaging
- **[vtk-dicom](http://dgobbi.github.io/vtk-dicom/)** - DICOM support for VTK
- **[Qt-Nice-Frameless-Window](https://github.com/Bringer-of-Light/Qt-Nice-Frameless-Window)** - Custom window styling

## 📄 License

This project is part of a Bachelor's thesis. Please refer to the LICENSE file for details.

## 🤝 Contributing

1. Follow the coding style guidelines in the repository
2. Use Allman braces and 4-space indentation
3. Maintain PascalCase for classes and camelCase for functions
4. Test thoroughly with anonymized DICOM data
5. Update documentation for any significant changes

## 📞 Support

For issues and questions:
1. Check the troubleshooting section above
2. Review the build logs for specific error messages
3. Ensure all prerequisites are properly installed
4. Verify Qt VS Tools configuration

---

**Note:** This is a medical imaging application. Always use anonymized test data and follow proper data handling protocols.