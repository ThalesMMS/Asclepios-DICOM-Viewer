# Repository Guidelines

## Project Structure & Module Organization
- `src/Asclepios-DICOM-Viewer.sln` drives the solution; open it with Qt VS Tools configured for Qt 5.15.
- `src/core` hosts DICOM domain models, readers, and repositories; keep shared logic under `asclepios::core`.
- `src/gui` houses Qt widgets, `.ui` forms, and `main.cpp`; UI assets live under `src/gui/res`, with shared icons in `res/`.
- `lib/{include,debug,release}` store generated headers and binaries for VTK, vtk-dicom, and DCMTK; align project paths when upgrading.
- `deps` caches external source/build trees, and `doc/coreUML.mdj` captures diagrams—modify either only alongside coordinated upgrades.

## Build, Test, and Development Commands
- Launch an x64 Native Tools command prompt with Qt 5.15 and VTK 8.2 environment variables pointing to `deps/`.
- `msbuild src\Asclepios-DICOM-Viewer.sln /t:Build /p:Configuration=Debug /p:Platform=x64` builds `core` and `gui`.
- Swap to `Configuration=Release` for optimized output landing in `src\gui\x64\{Debug,Release}`.
- Execute `.\src\gui\x64\Debug\Asclepios-DICOM-Viewer.exe` (or `Release`) to verify changes locally.
- Inside Visual Studio, re-check `Qt VS Tools > Qt Project Settings` so moc/rcc steps succeed after upgrades.

## Coding Style & Naming Conventions
- Maintain Allman braces, 4-space indentation, and fully qualified namespaces mirroring existing files.
- Classes/widgets stay in PascalCase, member fields keep the `m_` prefix, and functions use camelCase verbs; keep Qt signals descriptive (e.g., `onImportCompleted()`).
- Favor smart pointers for ownership, `QStringLiteral` for static strings, and order includes from project to system; run Visual Studio's clang-format profile when available.

## Testing Guidelines
- No automated suite exists; manually load anonymized DICOM studies covering single-frame, multi-frame, and compressed series.
- Exercise 2D layouts, MPR views, and 3D rendering; watch `viewer.log` for regressions and confirm GPU rendering where applicable.
- Capture these checks in the PR description and guard new algorithms with `_DEBUG` asserts or targeted logging.

## Commit & Pull Request Guidelines
- Use short, imperative commit summaries (e.g., “Handle 2D render failures”); squash fixups locally.
- PRs should detail the problem, solution, and validation steps; attach screenshots or GIFs for UI-visible changes and reference related issues.
- Call out changes under `deps/` or `lib/` explicitly so reviewers can focus on dependency updates.

## Data Handling & Security Notes
- Never commit clinical datasets; keep test images outside the repo and anonymize screenshots before sharing.
- Strip patient-identifying metadata from logs and rotate `viewer.log` before submitting debug captures.
