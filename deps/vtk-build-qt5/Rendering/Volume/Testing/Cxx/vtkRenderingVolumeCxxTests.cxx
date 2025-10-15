#include <ctype.h>  /* NOLINT */
#include <stdio.h>  /* NOLINT */
#include <stdlib.h> /* NOLINT */
#include <string.h> /* NOLINT */
#include <time.h>   /* NOLINT */

#if defined(_MSC_VER)
#pragma warning(disable : 4996) /* deprecation */
#endif

#include "D:/Asclepios-DICOM-Viewer/deps/vtk/Testing/Rendering/vtkTestingObjectFactory.h"


/* Forward declare test functions. */
int ProjectedTetrahedraZoomIn(int, char*[]);
int TestFinalColorWindowLevel(int, char*[]);
int TestFixedPointRayCastLightComponents(int, char*[]);
int TestGPURayCastAdditive(int, char*[]);
int TestGPURayCastAverageIP(int, char*[]);
int TestGPURayCastBlendModes(int, char*[]);
int TestGPURayCastCameraInside(int, char*[]);
int TestGPURayCastCameraInsideClipping(int, char*[]);
int TestGPURayCastCameraInsideNonUniformScaleTransform(int, char*[]);
int TestGPURayCastCameraInsideSmallSpacing(int, char*[]);
int TestGPURayCastCameraInsideTransformation(int, char*[]);
int TestGPURayCastClipping(int, char*[]);
int TestGPURayCastClippingPolyData(int, char*[]);
int TestGPURayCastClippingUserTransform(int, char*[]);
int TestGPURayCastCompositeBinaryMask(int, char*[]);
int TestGPURayCastCompositeBinaryMask1(int, char*[]);
int TestGPURayCastCompositeMask(int, char*[]);
int TestGPURayCastCompositeMaskBlend(int, char*[]);
int TestGPURayCastCompositeToMIP(int, char*[]);
int TestGPURayCastCropping(int, char*[]);
int TestGPURayCastDataTypesMIP(int, char*[]);
int TestGPURayCastDataTypesMinIP(int, char*[]);
int TestGPURayCastDependentComponentsLightParameters(int, char*[]);
int TestGPURayCastFourComponentsAdditive(int, char*[]);
int TestGPURayCastFourComponentsAverage(int, char*[]);
int TestGPURayCastFourComponentsComposite(int, char*[]);
int TestGPURayCastFourComponentsCompositeStreaming(int, char*[]);
int TestGPURayCastFourComponentsDependentGradient(int, char*[]);
int TestGPURayCastFourComponentsMIP(int, char*[]);
int TestGPURayCastFourComponentsMinIP(int, char*[]);
int TestGPURayCastGradientOpacity(int, char*[]);
int TestGPURayCastGradientOpacityLight(int, char*[]);
int TestGPURayCastImageSampleXY(int, char*[]);
int TestGPURayCastIndependentComponentsLightParameters(int, char*[]);
int TestGPURayCastIndependentVectorMode(int, char*[]);
int TestGPURayCastLargeColorTransferFunction(int, char*[]);
int TestGPURayCastMIPBinaryMask(int, char*[]);
int TestGPURayCastMIPToComposite(int, char*[]);
int TestGPURayCastMapperBenchmark(int, char*[]);
int TestGPURayCastMapperSampleDistance(int, char*[]);
int TestGPURayCastMultiVolumeAddRemove(int, char*[]);
int TestGPURayCastMultiVolumeCellData(int, char*[]);
int TestGPURayCastMultiVolumeOverlapping(int, char*[]);
int TestGPURayCastMultiVolumeTransfer2D(int, char*[]);
int TestGPURayCastNearestDataTypesMIP(int, char*[]);
int TestGPURayCastPerspectiveParallel(int, char*[]);
int TestGPURayCastPositionalLights(int, char*[]);
int TestGPURayCastReleaseResources(int, char*[]);
int TestGPURayCastRenderDepthToImage(int, char*[]);
int TestGPURayCastRenderDepthToImage2(int, char*[]);
int TestGPURayCastRenderToTexture(int, char*[]);
int TestGPURayCastShadedClipping(int, char*[]);
int TestGPURayCastThreeComponentsAdditive(int, char*[]);
int TestGPURayCastThreeComponentsIndependent(int, char*[]);
int TestGPURayCastTransfer2D(int, char*[]);
int TestGPURayCastTwoComponentsDependent(int, char*[]);
int TestGPURayCastTwoComponentsDependentGradient(int, char*[]);
int TestGPURayCastTwoComponentsGradient(int, char*[]);
int TestGPURayCastTwoComponentsIndependent(int, char*[]);
int TestGPURayCastVolumeDepthPass(int, char*[]);
int TestGPURayCastVolumeLightKit(int, char*[]);
int TestGPURayCastVolumeOrientation(int, char*[]);
int TestGPURayCastVolumePicking(int, char*[]);
int TestGPURayCastVolumePlane(int, char*[]);
int TestGPURayCastVolumePolyData(int, char*[]);
int TestGPURayCastVolumeRotation(int, char*[]);
int TestGPURayCastVolumeScale(int, char*[]);
int TestGPURayCastVolumeUpdate(int, char*[]);
int TestGPUVolumeRayCastMapper(int, char*[]);
int TestMinIntensityRendering(int, char*[]);
int TestMultiBlockMapper(int, char*[]);
int TestProjectedTetrahedra(int, char*[]);
int TestProjectedTetrahedraOffscreen(int, char*[]);
int TestProjectedTetrahedraTransform(int, char*[]);
int TestRemoveVolumeNonCurrentContext(int, char*[]);
int TestSmartVolumeMapper(int, char*[]);
int TestSmartVolumeMapperWindowLevel(int, char*[]);


#ifdef __cplusplus
#  define CM_CAST(TYPE, EXPR) static_cast<TYPE>(EXPR)
#  if __cplusplus >= 201103L
#    define CM_NULL nullptr
#  else
#    define CM_NULL NULL
#  endif
#  define CM_NAMESPACE_BEGIN namespace {
#  define CM_NAMESPACE_END }
#  define CM_LOCAL
#else
#  define CM_CAST(TYPE, EXPR) (TYPE)(EXPR)
#  define CM_NULL NULL
#  define CM_NAMESPACE_BEGIN
#  define CM_NAMESPACE_END
#  define CM_LOCAL static
#endif

CM_NAMESPACE_BEGIN

/* Create map.  */

typedef int (*MainFuncPointer)(int, char* []); /* NOLINT */
typedef struct /* NOLINT */
{
  const char* name;
  MainFuncPointer func;
} functionMapEntry;

CM_LOCAL const functionMapEntry cmakeGeneratedFunctionMapEntries[] = {
    {
    "ProjectedTetrahedraZoomIn",
    ProjectedTetrahedraZoomIn
  },
  {
    "TestFinalColorWindowLevel",
    TestFinalColorWindowLevel
  },
  {
    "TestFixedPointRayCastLightComponents",
    TestFixedPointRayCastLightComponents
  },
  {
    "TestGPURayCastAdditive",
    TestGPURayCastAdditive
  },
  {
    "TestGPURayCastAverageIP",
    TestGPURayCastAverageIP
  },
  {
    "TestGPURayCastBlendModes",
    TestGPURayCastBlendModes
  },
  {
    "TestGPURayCastCameraInside",
    TestGPURayCastCameraInside
  },
  {
    "TestGPURayCastCameraInsideClipping",
    TestGPURayCastCameraInsideClipping
  },
  {
    "TestGPURayCastCameraInsideNonUniformScaleTransform",
    TestGPURayCastCameraInsideNonUniformScaleTransform
  },
  {
    "TestGPURayCastCameraInsideSmallSpacing",
    TestGPURayCastCameraInsideSmallSpacing
  },
  {
    "TestGPURayCastCameraInsideTransformation",
    TestGPURayCastCameraInsideTransformation
  },
  {
    "TestGPURayCastClipping",
    TestGPURayCastClipping
  },
  {
    "TestGPURayCastClippingPolyData",
    TestGPURayCastClippingPolyData
  },
  {
    "TestGPURayCastClippingUserTransform",
    TestGPURayCastClippingUserTransform
  },
  {
    "TestGPURayCastCompositeBinaryMask",
    TestGPURayCastCompositeBinaryMask
  },
  {
    "TestGPURayCastCompositeBinaryMask1",
    TestGPURayCastCompositeBinaryMask1
  },
  {
    "TestGPURayCastCompositeMask",
    TestGPURayCastCompositeMask
  },
  {
    "TestGPURayCastCompositeMaskBlend",
    TestGPURayCastCompositeMaskBlend
  },
  {
    "TestGPURayCastCompositeToMIP",
    TestGPURayCastCompositeToMIP
  },
  {
    "TestGPURayCastCropping",
    TestGPURayCastCropping
  },
  {
    "TestGPURayCastDataTypesMIP",
    TestGPURayCastDataTypesMIP
  },
  {
    "TestGPURayCastDataTypesMinIP",
    TestGPURayCastDataTypesMinIP
  },
  {
    "TestGPURayCastDependentComponentsLightParameters",
    TestGPURayCastDependentComponentsLightParameters
  },
  {
    "TestGPURayCastFourComponentsAdditive",
    TestGPURayCastFourComponentsAdditive
  },
  {
    "TestGPURayCastFourComponentsAverage",
    TestGPURayCastFourComponentsAverage
  },
  {
    "TestGPURayCastFourComponentsComposite",
    TestGPURayCastFourComponentsComposite
  },
  {
    "TestGPURayCastFourComponentsCompositeStreaming",
    TestGPURayCastFourComponentsCompositeStreaming
  },
  {
    "TestGPURayCastFourComponentsDependentGradient",
    TestGPURayCastFourComponentsDependentGradient
  },
  {
    "TestGPURayCastFourComponentsMIP",
    TestGPURayCastFourComponentsMIP
  },
  {
    "TestGPURayCastFourComponentsMinIP",
    TestGPURayCastFourComponentsMinIP
  },
  {
    "TestGPURayCastGradientOpacity",
    TestGPURayCastGradientOpacity
  },
  {
    "TestGPURayCastGradientOpacityLight",
    TestGPURayCastGradientOpacityLight
  },
  {
    "TestGPURayCastImageSampleXY",
    TestGPURayCastImageSampleXY
  },
  {
    "TestGPURayCastIndependentComponentsLightParameters",
    TestGPURayCastIndependentComponentsLightParameters
  },
  {
    "TestGPURayCastIndependentVectorMode",
    TestGPURayCastIndependentVectorMode
  },
  {
    "TestGPURayCastLargeColorTransferFunction",
    TestGPURayCastLargeColorTransferFunction
  },
  {
    "TestGPURayCastMIPBinaryMask",
    TestGPURayCastMIPBinaryMask
  },
  {
    "TestGPURayCastMIPToComposite",
    TestGPURayCastMIPToComposite
  },
  {
    "TestGPURayCastMapperBenchmark",
    TestGPURayCastMapperBenchmark
  },
  {
    "TestGPURayCastMapperSampleDistance",
    TestGPURayCastMapperSampleDistance
  },
  {
    "TestGPURayCastMultiVolumeAddRemove",
    TestGPURayCastMultiVolumeAddRemove
  },
  {
    "TestGPURayCastMultiVolumeCellData",
    TestGPURayCastMultiVolumeCellData
  },
  {
    "TestGPURayCastMultiVolumeOverlapping",
    TestGPURayCastMultiVolumeOverlapping
  },
  {
    "TestGPURayCastMultiVolumeTransfer2D",
    TestGPURayCastMultiVolumeTransfer2D
  },
  {
    "TestGPURayCastNearestDataTypesMIP",
    TestGPURayCastNearestDataTypesMIP
  },
  {
    "TestGPURayCastPerspectiveParallel",
    TestGPURayCastPerspectiveParallel
  },
  {
    "TestGPURayCastPositionalLights",
    TestGPURayCastPositionalLights
  },
  {
    "TestGPURayCastReleaseResources",
    TestGPURayCastReleaseResources
  },
  {
    "TestGPURayCastRenderDepthToImage",
    TestGPURayCastRenderDepthToImage
  },
  {
    "TestGPURayCastRenderDepthToImage2",
    TestGPURayCastRenderDepthToImage2
  },
  {
    "TestGPURayCastRenderToTexture",
    TestGPURayCastRenderToTexture
  },
  {
    "TestGPURayCastShadedClipping",
    TestGPURayCastShadedClipping
  },
  {
    "TestGPURayCastThreeComponentsAdditive",
    TestGPURayCastThreeComponentsAdditive
  },
  {
    "TestGPURayCastThreeComponentsIndependent",
    TestGPURayCastThreeComponentsIndependent
  },
  {
    "TestGPURayCastTransfer2D",
    TestGPURayCastTransfer2D
  },
  {
    "TestGPURayCastTwoComponentsDependent",
    TestGPURayCastTwoComponentsDependent
  },
  {
    "TestGPURayCastTwoComponentsDependentGradient",
    TestGPURayCastTwoComponentsDependentGradient
  },
  {
    "TestGPURayCastTwoComponentsGradient",
    TestGPURayCastTwoComponentsGradient
  },
  {
    "TestGPURayCastTwoComponentsIndependent",
    TestGPURayCastTwoComponentsIndependent
  },
  {
    "TestGPURayCastVolumeDepthPass",
    TestGPURayCastVolumeDepthPass
  },
  {
    "TestGPURayCastVolumeLightKit",
    TestGPURayCastVolumeLightKit
  },
  {
    "TestGPURayCastVolumeOrientation",
    TestGPURayCastVolumeOrientation
  },
  {
    "TestGPURayCastVolumePicking",
    TestGPURayCastVolumePicking
  },
  {
    "TestGPURayCastVolumePlane",
    TestGPURayCastVolumePlane
  },
  {
    "TestGPURayCastVolumePolyData",
    TestGPURayCastVolumePolyData
  },
  {
    "TestGPURayCastVolumeRotation",
    TestGPURayCastVolumeRotation
  },
  {
    "TestGPURayCastVolumeScale",
    TestGPURayCastVolumeScale
  },
  {
    "TestGPURayCastVolumeUpdate",
    TestGPURayCastVolumeUpdate
  },
  {
    "TestGPUVolumeRayCastMapper",
    TestGPUVolumeRayCastMapper
  },
  {
    "TestMinIntensityRendering",
    TestMinIntensityRendering
  },
  {
    "TestMultiBlockMapper",
    TestMultiBlockMapper
  },
  {
    "TestProjectedTetrahedra",
    TestProjectedTetrahedra
  },
  {
    "TestProjectedTetrahedraOffscreen",
    TestProjectedTetrahedraOffscreen
  },
  {
    "TestProjectedTetrahedraTransform",
    TestProjectedTetrahedraTransform
  },
  {
    "TestRemoveVolumeNonCurrentContext",
    TestRemoveVolumeNonCurrentContext
  },
  {
    "TestSmartVolumeMapper",
    TestSmartVolumeMapper
  },
  {
    "TestSmartVolumeMapperWindowLevel",
    TestSmartVolumeMapperWindowLevel
  },

  { CM_NULL, CM_NULL } /* NOLINT */
};

CM_LOCAL const int NumTests = CM_CAST(int,
  sizeof(cmakeGeneratedFunctionMapEntries) / sizeof(functionMapEntry)) - 1;

/* Allocate and create a lowercased copy of string
   (note that it has to be free'd manually) */
CM_LOCAL char* lowercase(const char* string)
{
  char *new_string;
  char *p;
  size_t stringSize;

  stringSize = CM_CAST(size_t, strlen(string) + 1);
  new_string = CM_CAST(char*, malloc(sizeof(char) * stringSize));

  if (new_string == CM_NULL) { /* NOLINT */
    return CM_NULL;            /* NOLINT */
  }
  strcpy(new_string, string);  /* NOLINT */
  for (p = new_string; *p != 0; ++p) {
    *p = CM_CAST(char, tolower(*p));
  }
  return new_string;
}

CM_LOCAL int isTestSkipped(const char *name, int n_skipped_tests, char *skipped_tests[]) {
  int i;
  for (i = 0; i < n_skipped_tests; i++) {
    if (strcmp(name, skipped_tests[i]) == 0) {
      return 1;
    }
  }

  return 0;
}

CM_NAMESPACE_END

int main(int ac, char* av[])
{
  int i;
  int testNum = 0;
  int partial_match;
  int run_all;
  char *arg;
  int testToRun = -1;

  

  /* If no test name was given */
  /* process command line with user function.  */
  if (ac < 2) {
    /* Ask for a test.  */
    printf("Available tests:\n");
    for (i = 0; i < NumTests; ++i) {
      printf("%3d. %s\n", i, cmakeGeneratedFunctionMapEntries[i].name);
    }
    printf("To run a test, enter the test number: ");
    fflush(stdout);
    if (scanf("%d", &testNum) != 1) {
      printf("Couldn't parse that input as a number\n");
      return -1;
    }
    if (testNum >= NumTests) {
      printf("%3d is an invalid test number.\n", testNum);
      return -1;
    }
    testToRun = testNum;
    ac--;
    av++;
  }
  partial_match = 0;
  run_all = 0;
  arg = CM_NULL; /* NOLINT */
  /* If partial match or running all tests are requested.  */
  if (testToRun == -1 && ac > 1) {
    partial_match = (strcmp(av[1], "-R") == 0) ? 1 : 0;
    run_all = (strcmp(av[1], "-A") == 0) ? 1 : 0;
  }
  if (partial_match != 0 && ac < 3) {
    printf("-R needs an additional parameter.\n");
    return -1;
  }
  if (run_all == 1) {
    clock_t t;
    int status = 0;
    const char* status_message = CM_NULL;
    printf("TAP version 13\n");
    printf("1..%d\n", NumTests);
    for (i = 0; i < NumTests; ++i) {
      const char *name = cmakeGeneratedFunctionMapEntries[i].name;
      if (ac > 2) {
        if (isTestSkipped(name, ac - 2, av + 2) == 1) {
          printf("ok %d %s # SKIP\n", i + 1, name);
          continue;
        }
      }
      t = clock();
      status = (*cmakeGeneratedFunctionMapEntries[i].func)(ac, av);
      t = clock() - t;
      status_message = (status == -1) ? "not ok" : "ok";
      {
        double time_taken = CM_CAST(double, t) / CLOCKS_PER_SEC;
        printf("%s %d %s # %f\n", status_message, i + 1, name, time_taken);
      }
    }
    printf("All tests finished.\n");

    return 0;
  }

  if (testToRun == -1) {
    arg = lowercase(av[1 + partial_match]);
  }
  for (i = 0; i < NumTests && testToRun == -1; ++i) {
    char *test_name = lowercase(cmakeGeneratedFunctionMapEntries[i].name);
    if (partial_match != 0 && strstr(test_name, arg) != CM_NULL) { /* NOLINT */
      testToRun = i;
      ac -= 2;
      av += 2;
    } else if (partial_match == 0 && strcmp(test_name, arg) == 0) {
      testToRun = i;
      ac--;
      av++;
    }
    free(test_name);
  }
  free(arg);
  if (testToRun != -1) {
    int result;
    vtksys::SystemInformation::SetStackTraceOnError(1);
 
    // Set defaults
    vtkTestingInteractor::ValidBaseline = "Use_-V_for_Baseline";
    vtkTestingInteractor::TempDirectory =
      std::string("D:/Asclepios-DICOM-Viewer/deps/vtk-build-qt5/Testing/Temporary");
    vtkTestingInteractor::DataDirectory = std::string("Use_-D_for_Data");

    int interactive = 0;
    for (int ii = 0; ii < ac; ++ii)
      {
      if (strcmp(av[ii], "-I") == 0)
        {
        interactive = 1;
        continue;
        }
      if (ii < ac-1 && strcmp(av[ii], "-V") == 0)
        {
        vtkTestingInteractor::ValidBaseline = std::string(av[++ii]);
        continue;
        }
      if (ii < ac-1 && strcmp(av[ii], "-T") == 0)
        {
        vtkTestingInteractor::TempDirectory = std::string(av[++ii]);
        continue;
        }
      if (ii < ac-1 && strcmp(av[ii], "-D") == 0)
        {
        vtkTestingInteractor::DataDirectory = std::string(av[++ii]);
        continue;
        }
      if (ii < ac-1 && strcmp(av[ii], "-E") == 0)
        {
        vtkTestingInteractor::ErrorThreshold =
            static_cast<double>(atof(av[++ii]));
        continue;
        }
      }
    vtkSmartPointer<vtkTestingObjectFactory> factory = vtkSmartPointer<vtkTestingObjectFactory>::New();
    if (!interactive)
      {
      // Disable any other overrides before registering our factory.
      vtkObjectFactoryCollection *collection = vtkObjectFactory::GetRegisteredFactories();
      collection->InitTraversal();
      vtkObjectFactory *f = collection->GetNextItem();
      while (f)
        {
        f->Disable("vtkRenderWindowInteractor");
        f = collection->GetNextItem();
        }
      vtkObjectFactory::RegisterFactory(factory);
      }

    if (testToRun < 0 || testToRun >= NumTests) {
      printf("testToRun was modified by TestDriver code to an invalid value: "
             "%3d.\n",
             testNum);
      return -1;
    }
    result = (*cmakeGeneratedFunctionMapEntries[testToRun].func)(ac, av);

   if (result == VTK_SKIP_RETURN_CODE)
     {
     printf("Unsupported runtime configuration: Test returned "
            "VTK_SKIP_RETURN_CODE. Skipping test.\n");
     return result;
     }

   if (!interactive)
     {
     if (vtkTestingInteractor::TestReturnStatus != -1)
        {
        if (vtkTestingInteractor::TestReturnStatus != vtkTesting::PASSED)
          {
          result = EXIT_FAILURE;
          }
        else
          {
          result = EXIT_SUCCESS;
          }
        }
      vtkObjectFactory::UnRegisterFactory(factory);
      }

    return result;
  }

  /* Nothing was run, display the test names.  */
  printf("Available tests:\n");
  for (i = 0; i < NumTests; ++i) {
    printf("%3d. %s\n", i, cmakeGeneratedFunctionMapEntries[i].name);
  }
  printf("Failed: %s is an invalid test name.\n", av[1]);

  return -1;
}
