// SPDX-FileCopyrightText: Copyright (c) Ken Martin, Will Schroeder, Bill Lorensen
// SPDX-License-Identifier: BSD-3-Clause
#include "vtkCellGridVS.h"

const char *vtkCellGridVS =
"//VTK::System::Dec\n"
"\n"
"// SPDX-FileCopyrightText: Copyright (c) Ken Martin, Will Schroeder, Bill Lorensen\n"
"// SPDX-License-Identifier: BSD-3-Clause\n"
"// Template for the cellgrid mappers vertex shader\n"
"\n"
"out int vtkCellSideId;\n"
"\n"
"//----------------------------------------------------------------\n"
"void main()\n"
"{\n"
"  // gl_VertexID is the vtk side id. The geometry shader turns this into a quadrilateral\n"
"  vtkCellSideId = gl_VertexID;\n"
"  gl_Position = vec4(0,0,0,1);\n"
"}\n"
"";
