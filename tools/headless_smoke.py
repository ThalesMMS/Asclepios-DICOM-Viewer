#!/usr/bin/env python3
"""Headless regression smoke tests for Asclepios DICOM viewer rendering pipeline."""

from __future__ import annotations

import argparse
import copy
import sys
import tempfile
from dataclasses import dataclass
from pathlib import Path
from typing import Callable, Iterable, Tuple

import numpy as np
from pydicom.dataset import FileDataset, FileMetaDataset
from pydicom.uid import CTImageStorage, ExplicitVRLittleEndian, generate_uid
from vtkmodules.vtkCommonDataModel import vtkImageData
from vtkmodules.vtkCommonMath import vtkMatrix4x4
from vtkmodules.vtkImagingCore import vtkImageCast, vtkImageReslice
from vtkmodules.vtkIOImage import vtkDICOMImageReader
from vtkmodules.util import numpy_support


WINDOW = 400.0
LEVEL = 40.0
IMAGE_DIMS = (96, 96, 96)  # (z, y, x)
SCENARIO_C_REPEATS = 3


@dataclass
class SeriesSpec:
    name: str
    spacing: Tuple[float, float, float]  # (row, column, slice)
    generator: Callable[[Tuple[int, int, int]], np.ndarray]


def _write_dicom_series(target: Path, array: np.ndarray, spacing: Tuple[float, float, float], series_name: str) -> Path:
    target.mkdir(parents=True, exist_ok=True)

    array = np.clip(array, -1024, 3071).astype(np.int16)

    file_meta = FileMetaDataset()
    file_meta.MediaStorageSOPClassUID = CTImageStorage
    file_meta.TransferSyntaxUID = ExplicitVRLittleEndian
    file_meta.ImplementationClassUID = generate_uid()

    study_uid = generate_uid()
    series_uid = generate_uid()

    for index, slice_pixels in enumerate(array):
        filename = target / f"{series_name}_{index:03d}.dcm"
        meta = copy.deepcopy(file_meta)
        meta.MediaStorageSOPInstanceUID = generate_uid()

        ds = FileDataset(str(filename), {}, file_meta=meta, preamble=b"\0" * 128)
        ds.is_little_endian = True
        ds.is_implicit_VR = False

        ds.SOPClassUID = CTImageStorage
        ds.SOPInstanceUID = meta.MediaStorageSOPInstanceUID
        ds.PatientName = "Asclepios^Phantom"
        ds.PatientID = "HEADLESS"
        ds.StudyInstanceUID = study_uid
        ds.SeriesInstanceUID = series_uid
        ds.Modality = "CT"
        ds.SeriesNumber = 1
        ds.InstanceNumber = index + 1
        ds.ImagePositionPatient = [0.0, 0.0, float(index) * spacing[2]]
        ds.ImageOrientationPatient = [1, 0, 0, 0, 1, 0]
        ds.PixelSpacing = [spacing[0], spacing[1]]
        ds.SliceThickness = spacing[2]
        ds.SpacingBetweenSlices = spacing[2]
        ds.SamplesPerPixel = 1
        ds.PhotometricInterpretation = "MONOCHROME2"
        ds.Rows = int(slice_pixels.shape[0])
        ds.Columns = int(slice_pixels.shape[1])
        ds.PixelRepresentation = 1
        ds.HighBit = 15
        ds.BitsStored = 16
        ds.BitsAllocated = 16
        ds.RescaleIntercept = 0
        ds.RescaleSlope = 1
        ds.WindowCenter = LEVEL
        ds.WindowWidth = WINDOW
        ds.PixelData = slice_pixels.tobytes(order="C")

        ds.save_as(str(filename), write_like_original=False)

    return target


def _load_series(path: Path) -> vtkImageData:
    reader = vtkDICOMImageReader()
    reader.SetDirectoryName(str(path))
    reader.Update()
    image = reader.GetOutput()
    caster = vtkImageCast()
    caster.SetInputData(image)
    caster.SetOutputScalarTypeToShort()
    caster.Update()
    return caster.GetOutput()


def _volume_to_numpy(image: vtkImageData) -> np.ndarray:
    dims = image.GetDimensions()
    scalars = numpy_support.vtk_to_numpy(image.GetPointData().GetScalars())
    volume = scalars.reshape(dims[2], dims[1], dims[0])
    return volume.astype(np.float32)


def _apply_window_level(volume: np.ndarray, window: float, level: float) -> np.ndarray:
    lower = level - window / 2.0
    upper = level + window / 2.0
    scaled = (volume - lower) / (upper - lower)
    return np.clip(scaled, 0.0, 1.0)


def _render_volume_projection(image: vtkImageData) -> np.ndarray:
    volume = _volume_to_numpy(image)
    normalized = _apply_window_level(volume, WINDOW, LEVEL)
    # Simple front-to-back compositing assuming unit step size and grayscale color.
    transmittance = np.ones(normalized.shape[1:], dtype=np.float32)
    accumulation = np.zeros_like(transmittance)
    step_alpha = 0.12
    for slab in normalized:
        alpha = np.clip(slab * step_alpha, 0.0, 1.0)
        accumulation += transmittance * slab * alpha
        transmittance *= (1.0 - alpha)
    accumulation = np.clip(accumulation, 0.0, 1.0)
    return accumulation * 255.0


def _mpr_slice(image: vtkImageData, axis: int) -> np.ndarray:
    reslice = vtkImageReslice()
    reslice.SetInputData(image)
    reslice.SetOutputDimensionality(2)
    matrix = vtkMatrix4x4()
    matrix.Identity()
    if axis == 0:  # sagittal
        matrix.SetElement(0, 0, 0)
        matrix.SetElement(0, 1, 1)
        matrix.SetElement(1, 0, 1)
        matrix.SetElement(1, 1, 0)
    elif axis == 1:  # coronal
        matrix.SetElement(0, 1, 0)
        matrix.SetElement(0, 2, 1)
        matrix.SetElement(1, 1, 1)
        matrix.SetElement(1, 2, 0)
    reslice.SetResliceAxes(matrix)
    reslice.Update()

    output = reslice.GetOutput()
    array = numpy_support.vtk_to_numpy(output.GetPointData().GetScalars())
    dims = output.GetDimensions()
    return array.reshape(max(dims[1], 1), max(dims[0], 1)).astype(np.float32)


def _compute_histogram(image: np.ndarray, bins: int = 32) -> np.ndarray:
    hist, _ = np.histogram(image, bins=bins, range=(0, 255), density=True)
    return hist


def _normalise_hist(hist: np.ndarray) -> np.ndarray:
    norm = np.linalg.norm(hist)
    if norm == 0:
        return hist
    return hist / norm


def scenario_a(ct_dir: Path) -> None:
    specs = [
        SeriesSpec(
            name="gradient",
            spacing=(0.8, 0.8, 1.2),
            generator=lambda shape: _ellipsoid_volume(shape, offset=100, scale=400),
        ),
        SeriesSpec(
            name="spikes",
            spacing=(0.8, 0.8, 1.2),
            generator=lambda shape: _concentric_volume(shape, peak=800, background=-200),
        ),
    ]

    histograms = []
    mpr_means = []
    for spec in specs:
        array = spec.generator(IMAGE_DIMS)
        series_path = ct_dir / spec.name
        _write_dicom_series(series_path, array, spec.spacing, spec.name)
        volume_data = _load_series(series_path)
        rendered = _render_volume_projection(volume_data)
        histograms.append(_compute_histogram(rendered))
        mpr = _mpr_slice(volume_data, axis=2)
        mpr_means.append(mpr.mean())
        assert rendered.mean() > 5.0, f"{spec.name} projection looks empty"
        assert mpr.mean() > -200, f"{spec.name} MPR looks too dark"

    cosine = float(np.dot(_normalise_hist(histograms[0]), _normalise_hist(histograms[1])))
    assert cosine < 0.9, f"Expected divergent histograms, got cosine={cosine:.3f}"
    assert abs(mpr_means[0] - mpr_means[1]) > 1.0, "MPR means should differ"


def scenario_b(ct_dir: Path) -> None:
    base_generator = lambda shape: _ellipsoid_volume(shape, offset=150, scale=500)
    specs = [
        SeriesSpec("spacing_05", (0.5, 0.5, 0.5), base_generator),
        SeriesSpec("spacing_10", (1.0, 1.0, 1.0), base_generator),
    ]

    means = []
    for spec in specs:
        array = spec.generator(IMAGE_DIMS)
        series_path = ct_dir / spec.name
        _write_dicom_series(series_path, array, spec.spacing, spec.name)
        volume_data = _load_series(series_path)
        rendered = _render_volume_projection(volume_data)
        means.append(rendered.mean())
        assert rendered.mean() > 5.0, f"{spec.name} projection looks empty"

    ratio = max(means) / min(means)
    assert ratio < 1.15, f"Spacing render means diverged (ratio={ratio:.3f})"


def scenario_c(ct_dir: Path) -> None:
    generator = lambda shape: _concentric_volume(shape, peak=600, background=-100)
    array = generator(IMAGE_DIMS)
    series_path = ct_dir / "stable"
    _write_dicom_series(series_path, array, (0.9, 0.9, 0.9), "stable")

    reference_hist = None
    for idx in range(SCENARIO_C_REPEATS):
        volume_data = _load_series(series_path)
        rendered = _render_volume_projection(volume_data)
        hist = _compute_histogram(rendered)
        if reference_hist is None:
            reference_hist = hist
        else:
            delta = np.linalg.norm(reference_hist - hist)
            assert delta < 0.02, f"Transfer function drifted on iteration {idx}: {delta:.4f}"


def _ellipsoid_volume(shape: Tuple[int, int, int], offset: float, scale: float) -> np.ndarray:
    zz, yy, xx = np.indices(shape)
    center = (np.array(shape) - 1) / 2.0
    radii = np.array(shape) / 2.5
    distance = ((zz - center[0]) / radii[0]) ** 2 + ((yy - center[1]) / radii[1]) ** 2 + (
        (xx - center[2]) / radii[2]
    ) ** 2
    volume = offset + scale * np.clip(1.0 - distance, 0.0, 1.0)
    noise = np.random.default_rng(123).normal(0, 15, size=shape)
    return volume.astype(np.float32) + noise.astype(np.float32)


def _concentric_volume(shape: Tuple[int, int, int], peak: float, background: float) -> np.ndarray:
    zz, yy, xx = np.indices(shape)
    center = (np.array(shape) - 1) / 2.0
    radius = np.linalg.norm(center)
    distance = np.sqrt((zz - center[0]) ** 2 + (yy - center[1]) ** 2 + (xx - center[2]) ** 2)
    shells = np.where(distance < radius * 0.4, peak, background)
    shells = np.where(distance < radius * 0.2, peak * 1.2, shells)
    noise = np.random.default_rng(456).normal(0, 20, size=shape)
    return shells.astype(np.float32) + noise.astype(np.float32)


def parse_args(argv: Iterable[str]) -> argparse.Namespace:
    parser = argparse.ArgumentParser(description="Headless smoke and regression tests")
    parser.add_argument("--keep", action="store_true", help="Keep generated DICOM series for inspection")
    parser.add_argument(
        "--output",
        type=Path,
        help="Directory where temporary DICOM data should be written. Overrides the default temporary directory.",
    )
    return parser.parse_args(list(argv))


def main(argv: Iterable[str]) -> int:
    args = parse_args(argv)

    tmp_dir_obj = None
    if args.output:
        tmp_root = args.output
        tmp_root.mkdir(parents=True, exist_ok=True)
    elif args.keep:
        tmp_root = Path(tempfile.mkdtemp(prefix="asclepios-headless-"))
    else:
        tmp_dir_obj = tempfile.TemporaryDirectory()
        tmp_root = Path(tmp_dir_obj.name)

    try:
        scenario_a(tmp_root / "scenario_a")
        scenario_b(tmp_root / "scenario_b")
        scenario_c(tmp_root / "scenario_c")
    finally:
        if tmp_dir_obj is not None:
            tmp_dir_obj.cleanup()

    print("All headless smoke tests passed")
    return 0


if __name__ == "__main__":  # pragma: no cover
    raise SystemExit(main(sys.argv[1:]))
