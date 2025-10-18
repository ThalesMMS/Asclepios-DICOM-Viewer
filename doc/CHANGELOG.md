# Changelog

All notable changes to the Asclepios DICOM Viewer project will be documented in this file.

## [2025-01-18] - Build System Improvements

### Added
- **Automated build scripts** for streamlined development workflow
  - `build_and_deploy.ps1` - Complete build with automatic DLL deployment
  - `quick_build.ps1` - Fast incremental builds for development
  - `build_release.ps1` - Production-ready builds
  - `run_gui.bat` - Application launcher (auto-generated)

### Fixed
- **Qt5Concurrentd.dll deployment issue** - DLL now automatically copied during build
- **MOC compilation errors** - Fixed duplicate header entries in .vcxproj file
- **Build configuration** - Corrected Qt VS Tools integration
- **Dependency management** - All required Qt DLLs now properly deployed

### Improved
- **Build process** - Fully automated from source to executable
- **Documentation** - Comprehensive README.md with setup and usage instructions
- **Error handling** - Better error messages and troubleshooting guides
- **Development workflow** - One-command build and deployment

### Technical Details
- Fixed duplicate `<ClInclude>` and `<QtMoc>` entries in `gui.vcxproj`
- Added automatic detection and copying of additional Qt DLLs
- Integrated windeployqt for proper Qt dependency deployment
- Added dependency verification and build status reporting

### Files Modified
- `src/gui/gui.vcxproj` - Fixed MOC configuration
- `README.md` - Complete rewrite with comprehensive documentation
- `BUILD_SCRIPTS.md` - Detailed script documentation

### Files Added
- `build_and_deploy.ps1` - Main build script
- `quick_build.ps1` - Fast build script  
- `build_release.ps1` - Release build script
- `run_gui.bat` - Application launcher (auto-generated)
- `CHANGELOG.md` - This changelog file

## Previous Versions

### [Original] - Initial Release
- Basic DICOM viewer functionality
- 2D and 3D visualization capabilities
- Manual build process
- Manual DLL deployment required
