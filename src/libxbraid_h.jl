# Automatically generated using Clang.jl wrap_c, version 0.0.0

using Compat

# Skipping MacroDefinition: braid_isnan ( a ) ( a != a )
# Skipping MacroDefinition: ACCESSOR_HEADER_GET1 ( stype , param , vtype1 ) braid_Int braid_ ## stype ## StatusGet ## param ( braid_ ## stype ## Status s , braid_ ## vtype1 * v1 ) ;
# Skipping MacroDefinition: ACCESSOR_HEADER_GET2 ( stype , param , vtype1 , vtype2 ) braid_Int braid_ ## stype ## StatusGet ## param ( braid_ ## stype ## Status s , braid_ ## vtype1 * v1 , braid_ ## vtype2 * v2 ) ;
# Skipping MacroDefinition: ACCESSOR_HEADER_GET4 ( stype , param , vtype1 , vtype2 , vtype3 , vtype4 ) braid_Int braid_ ## stype ## StatusGet ## param ( braid_ ## stype ## Status s , braid_ ## vtype1 * v1 , braid_ ## vtype2 * v2 , braid_ ## vtype3 * v3 , braid_ ## vtype4 * v4 ) ;
# Skipping MacroDefinition: ACCESSOR_HEADER_GET5 ( stype , param , vtype1 , vtype2 , vtype3 , vtype4 , vtype5 ) braid_Int braid_ ## stype ## StatusGet ## param ( braid_ ## stype ## Status s , braid_ ## vtype1 * v1 , braid_ ## vtype2 * v2 , braid_ ## vtype3 * v3 , braid_ ## vtype4 * v4 , braid_ ## vtype5 * v5 ) ;
# Skipping MacroDefinition: ACCESSOR_HEADER_SET1 ( stype , param , vtype1 ) braid_Int braid_ ## stype ## StatusSet ## param ( braid_ ## stype ## Status s , braid_ ## vtype1 v1 ) ;

const braid_ASCaller_FInterp = 0
const braid_ASCaller_FRestrict = 1
const braid_ASCaller_FRefine = 2
const braid_ASCaller_FAccess = 3
const braid_FMANGLE = 1
const braid_Fortran_SpatialCoarsen = 0
const braid_Fortran_Residual = 1
const braid_Fortran_TimeGrid = 1
const braid_INVALID_RNORM = -1
const braid_ERROR_GENERIC = 1
const braid_ERROR_MEMORY = 2
const braid_ERROR_ARG = 4

const braid_Int = Cint
const braid_Real = Cdouble

const braid_Status = Ptr{Void}

const braid_AccessStatus = Ptr{Void}

const braid_StepStatus = Ptr{Void}

const braid_CoarsenRefStatus = Ptr{Void}

const braid_BufferStatus = Ptr{Void}

const braid_App = Ptr{Void}

const braid_Vector = Ptr{Void}
const braid_PtFcnStep = Ptr{Void}
const braid_PtFcnInit = Ptr{Void}
const braid_PtFcnClone = Ptr{Void}
const braid_PtFcnFree = Ptr{Void}
const braid_PtFcnSum = Ptr{Void}
const braid_PtFcnSpatialNorm = Ptr{Void}
const braid_PtFcnAccess = Ptr{Void}
const braid_PtFcnBufSize = Ptr{Void}
const braid_PtFcnBufPack = Ptr{Void}
const braid_PtFcnBufUnpack = Ptr{Void}
const braid_PtFcnResidual = Ptr{Void}
const braid_PtFcnSCoarsen = Ptr{Void}
const braid_PtFcnSRefine = Ptr{Void}
const braid_PtFcnSInit = Ptr{Void}
const braid_PtFcnSClone = Ptr{Void}
const braid_PtFcnSFree = Ptr{Void}
const braid_PtFcnTimeGrid = Ptr{Void}

const braid_Core = Ptr{Void}