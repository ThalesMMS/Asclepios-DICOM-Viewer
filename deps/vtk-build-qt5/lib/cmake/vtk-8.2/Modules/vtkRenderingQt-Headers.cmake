set(vtkRenderingQt_HEADERS_LOADED 1)
set(vtkRenderingQt_HEADERS "vtkQImageToImageSource;vtkQtInitialization;vtkQtLabelRenderStrategy;vtkQtStringToImage;vtkQtTreeRingLabelMapper")

foreach(header ${vtkRenderingQt_HEADERS})
  set(vtkRenderingQt_HEADER_${header}_EXISTS 1)
endforeach()
