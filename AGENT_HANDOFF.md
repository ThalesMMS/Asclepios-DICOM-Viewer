# Codex Handoff – Rendering Pipeline Status

## Current Situation
- The GUI build succeeds (`Debug|x64`), but headless validation via `tools\run-headless.ps1` still fails.
- `vtk-headless.log` continues to emit `vtkImageMapToWindowLevelColors: Missing scalar field on input information` followed by repeated `GL_INVALID_OPERATION` errors during `vtkOpenGLRenderer::DeviceRender`.
- No source changes are currently staged; the previous experiments were rolled back to keep the tree clean.

## Observations & Hypotheses
- The vtkImageMapToWindowLevelColors filter is not seeing an active scalar array on its input information. Even after naming the scalar array, the pipeline likely needs an explicit `SetActiveScalars` and/or an algorithm connection (`vtkTrivialProducer` or dedicated mapper) so that the information keys propagate.
- Because the color map never receives scalar data, the OpenGL texture setup collapses and the renderer reports invalid operations.

## Recommended Next Steps
1. Ensure the scalar array is made active *before* wiring the pipeline (e.g., `imageData->GetPointData()->SetActiveScalars("Scalars")`) and confirm the name is present in the information keys.
2. Route the image data through a producer (`vtkTrivialProducer`) and drive the actor with a mapper (`vtkImageSliceMapper` or similar) so that the filter/mapper pair share a consistent pipeline.
3. Re-run the headless verification script after each change and inspect `vtk-headless.log` until both the “missing scalar field” and OpenGL errors disappear.

## Build & Test Guidance
- **Always drive builds/tests through scripts** that you trigger yourself (per environment policy). Examples:
  - Use a PowerShell script that wraps `msbuild` rather than invoking the compiler directly in the shell.
  - Reuse existing scripts such as `tools\run-headless.ps1` for automated rendering checks.
- Document any new scripts you add so future agents can invoke them the same way.

## Useful Commands/Scripts
- Headless validation: `powershell -ExecutionPolicy Bypass -File tools\run-headless.ps1`
- (Create as needed) Build script wrapping `msbuild` for consistency with the “scripted execution” rule.

## Artifacts to Review
- `vtk-headless.log` – captures detailed errors during the failing headless render.
- `viewer.log` – available in the repo root and may provide additional runtime diagnostics.

Please continue the investigation from this state, keeping the scripted-build requirement in mind for any compilation or test runs.
