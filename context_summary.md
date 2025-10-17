Context Summary

The viewer uses vtkWidgetDICOM, derived from vtkImageViewer2, inside vtkWidget2D; the headless CLI mode runs that widget to render a single slice.
Volume loading (DicomVolumeLoader, Image::getDicomVolume) works: logs show vtkShortArray, 262 144 tuples, HU range −2048..1202, so the pixel data are intact.
Despite this, no pixels appear in the viewport. Cursor hover still yields correct HU in the overlay, confirming sample reads from the scalar array succeed.
Current Investigation Results

Added verbose logging in vtkWidgetDICOM: initialization confirms metadata-derived window width/center (400/40), inversion flags, and scalar ranges.
Added headless driver script (tools/run-headless.ps1) that:
Kills orphaned gui.exe,
Runs the executable with a timeout,
Dumps the beginning/end of vtk-headless.log.
vtk-headless.log still reports vtkImageMapToWindowLevelColors: Missing scalar field on input information!, followed by a cascade of OpenGL errors (vtkOpenGLState::CheckState, glBindTexture, [1282] Invalid operation) until the process is forcibly terminated at the 30 second timeout.
Attempted Fixes (all failed)

Ensured slope/intercept application mutates scalars and they carry a name (Scalars).
Forced vtkImageData → vtkImageViewer2 via vtkTrivialProducer, set SetInputArrayToProcess, SetActiveAttributeInfo, and similar on both the producer and vtkImageMapToWindowLevelColors.
Reintroduced simple SetInputData + explicit SetInputArrayToProcess.
None of these removed the “Missing scalar field” error; OpenGL assertions persist (vtkTextureObject.cxx:440).
Root-Cause Hypothesis

vtkImageViewer2’s internal pipeline expects a full algorithm connection (e.g., vtkAlgorithmOutput) and manages state in a way that conflicts with our manually prepared vtkImageData. Even when the scalars exist, the viewer’s vtkImageMapToWindowLevelColors fails to detect them, so the render path never receives a valid texture.
Recommended Path Forward (handoff)

Replace vtkImageViewer2 pipeline with explicit actors:
Build a dedicated class encapsulating vtkImageMapToWindowLevelColors + vtkImageActor + vtkRenderer.
Provide methods mirroring current API: setVolume, setWindowWidthCenter, setInvertColors, getRenderer, etc., so vtkWidget2D can swap it in with minimal changes.
Manage window/level via our WindowLevelFilter; feed the filter output into the actor; attach renderer to the vtkRenderWindow.
This eliminates reliance on the viewer’s fragile internals and should cleanly fix the headless/rendering failures.
Next Steps for the Incoming Agent

Restore vtkWidgetDICOM to a minimal state (or retire it).
Implement the new lightweight viewer (e.g., vtkImageSlice or vtkImageActor + vtkImageMapToWindowLevelColors).
Update vtkWidget2D/WindowLevelFilter to talk to the new class.
Keep the existing logging and headless runner; they’re invaluable for validating the fix.