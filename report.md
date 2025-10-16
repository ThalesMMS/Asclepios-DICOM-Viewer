# Build and Dependency Report

## Overview

- Reconfigured VTK to version **8.2** and rebuilt both Release and Debug static libraries against **Qt 5.15.2**, installing the artifacts under `deps/vtk-install-qt5-release` and `deps/vtk-install-qt5-debug`.
- Rebuilt **vtk-dicom** (Release/Debug) using the new VTK packages and staged the results, along with the VTK headers, into the solution’s expected layout (`lib/release`, `lib/debug`, `lib/include`).
- Updated `core.vcxproj` and `gui.vcxproj` so the include paths point to `lib/include/vtk-8.2` and the linker inputs reference `*-8.2.lib` files.
- Verified that `core.vcxproj` now links successfully in Release with the new dependency set.

## Current Status

- `msbuild` on the full solution still fails for **gui.vcxproj** because `QtMsBuild` attempts to import `qt_tasks.targets`, which is not present in the checked-in tools.  
- That targets file (and the other generated MSBuild helpers) are normally produced by installing the **Qt Visual Studio Tools** extension or by running its T4 generator with the VS SDK assemblies available. Those prerequisites are currently missing from the local repo, so the Qt build tasks (moc/uic/rcc) never execute and the GUI project cannot compile.

## Remaining Work / Recommendations

1. Install the official *Qt Visual Studio Tools* extension (or copy an existing `QtMsBuild` distribution that already includes `qt_tasks.targets`, `qt_globals.targets`, etc.) and set `QtMsBuild` in `gui.vcxproj` to that location.  
2. After the targets import resolves, re-run  
   `MSBuild.exe src\Asclepios-DICOM-Viewer.sln /m /p:Configuration=Release /p:Platform=x64`  
   and repeat for Debug if required.  
3. Optionally prune the temporary build trees under `deps` (`vtk-build-qt5`, `vtk-dicom-build-*`, etc.) once the binaries are staged, to keep the repo tidy.

