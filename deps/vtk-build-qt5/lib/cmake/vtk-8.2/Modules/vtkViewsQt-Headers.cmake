set(vtkViewsQt_HEADERS_LOADED 1)
set(vtkViewsQt_HEADERS "vtkQtAnnotationView;vtkQtListView;vtkQtRecordView;vtkQtTableRepresentation;vtkQtTableView;vtkQtTreeView;vtkQtView")

foreach(header ${vtkViewsQt_HEADERS})
  set(vtkViewsQt_HEADER_${header}_EXISTS 1)
endforeach()
