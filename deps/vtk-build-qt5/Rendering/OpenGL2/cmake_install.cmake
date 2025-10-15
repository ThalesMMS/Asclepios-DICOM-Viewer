# Install script for directory: D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/OpenGL2

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "D:/Asclepios-DICOM-Viewer/deps/vtk-install-qt5-debug")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Development" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/lib/Debug/vtkRenderingOpenGL2-8.2.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/lib/Release/vtkRenderingOpenGL2-8.2.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/lib/MinSizeRel/vtkRenderingOpenGL2-8.2.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/lib/RelWithDebInfo/vtkRenderingOpenGL2-8.2.lib")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/vtk-8.2/Modules" TYPE FILE FILES "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Rendering/OpenGL2/CMakeFiles/vtkRenderingOpenGL2.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-8.2" TYPE FILE FILES
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/OpenGL2/vtkOpenGL.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/OpenGL2/vtkStateStorage.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Rendering/OpenGL2/vtkTDxConfigure.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Rendering/OpenGL2/vtkOpenGLError.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Rendering/OpenGL2/vtkRenderingOpenGLConfigure.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Rendering/OpenGL2/vtkRenderingOpenGL2ObjectFactory.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/OpenGL2/vtkCameraPass.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/OpenGL2/vtkClearRGBPass.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/OpenGL2/vtkClearZPass.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/OpenGL2/vtkCompositePolyDataMapper2.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/OpenGL2/vtkDefaultPass.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/OpenGL2/vtkDepthOfFieldPass.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/OpenGL2/vtkDepthImageProcessingPass.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/OpenGL2/vtkDepthPeelingPass.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/OpenGL2/vtkDualDepthPeelingPass.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/OpenGL2/vtkEDLShading.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/OpenGL2/vtkFramebufferPass.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/OpenGL2/vtkGaussianBlurPass.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/OpenGL2/vtkGenericOpenGLRenderWindow.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/OpenGL2/vtkHiddenLineRemovalPass.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/OpenGL2/vtkImageProcessingPass.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/OpenGL2/vtkLightingMapPass.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/OpenGL2/vtkLightsPass.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/OpenGL2/vtkOpaquePass.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/OpenGL2/vtkOpenGLActor.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/OpenGL2/vtkOpenGLBillboardTextActor3D.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/OpenGL2/vtkOpenGLBufferObject.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/OpenGL2/vtkOpenGLCamera.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/OpenGL2/vtkOpenGLFXAAFilter.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/OpenGL2/vtkOpenGLFramebufferObject.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/OpenGL2/vtkOpenGLGL2PSHelper.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/OpenGL2/vtkOpenGLGlyph3DHelper.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/OpenGL2/vtkOpenGLGlyph3DMapper.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/OpenGL2/vtkOpenGLHardwareSelector.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/OpenGL2/vtkOpenGLHelper.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/OpenGL2/vtkOpenGLImageAlgorithmHelper.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/OpenGL2/vtkOpenGLImageMapper.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/OpenGL2/vtkOpenGLImageSliceMapper.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/OpenGL2/vtkOpenGLIndexBufferObject.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/OpenGL2/vtkOpenGLInstanceCulling.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/OpenGL2/vtkOpenGLLabeledContourMapper.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/OpenGL2/vtkOpenGLLight.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/OpenGL2/vtkOpenGLPointGaussianMapper.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/OpenGL2/vtkOpenGLPolyDataMapper.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/OpenGL2/vtkOpenGLPolyDataMapper2D.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/OpenGL2/vtkOpenGLProperty.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/OpenGL2/vtkOpenGLQuadHelper.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/OpenGL2/vtkOpenGLRenderPass.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/OpenGL2/vtkOpenGLRenderTimer.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/OpenGL2/vtkOpenGLRenderTimerLog.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/OpenGL2/vtkOpenGLRenderUtilities.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/OpenGL2/vtkOpenGLRenderWindow.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/OpenGL2/vtkOpenGLRenderer.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/OpenGL2/vtkOpenGLShaderCache.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/OpenGL2/vtkOpenGLSkybox.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/OpenGL2/vtkOpenGLSphereMapper.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/OpenGL2/vtkOpenGLState.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/OpenGL2/vtkOpenGLStickMapper.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/OpenGL2/vtkOpenGLTextActor.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/OpenGL2/vtkOpenGLTextActor3D.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/OpenGL2/vtkOpenGLTextMapper.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/OpenGL2/vtkOpenGLTexture.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/OpenGL2/vtkOpenGLVertexArrayObject.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/OpenGL2/vtkOpenGLVertexBufferObject.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/OpenGL2/vtkOpenGLVertexBufferObjectCache.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/OpenGL2/vtkOpenGLVertexBufferObjectGroup.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/OpenGL2/vtkOrderIndependentTranslucentPass.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/OpenGL2/vtkOverlayPass.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/OpenGL2/vtkPanoramicProjectionPass.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/OpenGL2/vtkPixelBufferObject.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/OpenGL2/vtkPointFillPass.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/OpenGL2/vtkRenderPassCollection.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/OpenGL2/vtkRenderStepsPass.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/OpenGL2/vtkRenderbuffer.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/OpenGL2/vtkSSAAPass.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/OpenGL2/vtkSequencePass.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/OpenGL2/vtkShader.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/OpenGL2/vtkShaderProgram.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/OpenGL2/vtkShadowMapBakerPass.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/OpenGL2/vtkShadowMapPass.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/OpenGL2/vtkSimpleMotionBlurPass.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/OpenGL2/vtkSobelGradientMagnitudePass.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/OpenGL2/vtkTextureObject.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/OpenGL2/vtkTextureUnitManager.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/OpenGL2/vtkToneMappingPass.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/OpenGL2/vtkTransformFeedback.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/OpenGL2/vtkTranslucentPass.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/OpenGL2/vtkValuePass.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/OpenGL2/vtkVolumetricPass.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/OpenGL2/vtkDataTransferHelper.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Rendering/OpenGL2/vtkDepthOfFieldPassFS.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Rendering/OpenGL2/vtkDepthPeelingPassFinalFS.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Rendering/OpenGL2/vtkDepthPeelingPassIntermediateFS.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Rendering/OpenGL2/vtkEDLBilateralFilterFS.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Rendering/OpenGL2/vtkEDLComposeFS.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Rendering/OpenGL2/vtkEDLShadeFS.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Rendering/OpenGL2/vtkFXAAFilterFS.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Rendering/OpenGL2/vtkGaussianBlurPassFS.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Rendering/OpenGL2/vtkGaussianBlurPassVS.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Rendering/OpenGL2/vtkGlyph3DVS.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Rendering/OpenGL2/vtkOrderIndependentTranslucentPassFinalFS.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Rendering/OpenGL2/vtkPointGaussianVS.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Rendering/OpenGL2/vtkPointGaussianGS.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Rendering/OpenGL2/vtkPointFillPassFS.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Rendering/OpenGL2/vtkPolyData2DFS.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Rendering/OpenGL2/vtkPolyData2DVS.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Rendering/OpenGL2/vtkPolyDataFS.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Rendering/OpenGL2/vtkPolyDataVS.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Rendering/OpenGL2/vtkPolyDataWideLineGS.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Rendering/OpenGL2/vtkSSAAPassFS.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Rendering/OpenGL2/vtkSimpleMotionBlurPassFS.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Rendering/OpenGL2/vtkSobelGradientMagnitudePass1FS.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Rendering/OpenGL2/vtkSobelGradientMagnitudePass2FS.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Rendering/OpenGL2/vtkSphereMapperGS.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Rendering/OpenGL2/vtkStickMapperGS.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Rendering/OpenGL2/vtkTextureObjectFS.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Rendering/OpenGL2/vtkTextureObjectVS.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/OpenGL2/vtkDummyGPUInfoList.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/OpenGL2/vtkWin32RenderWindowInteractor.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk/Rendering/OpenGL2/vtkWin32OpenGLRenderWindow.h"
    "D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Rendering/OpenGL2/vtkRenderingOpenGL2Module.h"
    )
endif()

