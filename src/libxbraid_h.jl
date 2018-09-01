# Automatically generated using Clang.jl wrap_c, version 0.0.0

using Compat: Nothing

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

const braid_Status = Ptr{Nothing}

const braid_AccessStatus = Ptr{Nothing}

const braid_StepStatus = Ptr{Nothing}

const braid_CoarsenRefStatus = Ptr{Nothing}

const braid_BufferStatus = Ptr{Nothing}

const braid_App = Ptr{Nothing}

const braid_Vector = Ptr{Nothing}
const braid_PtFcnStep = Ptr{Nothing}
const braid_PtFcnInit = Ptr{Nothing}
const braid_PtFcnClone = Ptr{Nothing}
const braid_PtFcnFree = Ptr{Nothing}
const braid_PtFcnSum = Ptr{Nothing}
const braid_PtFcnSpatialNorm = Ptr{Nothing}
const braid_PtFcnAccess = Ptr{Nothing}
const braid_PtFcnBufSize = Ptr{Nothing}
const braid_PtFcnBufPack = Ptr{Nothing}
const braid_PtFcnBufUnpack = Ptr{Nothing}
const braid_PtFcnResidual = Ptr{Nothing}
const braid_PtFcnSCoarsen = Ptr{Nothing}
const braid_PtFcnSRefine = Ptr{Nothing}
const braid_PtFcnSInit = Ptr{Nothing}
const braid_PtFcnSClone = Ptr{Nothing}
const braid_PtFcnSFree = Ptr{Nothing}
const braid_PtFcnTimeGrid = Ptr{Nothing}

const braid_Core = Ptr{Nothing}