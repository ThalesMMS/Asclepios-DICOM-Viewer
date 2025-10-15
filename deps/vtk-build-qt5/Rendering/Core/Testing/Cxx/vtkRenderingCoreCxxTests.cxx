#include <ctype.h>  /* NOLINT */
#include <stdio.h>  /* NOLINT */
#include <stdlib.h> /* NOLINT */
#include <string.h> /* NOLINT */
#include <time.h>   /* NOLINT */

#if defined(_MSC_VER)
#pragma warning(disable : 4996) /* deprecation */
#endif

#include "vtkTestDriver.h"


/* Forward declare test functions. */
int TestBlockOpacity(int, char*[]);
int TestBlockVisibility(int, char*[]);
int TestCompositeDataPointGaussian(int, char*[]);
int TestCompositeDataPointGaussianSelection(int, char*[]);
int TestCompositePolyDataMapper2(int, char*[]);
int TestCompositePolyDataMapper2Picking(int, char*[]);
int TestCompositePolyDataMapper2Scalars(int, char*[]);
int TestCompositePolyDataMapper2CellScalars(int, char*[]);
int TestCompositePolyDataMapper2MixedGeometryCellScalars(int, char*[]);
int TestCompositePolyDataMapper2MixedGeometryEdges(int, char*[]);
int TestGlyph3DMapperTreeIndexingCompositeGlyphs(int, char*[]);
int TestMultiBlockPartialArrayPointData(int, char*[]);
int TestMultiBlockPartialArrayFieldData(int, char*[]);
int TestTranslucentLUTAlphaBlending(int, char*[]);
int TestTranslucentLUTTextureAlphaBlending(int, char*[]);
int TestAreaSelections(int, char*[]);
int TestValuePassFloatingPoint(int, char*[]);
int TestToggleOSWithInteractor(int, char*[]);
int otherCoordinate(int, char*[]);
int FrustumClip(int, char*[]);
int Mace(int, char*[]);
int RGrid(int, char*[]);
int TestActor2D(int, char*[]);
int TestActor2DTextures(int, char*[]);
int TestActorLightingFlag(int, char*[]);
int TestAnimationScene(int, char*[]);
int TestAssemblyBounds(int, char*[]);
int TestBackfaceCulling(int, char*[]);
int TestBareScalarsToColors(int, char*[]);
int TestColorByCellDataStringArray(int, char*[]);
int TestColorByPointDataStringArray(int, char*[]);
int TestColorByStringArrayDefaultLookupTable(int, char*[]);
int TestColorByStringArrayDefaultLookupTable2D(int, char*[]);
int TestColorTransferFunction(int, char*[]);
int TestColorTransferFunctionStringArray(int, char*[]);
int TestDirectScalarsToColors(int, char*[]);
int TestDiscretizableColorTransferFunction(int, char*[]);
int TestDiscretizableColorTransferFunctionStringArray(int, char*[]);
int TestDiscretizableColorTransferFunctionOpacity(int, char*[]);
int TestEdgeFlags(int, char*[]);
int TestFollowerPicking(int, char*[]);
int TestGlyph3DMapper(int, char*[]);
int TestGlyph3DMapper2(int, char*[]);
int TestGlyph3DMapperArrow(int, char*[]);
int TestGlyph3DMapperIndexing(int, char*[]);
int TestGlyph3DMapperMasking(int, char*[]);
int TestGlyph3DMapperOrientationArray(int, char*[]);
int TestGlyph3DMapperQuaternionArray(int, char*[]);
int TestGlyph3DMapperPicking(int, char*[]);
int TestGlyph3DMapperTreeIndexing(int, char*[]);
int TestGradientBackground(int, char*[]);
int TestHiddenLineRemovalPass(int, char*[]);
int TestHomogeneousTransformOfActor(int, char*[]);
int TestImageAndAnnotations(int, char*[]);
int TestInteractorStyleImageProperty(int, char*[]);
int TestInteractorTimers(int, char*[]);
int TestLabeledContourMapper(int, char*[]);
int TestLabeledContourMapperWithActorMatrix(int, char*[]);
int TestPickingManager(int, char*[]);
int TestManyActors(int, char*[]);
int TestMapVectorsAsRGBColors(int, char*[]);
int TestMapVectorsToColors(int, char*[]);
int TestOffAxisStereo(int, char*[]);
int TestOrderedTriangulator(int, char*[]);
int TestOpacity(int, char*[]);
int TestStereoBackgroundLeft(int, char*[]);
int TestStereoBackgroundRight(int, char*[]);
int TestOSConeCxx(int, char*[]);
int TestPickTextActor(int, char*[]);
int TestPointSelection(int, char*[]);
int TestPointSelectionWithCellData(int, char*[]);
int TestPolygonSelection(int, char*[]);
int TestResetCameraVerticalAspectRatio(int, char*[]);
int TestResetCameraVerticalAspectRatioParallel(int, char*[]);
int TestSplitViewportStereoHorizontal(int, char*[]);
int TestTexturedBackground(int, char*[]);
int TestTextureSize(int, char*[]);
int TestTextureRGBA(int, char*[]);
int TestTextureRGBADepthPeeling(int, char*[]);
int TestTilingCxx(int, char*[]);
int TestTransformCoordinateUseDouble(int, char*[]);
int TestTranslucentImageActorAlphaBlending(int, char*[]);
int TestTranslucentImageActorDepthPeeling(int, char*[]);
int TestTranslucentLUTDepthPeeling(int, char*[]);
int TestTranslucentLUTTextureDepthPeeling(int, char*[]);
int TestTStripsColorsTCoords(int, char*[]);
int TestTStripsNormalsColorsTCoords(int, char*[]);
int TestTStripsNormalsTCoords(int, char*[]);
int TestTStripsTCoords(int, char*[]);
int TestWindowToImageFilter(int, char*[]);
int otherLookupTable(int, char*[]);
int otherLookupTableWithEnabling(int, char*[]);
int RenderNonFinite(int, char*[]);
int SurfacePlusEdges(int, char*[]);


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
    "TestBlockOpacity",
    TestBlockOpacity
  },
  {
    "TestBlockVisibility",
    TestBlockVisibility
  },
  {
    "TestCompositeDataPointGaussian",
    TestCompositeDataPointGaussian
  },
  {
    "TestCompositeDataPointGaussianSelection",
    TestCompositeDataPointGaussianSelection
  },
  {
    "TestCompositePolyDataMapper2",
    TestCompositePolyDataMapper2
  },
  {
    "TestCompositePolyDataMapper2Picking",
    TestCompositePolyDataMapper2Picking
  },
  {
    "TestCompositePolyDataMapper2Scalars",
    TestCompositePolyDataMapper2Scalars
  },
  {
    "TestCompositePolyDataMapper2CellScalars",
    TestCompositePolyDataMapper2CellScalars
  },
  {
    "TestCompositePolyDataMapper2MixedGeometryCellScalars",
    TestCompositePolyDataMapper2MixedGeometryCellScalars
  },
  {
    "TestCompositePolyDataMapper2MixedGeometryEdges",
    TestCompositePolyDataMapper2MixedGeometryEdges
  },
  {
    "TestGlyph3DMapperTreeIndexingCompositeGlyphs",
    TestGlyph3DMapperTreeIndexingCompositeGlyphs
  },
  {
    "TestMultiBlockPartialArrayPointData",
    TestMultiBlockPartialArrayPointData
  },
  {
    "TestMultiBlockPartialArrayFieldData",
    TestMultiBlockPartialArrayFieldData
  },
  {
    "TestTranslucentLUTAlphaBlending",
    TestTranslucentLUTAlphaBlending
  },
  {
    "TestTranslucentLUTTextureAlphaBlending",
    TestTranslucentLUTTextureAlphaBlending
  },
  {
    "TestAreaSelections",
    TestAreaSelections
  },
  {
    "TestValuePassFloatingPoint",
    TestValuePassFloatingPoint
  },
  {
    "TestToggleOSWithInteractor",
    TestToggleOSWithInteractor
  },
  {
    "otherCoordinate",
    otherCoordinate
  },
  {
    "FrustumClip",
    FrustumClip
  },
  {
    "Mace",
    Mace
  },
  {
    "RGrid",
    RGrid
  },
  {
    "TestActor2D",
    TestActor2D
  },
  {
    "TestActor2DTextures",
    TestActor2DTextures
  },
  {
    "TestActorLightingFlag",
    TestActorLightingFlag
  },
  {
    "TestAnimationScene",
    TestAnimationScene
  },
  {
    "TestAssemblyBounds",
    TestAssemblyBounds
  },
  {
    "TestBackfaceCulling",
    TestBackfaceCulling
  },
  {
    "TestBareScalarsToColors",
    TestBareScalarsToColors
  },
  {
    "TestColorByCellDataStringArray",
    TestColorByCellDataStringArray
  },
  {
    "TestColorByPointDataStringArray",
    TestColorByPointDataStringArray
  },
  {
    "TestColorByStringArrayDefaultLookupTable",
    TestColorByStringArrayDefaultLookupTable
  },
  {
    "TestColorByStringArrayDefaultLookupTable2D",
    TestColorByStringArrayDefaultLookupTable2D
  },
  {
    "TestColorTransferFunction",
    TestColorTransferFunction
  },
  {
    "TestColorTransferFunctionStringArray",
    TestColorTransferFunctionStringArray
  },
  {
    "TestDirectScalarsToColors",
    TestDirectScalarsToColors
  },
  {
    "TestDiscretizableColorTransferFunction",
    TestDiscretizableColorTransferFunction
  },
  {
    "TestDiscretizableColorTransferFunctionStringArray",
    TestDiscretizableColorTransferFunctionStringArray
  },
  {
    "TestDiscretizableColorTransferFunctionOpacity",
    TestDiscretizableColorTransferFunctionOpacity
  },
  {
    "TestEdgeFlags",
    TestEdgeFlags
  },
  {
    "TestFollowerPicking",
    TestFollowerPicking
  },
  {
    "TestGlyph3DMapper",
    TestGlyph3DMapper
  },
  {
    "TestGlyph3DMapper2",
    TestGlyph3DMapper2
  },
  {
    "TestGlyph3DMapperArrow",
    TestGlyph3DMapperArrow
  },
  {
    "TestGlyph3DMapperIndexing",
    TestGlyph3DMapperIndexing
  },
  {
    "TestGlyph3DMapperMasking",
    TestGlyph3DMapperMasking
  },
  {
    "TestGlyph3DMapperOrientationArray",
    TestGlyph3DMapperOrientationArray
  },
  {
    "TestGlyph3DMapperQuaternionArray",
    TestGlyph3DMapperQuaternionArray
  },
  {
    "TestGlyph3DMapperPicking",
    TestGlyph3DMapperPicking
  },
  {
    "TestGlyph3DMapperTreeIndexing",
    TestGlyph3DMapperTreeIndexing
  },
  {
    "TestGradientBackground",
    TestGradientBackground
  },
  {
    "TestHiddenLineRemovalPass",
    TestHiddenLineRemovalPass
  },
  {
    "TestHomogeneousTransformOfActor",
    TestHomogeneousTransformOfActor
  },
  {
    "TestImageAndAnnotations",
    TestImageAndAnnotations
  },
  {
    "TestInteractorStyleImageProperty",
    TestInteractorStyleImageProperty
  },
  {
    "TestInteractorTimers",
    TestInteractorTimers
  },
  {
    "TestLabeledContourMapper",
    TestLabeledContourMapper
  },
  {
    "TestLabeledContourMapperWithActorMatrix",
    TestLabeledContourMapperWithActorMatrix
  },
  {
    "TestPickingManager",
    TestPickingManager
  },
  {
    "TestManyActors",
    TestManyActors
  },
  {
    "TestMapVectorsAsRGBColors",
    TestMapVectorsAsRGBColors
  },
  {
    "TestMapVectorsToColors",
    TestMapVectorsToColors
  },
  {
    "TestOffAxisStereo",
    TestOffAxisStereo
  },
  {
    "TestOrderedTriangulator",
    TestOrderedTriangulator
  },
  {
    "TestOpacity",
    TestOpacity
  },
  {
    "TestStereoBackgroundLeft",
    TestStereoBackgroundLeft
  },
  {
    "TestStereoBackgroundRight",
    TestStereoBackgroundRight
  },
  {
    "TestOSConeCxx",
    TestOSConeCxx
  },
  {
    "TestPickTextActor",
    TestPickTextActor
  },
  {
    "TestPointSelection",
    TestPointSelection
  },
  {
    "TestPointSelectionWithCellData",
    TestPointSelectionWithCellData
  },
  {
    "TestPolygonSelection",
    TestPolygonSelection
  },
  {
    "TestResetCameraVerticalAspectRatio",
    TestResetCameraVerticalAspectRatio
  },
  {
    "TestResetCameraVerticalAspectRatioParallel",
    TestResetCameraVerticalAspectRatioParallel
  },
  {
    "TestSplitViewportStereoHorizontal",
    TestSplitViewportStereoHorizontal
  },
  {
    "TestTexturedBackground",
    TestTexturedBackground
  },
  {
    "TestTextureSize",
    TestTextureSize
  },
  {
    "TestTextureRGBA",
    TestTextureRGBA
  },
  {
    "TestTextureRGBADepthPeeling",
    TestTextureRGBADepthPeeling
  },
  {
    "TestTilingCxx",
    TestTilingCxx
  },
  {
    "TestTransformCoordinateUseDouble",
    TestTransformCoordinateUseDouble
  },
  {
    "TestTranslucentImageActorAlphaBlending",
    TestTranslucentImageActorAlphaBlending
  },
  {
    "TestTranslucentImageActorDepthPeeling",
    TestTranslucentImageActorDepthPeeling
  },
  {
    "TestTranslucentLUTDepthPeeling",
    TestTranslucentLUTDepthPeeling
  },
  {
    "TestTranslucentLUTTextureDepthPeeling",
    TestTranslucentLUTTextureDepthPeeling
  },
  {
    "TestTStripsColorsTCoords",
    TestTStripsColorsTCoords
  },
  {
    "TestTStripsNormalsColorsTCoords",
    TestTStripsNormalsColorsTCoords
  },
  {
    "TestTStripsNormalsTCoords",
    TestTStripsNormalsTCoords
  },
  {
    "TestTStripsTCoords",
    TestTStripsTCoords
  },
  {
    "TestWindowToImageFilter",
    TestWindowToImageFilter
  },
  {
    "otherLookupTable",
    otherLookupTable
  },
  {
    "otherLookupTableWithEnabling",
    otherLookupTableWithEnabling
  },
  {
    "RenderNonFinite",
    RenderNonFinite
  },
  {
    "SurfacePlusEdges",
    SurfacePlusEdges
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
 
    if (testToRun < 0 || testToRun >= NumTests) {
      printf("testToRun was modified by TestDriver code to an invalid value: "
             "%3d.\n",
             testNum);
      return -1;
    }
    result = (*cmakeGeneratedFunctionMapEntries[testToRun].func)(ac, av);

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
