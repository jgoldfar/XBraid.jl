# XBraid.jl: Wrapper around the XBraid library (https://computation.llnl.gov/project/parallel-time-integration/software.php)
VERSION >= v"0.4.0-dev+6521" && __precompile__()
module XBraid
const depsfile = joinpath(dirname(dirname(@__FILE__)), "deps", "deps.jl")
using Compat
using MPI

if isfile(depsfile)
    include(depsfile)
else
    error("XBraid not properly installed. Please run Pkg.build(\"XBraid\")")
end

# Exports from libxbraid_h for low level interface.
export braid_Status, 
       braid_AccessStatus,
       braid_StepStatus,
       braid_CoarsenRefStatus,
       braid_BufferStatus,
       braid_App,
       braid_Vector,
       braid_PtFcnStep,
       braid_PtFcnInit,
       braid_PtFcnClone,
       braid_PtFcnFree,
       braid_PtFcnSum,
       braid_PtFcnSpatialNorm,
       braid_PtFcnAccess,
       braid_PtFcnBufSize,
       braid_PtFcnBufPack,
       braid_PtFcnBufUnpack,
       braid_PtFcnResidual,
       braid_PtFcnSCoarsen,
       braid_PtFcnSRefine,
       braid_PtFcnSInit,
       braid_PtFcnSClone,
       braid_PtFcnSFree,
       braid_PtFcnTimeGrid,
       braid_Core

include("libxbraid_h.jl")

include("libxbraid.jl")

end # module
