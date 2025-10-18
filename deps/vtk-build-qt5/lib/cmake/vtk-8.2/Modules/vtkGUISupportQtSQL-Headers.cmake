set(vtkGUISupportQtSQL_HEADERS_LOADED 1)
set(vtkGUISupportQtSQL_HEADERS "vtkQtSQLDatabase;vtkQtSQLQuery;vtkQtTimePointUtility")

foreach(header ${vtkGUISupportQtSQL_HEADERS})
  set(vtkGUISupportQtSQL_HEADER_${header}_EXISTS 1)
endforeach()
