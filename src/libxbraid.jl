# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/XBraid/deps/usr/include/braid.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function arc4random()
    ccall((:arc4random, libbraid), UInt32, ())
end

function arc4random_addrandom(arg1, arg2::Cint)
    ccall((:arc4random_addrandom, libbraid), Void, (Ptr{Cuchar}, Cint), arg1, arg2)
end

function arc4random_buf(__buf, __nbytes::Csize_t)
    ccall((:arc4random_buf, libbraid), Void, (Ptr{Void}, Csize_t), __buf, __nbytes)
end

function arc4random_stir()
    ccall((:arc4random_stir, libbraid), Void, ())
end

function arc4random_uniform(__upper_bound::UInt32)
    ccall((:arc4random_uniform, libbraid), UInt32, (UInt32,), __upper_bound)
end

function _braid_ErrorHandler(filename, line::braid_Int, ierr::braid_Int, msg)
    ccall((:_braid_ErrorHandler, libbraid), Void, (Cstring, braid_Int, braid_Int, Cstring), filename, line, ierr, msg)
end

function StatusGetT(status::braid_Status, t_ptr)
    ccall((:braid_StatusGetT, libbraid), braid_Int, (braid_Status, Ptr{braid_Real}), status, t_ptr)
end

function StatusGetTIndex(status::braid_Status, idx_ptr)
    ccall((:braid_StatusGetTIndex, libbraid), braid_Int, (braid_Status, Ptr{braid_Int}), status, idx_ptr)
end

function StatusGetIter(status::braid_Status, iter_ptr)
    ccall((:braid_StatusGetIter, libbraid), braid_Int, (braid_Status, Ptr{braid_Int}), status, iter_ptr)
end

function StatusGetLevel(status::braid_Status, level_ptr)
    ccall((:braid_StatusGetLevel, libbraid), braid_Int, (braid_Status, Ptr{braid_Int}), status, level_ptr)
end

function StatusGetNRefine(status::braid_Status, nrefine_ptr)
    ccall((:braid_StatusGetNRefine, libbraid), braid_Int, (braid_Status, Ptr{braid_Int}), status, nrefine_ptr)
end

function StatusGetNTPoints(status::braid_Status, ntpoints_ptr)
    ccall((:braid_StatusGetNTPoints, libbraid), braid_Int, (braid_Status, Ptr{braid_Int}), status, ntpoints_ptr)
end

function StatusGetResidual(status::braid_Status, rnorm_ptr)
    ccall((:braid_StatusGetResidual, libbraid), braid_Int, (braid_Status, Ptr{braid_Real}), status, rnorm_ptr)
end

function StatusGetDone(status::braid_Status, done_ptr)
    ccall((:braid_StatusGetDone, libbraid), braid_Int, (braid_Status, Ptr{braid_Int}), status, done_ptr)
end

function StatusGetTILD(status::braid_Status, t_ptr, iter_ptr, level_ptr, done_ptr)
    ccall((:braid_StatusGetTILD, libbraid), braid_Int, (braid_Status, Ptr{braid_Real}, Ptr{braid_Int}, Ptr{braid_Int}, Ptr{braid_Int}), status, t_ptr, iter_ptr, level_ptr, done_ptr)
end

function StatusGetWrapperTest(status::braid_Status, wtest_ptr)
    ccall((:braid_StatusGetWrapperTest, libbraid), braid_Int, (braid_Status, Ptr{braid_Int}), status, wtest_ptr)
end

function StatusGetCallingFunction(status::braid_Status, cfunction_ptr)
    ccall((:braid_StatusGetCallingFunction, libbraid), braid_Int, (braid_Status, Ptr{braid_Int}), status, cfunction_ptr)
end

function StatusGetCTprior(status::braid_Status, ctprior_ptr)
    ccall((:braid_StatusGetCTprior, libbraid), braid_Int, (braid_Status, Ptr{braid_Real}), status, ctprior_ptr)
end

function StatusGetCTstop(status::braid_Status, ctstop_ptr)
    ccall((:braid_StatusGetCTstop, libbraid), braid_Int, (braid_Status, Ptr{braid_Real}), status, ctstop_ptr)
end

function StatusGetFTprior(status::braid_Status, ftprior_ptr)
    ccall((:braid_StatusGetFTprior, libbraid), braid_Int, (braid_Status, Ptr{braid_Real}), status, ftprior_ptr)
end

function StatusGetFTstop(status::braid_Status, ftstop_ptr)
    ccall((:braid_StatusGetFTstop, libbraid), braid_Int, (braid_Status, Ptr{braid_Real}), status, ftstop_ptr)
end

function StatusGetTpriorTstop(status::braid_Status, t_ptr, ftprior_ptr, ftstop_ptr, ctprior_ptr, ctstop_ptr)
    ccall((:braid_StatusGetTpriorTstop, libbraid), braid_Int, (braid_Status, Ptr{braid_Real}, Ptr{braid_Real}, Ptr{braid_Real}, Ptr{braid_Real}, Ptr{braid_Real}), status, t_ptr, ftprior_ptr, ftstop_ptr, ctprior_ptr, ctstop_ptr)
end

function StatusGetTstop(status::braid_Status, tstop_ptr)
    ccall((:braid_StatusGetTstop, libbraid), braid_Int, (braid_Status, Ptr{braid_Real}), status, tstop_ptr)
end

function StatusGetTstartTstop(status::braid_Status, tstart_ptr, tstop_ptr)
    ccall((:braid_StatusGetTstartTstop, libbraid), braid_Int, (braid_Status, Ptr{braid_Real}, Ptr{braid_Real}), status, tstart_ptr, tstop_ptr)
end

function StatusGetTol(status::braid_Status, tol_ptr)
    ccall((:braid_StatusGetTol, libbraid), braid_Int, (braid_Status, Ptr{braid_Real}), status, tol_ptr)
end

function StatusGetRNorms(status::braid_Status, nrequest_ptr, rnorms_ptr)
    ccall((:braid_StatusGetRNorms, libbraid), braid_Int, (braid_Status, Ptr{braid_Int}, Ptr{braid_Real}), status, nrequest_ptr, rnorms_ptr)
end

function StatusGetOldFineTolx(status::braid_Status, old_fine_tolx_ptr)
    ccall((:braid_StatusGetOldFineTolx, libbraid), braid_Int, (braid_Status, Ptr{braid_Real}), status, old_fine_tolx_ptr)
end

function StatusSetOldFineTolx(status::braid_Status, old_fine_tolx::braid_Real)
    ccall((:braid_StatusSetOldFineTolx, libbraid), braid_Int, (braid_Status, braid_Real), status, old_fine_tolx)
end

function StatusSetTightFineTolx(status::braid_Status, tight_fine_tolx::braid_Real)
    ccall((:braid_StatusSetTightFineTolx, libbraid), braid_Int, (braid_Status, braid_Real), status, tight_fine_tolx)
end

function StatusSetRFactor(status::braid_Status, rfactor::braid_Real)
    ccall((:braid_StatusSetRFactor, libbraid), braid_Int, (braid_Status, braid_Real), status, rfactor)
end

function StatusSetRSpace(status::braid_Status, r_space::braid_Real)
    ccall((:braid_StatusSetRSpace, libbraid), braid_Int, (braid_Status, braid_Real), status, r_space)
end

function StatusGetMessageType(status::braid_Status, messagetype_ptr)
    ccall((:braid_StatusGetMessageType, libbraid), braid_Int, (braid_Status, Ptr{braid_Int}), status, messagetype_ptr)
end

function StatusSetSize(status::braid_Status, size::braid_Real)
    ccall((:braid_StatusSetSize, libbraid), braid_Int, (braid_Status, braid_Real), status, size)
end

function AccessStatusGetT(s::braid_AccessStatus, v1)
    ccall((:braid_AccessStatusGetT, libbraid), braid_Int, (braid_AccessStatus, Ptr{braid_Real}), s, v1)
end

function AccessStatusGetTIndex(s::braid_AccessStatus, v1)
    ccall((:braid_AccessStatusGetTIndex, libbraid), braid_Int, (braid_AccessStatus, Ptr{braid_Int}), s, v1)
end

function AccessStatusGetIter(s::braid_AccessStatus, v1)
    ccall((:braid_AccessStatusGetIter, libbraid), braid_Int, (braid_AccessStatus, Ptr{braid_Int}), s, v1)
end

function AccessStatusGetLevel(s::braid_AccessStatus, v1)
    ccall((:braid_AccessStatusGetLevel, libbraid), braid_Int, (braid_AccessStatus, Ptr{braid_Int}), s, v1)
end

function AccessStatusGetNRefine(s::braid_AccessStatus, v1)
    ccall((:braid_AccessStatusGetNRefine, libbraid), braid_Int, (braid_AccessStatus, Ptr{braid_Int}), s, v1)
end

function AccessStatusGetNTPoints(s::braid_AccessStatus, v1)
    ccall((:braid_AccessStatusGetNTPoints, libbraid), braid_Int, (braid_AccessStatus, Ptr{braid_Int}), s, v1)
end

function AccessStatusGetResidual(s::braid_AccessStatus, v1)
    ccall((:braid_AccessStatusGetResidual, libbraid), braid_Int, (braid_AccessStatus, Ptr{braid_Real}), s, v1)
end

function AccessStatusGetDone(s::braid_AccessStatus, v1)
    ccall((:braid_AccessStatusGetDone, libbraid), braid_Int, (braid_AccessStatus, Ptr{braid_Int}), s, v1)
end

function AccessStatusGetTILD(s::braid_AccessStatus, v1, v2, v3, v4)
    ccall((:braid_AccessStatusGetTILD, libbraid), braid_Int, (braid_AccessStatus, Ptr{braid_Real}, Ptr{braid_Int}, Ptr{braid_Int}, Ptr{braid_Int}), s, v1, v2, v3, v4)
end

function AccessStatusGetWrapperTest(s::braid_AccessStatus, v1)
    ccall((:braid_AccessStatusGetWrapperTest, libbraid), braid_Int, (braid_AccessStatus, Ptr{braid_Int}), s, v1)
end

function AccessStatusGetCallingFunction(s::braid_AccessStatus, v1)
    ccall((:braid_AccessStatusGetCallingFunction, libbraid), braid_Int, (braid_AccessStatus, Ptr{braid_Int}), s, v1)
end

function CoarsenRefStatusGetT(s::braid_CoarsenRefStatus, v1)
    ccall((:braid_CoarsenRefStatusGetT, libbraid), braid_Int, (braid_CoarsenRefStatus, Ptr{braid_Real}), s, v1)
end

function CoarsenRefStatusGetTIndex(s::braid_CoarsenRefStatus, v1)
    ccall((:braid_CoarsenRefStatusGetTIndex, libbraid), braid_Int, (braid_CoarsenRefStatus, Ptr{braid_Int}), s, v1)
end

function CoarsenRefStatusGetIter(s::braid_CoarsenRefStatus, v1)
    ccall((:braid_CoarsenRefStatusGetIter, libbraid), braid_Int, (braid_CoarsenRefStatus, Ptr{braid_Int}), s, v1)
end

function CoarsenRefStatusGetLevel(s::braid_CoarsenRefStatus, v1)
    ccall((:braid_CoarsenRefStatusGetLevel, libbraid), braid_Int, (braid_CoarsenRefStatus, Ptr{braid_Int}), s, v1)
end

function CoarsenRefStatusGetNRefine(s::braid_CoarsenRefStatus, v1)
    ccall((:braid_CoarsenRefStatusGetNRefine, libbraid), braid_Int, (braid_CoarsenRefStatus, Ptr{braid_Int}), s, v1)
end

function CoarsenRefStatusGetNTPoints(s::braid_CoarsenRefStatus, v1)
    ccall((:braid_CoarsenRefStatusGetNTPoints, libbraid), braid_Int, (braid_CoarsenRefStatus, Ptr{braid_Int}), s, v1)
end

function CoarsenRefStatusGetCTprior(s::braid_CoarsenRefStatus, v1)
    ccall((:braid_CoarsenRefStatusGetCTprior, libbraid), braid_Int, (braid_CoarsenRefStatus, Ptr{braid_Real}), s, v1)
end

function CoarsenRefStatusGetCTstop(s::braid_CoarsenRefStatus, v1)
    ccall((:braid_CoarsenRefStatusGetCTstop, libbraid), braid_Int, (braid_CoarsenRefStatus, Ptr{braid_Real}), s, v1)
end

function CoarsenRefStatusGetFTprior(s::braid_CoarsenRefStatus, v1)
    ccall((:braid_CoarsenRefStatusGetFTprior, libbraid), braid_Int, (braid_CoarsenRefStatus, Ptr{braid_Real}), s, v1)
end

function CoarsenRefStatusGetFTstop(s::braid_CoarsenRefStatus, v1)
    ccall((:braid_CoarsenRefStatusGetFTstop, libbraid), braid_Int, (braid_CoarsenRefStatus, Ptr{braid_Real}), s, v1)
end

function CoarsenRefStatusGetTpriorTstop(s::braid_CoarsenRefStatus, v1, v2, v3, v4, v5)
    ccall((:braid_CoarsenRefStatusGetTpriorTstop, libbraid), braid_Int, (braid_CoarsenRefStatus, Ptr{braid_Real}, Ptr{braid_Real}, Ptr{braid_Real}, Ptr{braid_Real}, Ptr{braid_Real}), s, v1, v2, v3, v4, v5)
end

function StepStatusGetT(s::braid_StepStatus, v1)
    ccall((:braid_StepStatusGetT, libbraid), braid_Int, (braid_StepStatus, Ptr{braid_Real}), s, v1)
end

function StepStatusGetTIndex(s::braid_StepStatus, v1)
    ccall((:braid_StepStatusGetTIndex, libbraid), braid_Int, (braid_StepStatus, Ptr{braid_Int}), s, v1)
end

function StepStatusGetIter(s::braid_StepStatus, v1)
    ccall((:braid_StepStatusGetIter, libbraid), braid_Int, (braid_StepStatus, Ptr{braid_Int}), s, v1)
end

function StepStatusGetLevel(s::braid_StepStatus, v1)
    ccall((:braid_StepStatusGetLevel, libbraid), braid_Int, (braid_StepStatus, Ptr{braid_Int}), s, v1)
end

function StepStatusGetNRefine(s::braid_StepStatus, v1)
    ccall((:braid_StepStatusGetNRefine, libbraid), braid_Int, (braid_StepStatus, Ptr{braid_Int}), s, v1)
end

function StepStatusGetNTPoints(s::braid_StepStatus, v1)
    ccall((:braid_StepStatusGetNTPoints, libbraid), braid_Int, (braid_StepStatus, Ptr{braid_Int}), s, v1)
end

function StepStatusGetTstop(s::braid_StepStatus, v1)
    ccall((:braid_StepStatusGetTstop, libbraid), braid_Int, (braid_StepStatus, Ptr{braid_Real}), s, v1)
end

function StepStatusGetTstartTstop(s::braid_StepStatus, v1, v2)
    ccall((:braid_StepStatusGetTstartTstop, libbraid), braid_Int, (braid_StepStatus, Ptr{braid_Real}, Ptr{braid_Real}), s, v1, v2)
end

function StepStatusGetTol(s::braid_StepStatus, v1)
    ccall((:braid_StepStatusGetTol, libbraid), braid_Int, (braid_StepStatus, Ptr{braid_Real}), s, v1)
end

function StepStatusGetRNorms(s::braid_StepStatus, v1, v2)
    ccall((:braid_StepStatusGetRNorms, libbraid), braid_Int, (braid_StepStatus, Ptr{braid_Int}, Ptr{braid_Real}), s, v1, v2)
end

function StepStatusGetOldFineTolx(s::braid_StepStatus, v1)
    ccall((:braid_StepStatusGetOldFineTolx, libbraid), braid_Int, (braid_StepStatus, Ptr{braid_Real}), s, v1)
end

function StepStatusSetOldFineTolx(s::braid_StepStatus, v1::braid_Real)
    ccall((:braid_StepStatusSetOldFineTolx, libbraid), braid_Int, (braid_StepStatus, braid_Real), s, v1)
end

function StepStatusSetTightFineTolx(s::braid_StepStatus, v1::braid_Real)
    ccall((:braid_StepStatusSetTightFineTolx, libbraid), braid_Int, (braid_StepStatus, braid_Real), s, v1)
end

function StepStatusSetRFactor(s::braid_StepStatus, v1::braid_Real)
    ccall((:braid_StepStatusSetRFactor, libbraid), braid_Int, (braid_StepStatus, braid_Real), s, v1)
end

function StepStatusSetRSpace(s::braid_StepStatus, v1::braid_Real)
    ccall((:braid_StepStatusSetRSpace, libbraid), braid_Int, (braid_StepStatus, braid_Real), s, v1)
end

function BufferStatusGetMessageType(s::braid_BufferStatus, v1)
    ccall((:braid_BufferStatusGetMessageType, libbraid), braid_Int, (braid_BufferStatus, Ptr{braid_Int}), s, v1)
end

function BufferStatusSetSize(s::braid_BufferStatus, v1::braid_Real)
    ccall((:braid_BufferStatusSetSize, libbraid), braid_Int, (braid_BufferStatus, braid_Real), s, v1)
end

function Init(comm_world::MPI.Comm, comm::MPI.Comm, tstart::braid_Real, tstop::braid_Real, ntime::braid_Int, app, step::braid_PtFcnStep, init::braid_PtFcnInit, clone::braid_PtFcnClone, free::braid_PtFcnFree, sum::braid_PtFcnSum, spatialnorm::braid_PtFcnSpatialNorm, access::braid_PtFcnAccess, bufsize::braid_PtFcnBufSize, bufpack::braid_PtFcnBufPack, bufunpack::braid_PtFcnBufUnpack, core)
    ccall((:braid_Init, libbraid), braid_Int, (Ptr{Void}, Ptr{Void}, braid_Real, braid_Real, braid_Int, braid_App, braid_PtFcnStep, braid_PtFcnInit, braid_PtFcnClone, braid_PtFcnFree, braid_PtFcnSum, braid_PtFcnSpatialNorm, braid_PtFcnAccess, braid_PtFcnBufSize, braid_PtFcnBufPack, braid_PtFcnBufUnpack, Ptr{braid_Core}), &comm_world.val, &comm.val, tstart, tstop, ntime, app, step, init, clone, free, sum, spatialnorm, access, bufsize, bufpack, bufunpack, &core)
end

function Drive(core::braid_Core)
    ccall((:braid_Drive, libbraid), braid_Int, (braid_Core,), core)
end

function Destroy(core::braid_Core)
    ccall((:braid_Destroy, libbraid), braid_Int, (braid_Core,), core)
end

function PrintStats(core::braid_Core)
    ccall((:braid_PrintStats, libbraid), braid_Int, (braid_Core,), core)
end

function SetMaxLevels(core::braid_Core, max_levels::braid_Int)
    ccall((:braid_SetMaxLevels, libbraid), braid_Int, (braid_Core, braid_Int), core, max_levels)
end

function SetSkip(core::braid_Core, skip::braid_Int)
    ccall((:braid_SetSkip, libbraid), braid_Int, (braid_Core, braid_Int), core, skip)
end

function SetRefine(core::braid_Core, refine::braid_Int)
    ccall((:braid_SetRefine, libbraid), braid_Int, (braid_Core, braid_Int), core, refine)
end

function SetMaxRefinements(core::braid_Core, max_refinements::braid_Int)
    ccall((:braid_SetMaxRefinements, libbraid), braid_Int, (braid_Core, braid_Int), core, max_refinements)
end

function SetTPointsCutoff(core::braid_Core, tpoints_cutoff::braid_Int)
    ccall((:braid_SetTPointsCutoff, libbraid), braid_Int, (braid_Core, braid_Int), core, tpoints_cutoff)
end

function SetMinCoarse(core::braid_Core, min_coarse::braid_Int)
    ccall((:braid_SetMinCoarse, libbraid), braid_Int, (braid_Core, braid_Int), core, min_coarse)
end

function SetAbsTol(core::braid_Core, atol::braid_Real)
    ccall((:braid_SetAbsTol, libbraid), braid_Int, (braid_Core, braid_Real), core, atol)
end

function SetRelTol(core::braid_Core, rtol::braid_Real)
    ccall((:braid_SetRelTol, libbraid), braid_Int, (braid_Core, braid_Real), core, rtol)
end

function SetNRelax(core::braid_Core, level::braid_Int, nrelax::braid_Int)
    ccall((:braid_SetNRelax, libbraid), braid_Int, (braid_Core, braid_Int, braid_Int), core, level, nrelax)
end

function SetCFactor(core::braid_Core, level::braid_Int, cfactor::braid_Int)
    ccall((:braid_SetCFactor, libbraid), braid_Int, (braid_Core, braid_Int, braid_Int), core, level, cfactor)
end

function SetMaxIter(core::braid_Core, max_iter::braid_Int)
    ccall((:braid_SetMaxIter, libbraid), braid_Int, (braid_Core, braid_Int), core, max_iter)
end

function SetFMG(core::braid_Core)
    ccall((:braid_SetFMG, libbraid), braid_Int, (braid_Core,), core)
end

function SetNFMG(core::braid_Core, k::braid_Int)
    ccall((:braid_SetNFMG, libbraid), braid_Int, (braid_Core, braid_Int), core, k)
end

function SetNFMGVcyc(core::braid_Core, nfmg_Vcyc::braid_Int)
    ccall((:braid_SetNFMGVcyc, libbraid), braid_Int, (braid_Core, braid_Int), core, nfmg_Vcyc)
end

function SetStorage(core::braid_Core, storage::braid_Int)
    ccall((:braid_SetStorage, libbraid), braid_Int, (braid_Core, braid_Int), core, storage)
end

function SetTemporalNorm(core::braid_Core, tnorm::braid_Int)
    ccall((:braid_SetTemporalNorm, libbraid), braid_Int, (braid_Core, braid_Int), core, tnorm)
end

function SetResidual(core::braid_Core, residual::braid_PtFcnResidual)
    ccall((:braid_SetResidual, libbraid), braid_Int, (braid_Core, braid_PtFcnResidual), core, residual)
end

function SetFullRNormRes(core::braid_Core, residual::braid_PtFcnResidual)
    ccall((:braid_SetFullRNormRes, libbraid), braid_Int, (braid_Core, braid_PtFcnResidual), core, residual)
end

function SetTimeGrid(core::braid_Core, tgrid::braid_PtFcnTimeGrid)
    ccall((:braid_SetTimeGrid, libbraid), braid_Int, (braid_Core, braid_PtFcnTimeGrid), core, tgrid)
end

function SetSpatialCoarsen(core::braid_Core, scoarsen::braid_PtFcnSCoarsen)
    ccall((:braid_SetSpatialCoarsen, libbraid), braid_Int, (braid_Core, braid_PtFcnSCoarsen), core, scoarsen)
end

function SetSpatialRefine(core::braid_Core, srefine::braid_PtFcnSRefine)
    ccall((:braid_SetSpatialRefine, libbraid), braid_Int, (braid_Core, braid_PtFcnSRefine), core, srefine)
end

function SetPrintLevel(core::braid_Core, print_level::braid_Int)
    ccall((:braid_SetPrintLevel, libbraid), braid_Int, (braid_Core, braid_Int), core, print_level)
end

function SetPrintFile(core::braid_Core, printfile_name)
    ccall((:braid_SetPrintFile, libbraid), braid_Int, (braid_Core, Cstring), core, printfile_name)
end

function SetDefaultPrintFile(core::braid_Core)
    ccall((:braid_SetDefaultPrintFile, libbraid), braid_Int, (braid_Core,), core)
end

function SetAccessLevel(core::braid_Core, access_level::braid_Int)
    ccall((:braid_SetAccessLevel, libbraid), braid_Int, (braid_Core, braid_Int), core, access_level)
end

function SplitCommworld(comm_world::MPI.Comm, px::braid_Int, comm_x::MPI.Comm, comm_t::MPI.Comm)
    ccall((:braid_SplitCommworld, libbraid), braid_Int, (Ptr{Void}, braid_Int, Ptr{Void}, Ptr{Void}), &comm_world.val, px, &comm_x.val, &comm_t.val)
end

function SetShell(core::braid_Core, sinit::braid_PtFcnSInit, sclone::braid_PtFcnSClone, sfree::braid_PtFcnSFree)
    ccall((:braid_SetShell, libbraid), braid_Int, (braid_Core, braid_PtFcnSInit, braid_PtFcnSClone, braid_PtFcnSFree), core, sinit, sclone, sfree)
end

function GetNumIter(core::braid_Core, niter_ptr)
    ccall((:braid_GetNumIter, libbraid), braid_Int, (braid_Core, Ptr{braid_Int}), core, niter_ptr)
end

function GetRNorms(core::braid_Core, nrequest_ptr, rnorms)
    ccall((:braid_GetRNorms, libbraid), braid_Int, (braid_Core, Ptr{braid_Int}, Ptr{braid_Real}), core, nrequest_ptr, rnorms)
end

function GetNLevels(core::braid_Core, nlevels_ptr)
    ccall((:braid_GetNLevels, libbraid), braid_Int, (braid_Core, Ptr{braid_Int}), core, nlevels_ptr)
end

function GetSpatialAccuracy(status::braid_StepStatus, loose_tol::braid_Real, tight_tol::braid_Real, tol_ptr)
    ccall((:braid_GetSpatialAccuracy, libbraid), braid_Int, (braid_StepStatus, braid_Real, braid_Real, Ptr{braid_Real}), status, loose_tol, tight_tol, tol_ptr)
end

function SetSeqSoln(core::braid_Core, seq_soln::braid_Int)
    ccall((:braid_SetSeqSoln, libbraid), braid_Int, (braid_Core, braid_Int), core, seq_soln)
end
