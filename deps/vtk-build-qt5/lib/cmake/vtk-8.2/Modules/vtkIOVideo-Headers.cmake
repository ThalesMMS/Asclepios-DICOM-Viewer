set(vtkIOVideo_HEADERS_LOADED 1)
set(vtkIOVideo_HEADERS "vtkVideoSource;vtkWin32VideoSource")

foreach(header ${vtkIOVideo_HEADERS})
  set(vtkIOVideo_HEADER_${header}_EXISTS 1)
endforeach()
