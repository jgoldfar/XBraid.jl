# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/XBraid/deps/usr/include/braid.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function arc4random()
    ccall((:arc4random, libxbraid), UInt32, ())
end

function arc4random_addrandom(arg1, arg2::Cint)
    ccall((:arc4random_addrandom, libxbraid), Void, (Ptr{Cuchar}, Cint), arg1, arg2)
end

function arc4random_buf(__buf, __nbytes::Csize_t)
    ccall((:arc4random_buf, libxbraid), Void, (Ptr{Void}, Csize_t), __buf, __nbytes)
end

function arc4random_stir()
    ccall((:arc4random_stir, libxbraid), Void, ())
end

function arc4random_uniform(__upper_bound::UInt32)
    ccall((:arc4random_uniform, libxbraid), UInt32, (UInt32,), __upper_bound)
end

function _braid_ErrorHandler(filename, line::braid_Int, ierr::braid_Int, msg)
    ccall((:_braid_ErrorHandler, libxbraid), Void, (Cstring, braid_Int, braid_Int, Cstring), filename, line, ierr, msg)
end

function StatusGetT(status::braid_Status, t_ptr)
    ccall((:braid_StatusGetT, libxbraid), braid_Int, (braid_Status, Ptr{braid_Real}), status, t_ptr)
end

function StatusGetTIndex(status::braid_Status, idx_ptr)
    ccall((:braid_StatusGetTIndex, libxbraid), braid_Int, (braid_Status, Ptr{braid_Int}), status, idx_ptr)
end

function StatusGetIter(status::braid_Status, iter_ptr)
    ccall((:braid_StatusGetIter, libxbraid), braid_Int, (braid_Status, Ptr{braid_Int}), status, iter_ptr)
end

function StatusGetLevel(status::braid_Status, level_ptr)
    ccall((:braid_StatusGetLevel, libxbraid), braid_Int, (braid_Status, Ptr{braid_Int}), status, level_ptr)
end

function StatusGetNRefine(status::braid_Status, nrefine_ptr)
    ccall((:braid_StatusGetNRefine, libxbraid), braid_Int, (braid_Status, Ptr{braid_Int}), status, nrefine_ptr)
end

function StatusGetNTPoints(status::braid_Status, ntpoints_ptr)
    ccall((:braid_StatusGetNTPoints, libxbraid), braid_Int, (braid_Status, Ptr{braid_Int}), status, ntpoints_ptr)
end

function StatusGetResidual(status::braid_Status, rnorm_ptr)
    ccall((:braid_StatusGetResidual, libxbraid), braid_Int, (braid_Status, Ptr{braid_Real}), status, rnorm_ptr)
end

function StatusGetDone(status::braid_Status, done_ptr)
    ccall((:braid_StatusGetDone, libxbraid), braid_Int, (braid_Status, Ptr{braid_Int}), status, done_ptr)
end

function StatusGetTILD(status::braid_Status, t_ptr, iter_ptr, level_ptr, done_ptr)
    ccall((:braid_StatusGetTILD, libxbraid), braid_Int, (braid_Status, Ptr{braid_Real}, Ptr{braid_Int}, Ptr{braid_Int}, Ptr{braid_Int}), status, t_ptr, iter_ptr, level_ptr, done_ptr)
end

function StatusGetWrapperTest(status::braid_Status, wtest_ptr)
    ccall((:braid_StatusGetWrapperTest, libxbraid), braid_Int, (braid_Status, Ptr{braid_Int}), status, wtest_ptr)
end

function StatusGetCallingFunction(status::braid_Status, cfunction_ptr)
    ccall((:braid_StatusGetCallingFunction, libxbraid), braid_Int, (braid_Status, Ptr{braid_Int}), status, cfunction_ptr)
end

function StatusGetCTprior(status::braid_Status, ctprior_ptr)
    ccall((:braid_StatusGetCTprior, libxbraid), braid_Int, (braid_Status, Ptr{braid_Real}), status, ctprior_ptr)
end

function StatusGetCTstop(status::braid_Status, ctstop_ptr)
    ccall((:braid_StatusGetCTstop, libxbraid), braid_Int, (braid_Status, Ptr{braid_Real}), status, ctstop_ptr)
end

function StatusGetFTprior(status::braid_Status, ftprior_ptr)
    ccall((:braid_StatusGetFTprior, libxbraid), braid_Int, (braid_Status, Ptr{braid_Real}), status, ftprior_ptr)
end

function StatusGetFTstop(status::braid_Status, ftstop_ptr)
    ccall((:braid_StatusGetFTstop, libxbraid), braid_Int, (braid_Status, Ptr{braid_Real}), status, ftstop_ptr)
end

function StatusGetTpriorTstop(status::braid_Status, t_ptr, ftprior_ptr, ftstop_ptr, ctprior_ptr, ctstop_ptr)
    ccall((:braid_StatusGetTpriorTstop, libxbraid), braid_Int, (braid_Status, Ptr{braid_Real}, Ptr{braid_Real}, Ptr{braid_Real}, Ptr{braid_Real}, Ptr{braid_Real}), status, t_ptr, ftprior_ptr, ftstop_ptr, ctprior_ptr, ctstop_ptr)
end

function StatusGetTstop(status::braid_Status, tstop_ptr)
    ccall((:braid_StatusGetTstop, libxbraid), braid_Int, (braid_Status, Ptr{braid_Real}), status, tstop_ptr)
end

function StatusGetTstartTstop(status::braid_Status, tstart_ptr, tstop_ptr)
    ccall((:braid_StatusGetTstartTstop, libxbraid), braid_Int, (braid_Status, Ptr{braid_Real}, Ptr{braid_Real}), status, tstart_ptr, tstop_ptr)
end

function StatusGetTol(status::braid_Status, tol_ptr)
    ccall((:braid_StatusGetTol, libxbraid), braid_Int, (braid_Status, Ptr{braid_Real}), status, tol_ptr)
end

function StatusGetRNorms(status::braid_Status, nrequest_ptr, rnorms_ptr)
    ccall((:braid_StatusGetRNorms, libxbraid), braid_Int, (braid_Status, Ptr{braid_Int}, Ptr{braid_Real}), status, nrequest_ptr, rnorms_ptr)
end

function StatusGetOldFineTolx(status::braid_Status, old_fine_tolx_ptr)
    ccall((:braid_StatusGetOldFineTolx, libxbraid), braid_Int, (braid_Status, Ptr{braid_Real}), status, old_fine_tolx_ptr)
end

function StatusSetOldFineTolx(status::braid_Status, old_fine_tolx::braid_Real)
    ccall((:braid_StatusSetOldFineTolx, libxbraid), braid_Int, (braid_Status, braid_Real), status, old_fine_tolx)
end

function StatusSetTightFineTolx(status::braid_Status, tight_fine_tolx::braid_Real)
    ccall((:braid_StatusSetTightFineTolx, libxbraid), braid_Int, (braid_Status, braid_Real), status, tight_fine_tolx)
end

function StatusSetRFactor(status::braid_Status, rfactor::braid_Real)
    ccall((:braid_StatusSetRFactor, libxbraid), braid_Int, (braid_Status, braid_Real), status, rfactor)
end

function StatusSetRSpace(status::braid_Status, r_space::braid_Real)
    ccall((:braid_StatusSetRSpace, libxbraid), braid_Int, (braid_Status, braid_Real), status, r_space)
end

function StatusGetMessageType(status::braid_Status, messagetype_ptr)
    ccall((:braid_StatusGetMessageType, libxbraid), braid_Int, (braid_Status, Ptr{braid_Int}), status, messagetype_ptr)
end

function StatusSetSize(status::braid_Status, size::braid_Real)
    ccall((:braid_StatusSetSize, libxbraid), braid_Int, (braid_Status, braid_Real), status, size)
end

function AccessStatusGetT(s::braid_AccessStatus, v1)
    ccall((:braid_AccessStatusGetT, libxbraid), braid_Int, (braid_AccessStatus, Ptr{braid_Real}), s, v1)
end

function AccessStatusGetTIndex(s::braid_AccessStatus, v1)
    ccall((:braid_AccessStatusGetTIndex, libxbraid), braid_Int, (braid_AccessStatus, Ptr{braid_Int}), s, v1)
end

function AccessStatusGetIter(s::braid_AccessStatus, v1)
    ccall((:braid_AccessStatusGetIter, libxbraid), braid_Int, (braid_AccessStatus, Ptr{braid_Int}), s, v1)
end

function AccessStatusGetLevel(s::braid_AccessStatus, v1)
    ccall((:braid_AccessStatusGetLevel, libxbraid), braid_Int, (braid_AccessStatus, Ptr{braid_Int}), s, v1)
end

function AccessStatusGetNRefine(s::braid_AccessStatus, v1)
    ccall((:braid_AccessStatusGetNRefine, libxbraid), braid_Int, (braid_AccessStatus, Ptr{braid_Int}), s, v1)
end

function AccessStatusGetNTPoints(s::braid_AccessStatus, v1)
    ccall((:braid_AccessStatusGetNTPoints, libxbraid), braid_Int, (braid_AccessStatus, Ptr{braid_Int}), s, v1)
end

function AccessStatusGetResidual(s::braid_AccessStatus, v1)
    ccall((:braid_AccessStatusGetResidual, libxbraid), braid_Int, (braid_AccessStatus, Ptr{braid_Real}), s, v1)
end

function AccessStatusGetDone(s::braid_AccessStatus, v1)
    ccall((:braid_AccessStatusGetDone, libxbraid), braid_Int, (braid_AccessStatus, Ptr{braid_Int}), s, v1)
end

function AccessStatusGetTILD(s::braid_AccessStatus, v1, v2, v3, v4)
    ccall((:braid_AccessStatusGetTILD, libxbraid), braid_Int, (braid_AccessStatus, Ptr{braid_Real}, Ptr{braid_Int}, Ptr{braid_Int}, Ptr{braid_Int}), s, v1, v2, v3, v4)
end

function AccessStatusGetWrapperTest(s::braid_AccessStatus, v1)
    ccall((:braid_AccessStatusGetWrapperTest, libxbraid), braid_Int, (braid_AccessStatus, Ptr{braid_Int}), s, v1)
end

function AccessStatusGetCallingFunction(s::braid_AccessStatus, v1)
    ccall((:braid_AccessStatusGetCallingFunction, libxbraid), braid_Int, (braid_AccessStatus, Ptr{braid_Int}), s, v1)
end

function CoarsenRefStatusGetT(s::braid_CoarsenRefStatus, v1)
    ccall((:braid_CoarsenRefStatusGetT, libxbraid), braid_Int, (braid_CoarsenRefStatus, Ptr{braid_Real}), s, v1)
end

function CoarsenRefStatusGetTIndex(s::braid_CoarsenRefStatus, v1)
    ccall((:braid_CoarsenRefStatusGetTIndex, libxbraid), braid_Int, (braid_CoarsenRefStatus, Ptr{braid_Int}), s, v1)
end

function CoarsenRefStatusGetIter(s::braid_CoarsenRefStatus, v1)
    ccall((:braid_CoarsenRefStatusGetIter, libxbraid), braid_Int, (braid_CoarsenRefStatus, Ptr{braid_Int}), s, v1)
end

function CoarsenRefStatusGetLevel(s::braid_CoarsenRefStatus, v1)
    ccall((:braid_CoarsenRefStatusGetLevel, libxbraid), braid_Int, (braid_CoarsenRefStatus, Ptr{braid_Int}), s, v1)
end

function CoarsenRefStatusGetNRefine(s::braid_CoarsenRefStatus, v1)
    ccall((:braid_CoarsenRefStatusGetNRefine, libxbraid), braid_Int, (braid_CoarsenRefStatus, Ptr{braid_Int}), s, v1)
end

function CoarsenRefStatusGetNTPoints(s::braid_CoarsenRefStatus, v1)
    ccall((:braid_CoarsenRefStatusGetNTPoints, libxbraid), braid_Int, (braid_CoarsenRefStatus, Ptr{braid_Int}), s, v1)
end

function CoarsenRefStatusGetCTprior(s::braid_CoarsenRefStatus, v1)
    ccall((:braid_CoarsenRefStatusGetCTprior, libxbraid), braid_Int, (braid_CoarsenRefStatus, Ptr{braid_Real}), s, v1)
end

function CoarsenRefStatusGetCTstop(s::braid_CoarsenRefStatus, v1)
    ccall((:braid_CoarsenRefStatusGetCTstop, libxbraid), braid_Int, (braid_CoarsenRefStatus, Ptr{braid_Real}), s, v1)
end

function CoarsenRefStatusGetFTprior(s::braid_CoarsenRefStatus, v1)
    ccall((:braid_CoarsenRefStatusGetFTprior, libxbraid), braid_Int, (braid_CoarsenRefStatus, Ptr{braid_Real}), s, v1)
end

function CoarsenRefStatusGetFTstop(s::braid_CoarsenRefStatus, v1)
    ccall((:braid_CoarsenRefStatusGetFTstop, libxbraid), braid_Int, (braid_CoarsenRefStatus, Ptr{braid_Real}), s, v1)
end

function CoarsenRefStatusGetTpriorTstop(s::braid_CoarsenRefStatus, v1, v2, v3, v4, v5)
    ccall((:braid_CoarsenRefStatusGetTpriorTstop, libxbraid), braid_Int, (braid_CoarsenRefStatus, Ptr{braid_Real}, Ptr{braid_Real}, Ptr{braid_Real}, Ptr{braid_Real}, Ptr{braid_Real}), s, v1, v2, v3, v4, v5)
end

function StepStatusGetT(s::braid_StepStatus, v1)
    ccall((:braid_StepStatusGetT, libxbraid), braid_Int, (braid_StepStatus, Ptr{braid_Real}), s, v1)
end

function StepStatusGetTIndex(s::braid_StepStatus, v1)
    ccall((:braid_StepStatusGetTIndex, libxbraid), braid_Int, (braid_StepStatus, Ptr{braid_Int}), s, v1)
end

function StepStatusGetIter(s::braid_StepStatus, v1)
    ccall((:braid_StepStatusGetIter, libxbraid), braid_Int, (braid_StepStatus, Ptr{braid_Int}), s, v1)
end

function StepStatusGetLevel(s::braid_StepStatus, v1)
    ccall((:braid_StepStatusGetLevel, libxbraid), braid_Int, (braid_StepStatus, Ptr{braid_Int}), s, v1)
end

function StepStatusGetNRefine(s::braid_StepStatus, v1)
    ccall((:braid_StepStatusGetNRefine, libxbraid), braid_Int, (braid_StepStatus, Ptr{braid_Int}), s, v1)
end

function StepStatusGetNTPoints(s::braid_StepStatus, v1)
    ccall((:braid_StepStatusGetNTPoints, libxbraid), braid_Int, (braid_StepStatus, Ptr{braid_Int}), s, v1)
end

function StepStatusGetTstop(s::braid_StepStatus, v1)
    ccall((:braid_StepStatusGetTstop, libxbraid), braid_Int, (braid_StepStatus, Ptr{braid_Real}), s, v1)
end

function StepStatusGetTstartTstop(s::braid_StepStatus, v1, v2)
    ccall((:braid_StepStatusGetTstartTstop, libxbraid), braid_Int, (braid_StepStatus, Ptr{braid_Real}, Ptr{braid_Real}), s, v1, v2)
end

function StepStatusGetTol(s::braid_StepStatus, v1)
    ccall((:braid_StepStatusGetTol, libxbraid), braid_Int, (braid_StepStatus, Ptr{braid_Real}), s, v1)
end

function StepStatusGetRNorms(s::braid_StepStatus, v1, v2)
    ccall((:braid_StepStatusGetRNorms, libxbraid), braid_Int, (braid_StepStatus, Ptr{braid_Int}, Ptr{braid_Real}), s, v1, v2)
end

function StepStatusGetOldFineTolx(s::braid_StepStatus, v1)
    ccall((:braid_StepStatusGetOldFineTolx, libxbraid), braid_Int, (braid_StepStatus, Ptr{braid_Real}), s, v1)
end

function StepStatusSetOldFineTolx(s::braid_StepStatus, v1::braid_Real)
    ccall((:braid_StepStatusSetOldFineTolx, libxbraid), braid_Int, (braid_StepStatus, braid_Real), s, v1)
end

function StepStatusSetTightFineTolx(s::braid_StepStatus, v1::braid_Real)
    ccall((:braid_StepStatusSetTightFineTolx, libxbraid), braid_Int, (braid_StepStatus, braid_Real), s, v1)
end

function StepStatusSetRFactor(s::braid_StepStatus, v1::braid_Real)
    ccall((:braid_StepStatusSetRFactor, libxbraid), braid_Int, (braid_StepStatus, braid_Real), s, v1)
end

function StepStatusSetRSpace(s::braid_StepStatus, v1::braid_Real)
    ccall((:braid_StepStatusSetRSpace, libxbraid), braid_Int, (braid_StepStatus, braid_Real), s, v1)
end

function BufferStatusGetMessageType(s::braid_BufferStatus, v1)
    ccall((:braid_BufferStatusGetMessageType, libxbraid), braid_Int, (braid_BufferStatus, Ptr{braid_Int}), s, v1)
end

function BufferStatusSetSize(s::braid_BufferStatus, v1::braid_Real)
    ccall((:braid_BufferStatusSetSize, libxbraid), braid_Int, (braid_BufferStatus, braid_Real), s, v1)
end

function Init(comm_world::MPI.Comm, comm::MPI.Comm, tstart::braid_Real, tstop::braid_Real, ntime::Integer, app, step::braid_PtFcnStep, init::braid_PtFcnInit, clone::braid_PtFcnClone, free::braid_PtFcnFree, sum::braid_PtFcnSum, spatialnorm::braid_PtFcnSpatialNorm, access::braid_PtFcnAccess, bufsize::braid_PtFcnBufSize, bufpack::braid_PtFcnBufPack, bufunpack::braid_PtFcnBufUnpack, core)
    ccall(
        (:braid_Init, libxbraid),
        braid_Int, 
        (Ptr{Cint}, Ptr{Cint}, braid_Real, braid_Real, braid_Int, braid_App, braid_PtFcnStep, braid_PtFcnInit, braid_PtFcnClone, braid_PtFcnFree, braid_PtFcnSum, braid_PtFcnSpatialNorm, braid_PtFcnAccess, braid_PtFcnBufSize, braid_PtFcnBufPack, braid_PtFcnBufUnpack, Ptr{braid_Core}),
        &comm_world.val, &comm.val, tstart, tstop, ntime, app, step, init, clone, free, sum, spatialnorm, access, bufsize, bufpack, bufunpack, &core
        )
end

function Drive(core::braid_Core)
    ccall((:braid_Drive, libxbraid), braid_Int, (braid_Core,), core)
end

function Destroy(core::braid_Core)
    ccall((:braid_Destroy, libxbraid), braid_Int, (braid_Core,), core)
end

function PrintStats(core::braid_Core)
    ccall((:braid_PrintStats, libxbraid), braid_Int, (braid_Core,), core)
end

function SetMaxLevels(core::braid_Core, max_levels::Integer)
    ccall((:braid_SetMaxLevels, libxbraid), braid_Int, (braid_Core, braid_Int), core, max_levels)
end

function SetSkip(core::braid_Core, skip::Integer)
    ccall((:braid_SetSkip, libxbraid), braid_Int, (braid_Core, braid_Int), core, skip)
end

function SetRefine(core::braid_Core, refine::Integer)
    ccall((:braid_SetRefine, libxbraid), braid_Int, (braid_Core, braid_Int), core, refine)
end

function SetMaxRefinements(core::braid_Core, max_refinements::Integer)
    ccall((:braid_SetMaxRefinements, libxbraid), braid_Int, (braid_Core, braid_Int), core, max_refinements)
end

function SetTPointsCutoff(core::braid_Core, tpoints_cutoff::Integer)
    ccall((:braid_SetTPointsCutoff, libxbraid), braid_Int, (braid_Core, braid_Int), core, tpoints_cutoff)
end

function SetMinCoarse(core::braid_Core, min_coarse::Integer)
    ccall((:braid_SetMinCoarse, libxbraid), braid_Int, (braid_Core, braid_Int), core, min_coarse)
end

function SetAbsTol(core::braid_Core, atol::braid_Real)
    ccall((:braid_SetAbsTol, libxbraid), braid_Int, (braid_Core, braid_Real), core, atol)
end

function SetRelTol(core::braid_Core, rtol::braid_Real)
    ccall((:braid_SetRelTol, libxbraid), braid_Int, (braid_Core, braid_Real), core, rtol)
end

function SetNRelax(core::braid_Core, level::Integer, nrelax::Integer)
    ccall((:braid_SetNRelax, libxbraid), braid_Int, (braid_Core, braid_Int, braid_Int), core, level, nrelax)
end

function SetCFactor(core::braid_Core, level::Integer, cfactor::Integer)
    ccall((:braid_SetCFactor, libxbraid), braid_Int, (braid_Core, braid_Int, braid_Int), core, level, cfactor)
end

function SetMaxIter(core::braid_Core, max_iter::Integer)
    ccall((:braid_SetMaxIter, libxbraid), braid_Int, (braid_Core, braid_Int), core, max_iter)
end

function SetFMG(core::braid_Core)
    ccall((:braid_SetFMG, libxbraid), braid_Int, (braid_Core,), core)
end

function SetNFMG(core::braid_Core, k::Integer)
    ccall((:braid_SetNFMG, libxbraid), braid_Int, (braid_Core, braid_Int), core, k)
end

function SetNFMGVcyc(core::braid_Core, nfmg_Vcyc::Integer)
    ccall((:braid_SetNFMGVcyc, libxbraid), braid_Int, (braid_Core, braid_Int), core, nfmg_Vcyc)
end

function SetStorage(core::braid_Core, storage::Integer)
    ccall((:braid_SetStorage, libxbraid), braid_Int, (braid_Core, braid_Int), core, storage)
end

function SetTemporalNorm(core::braid_Core, tnorm::Integer)
    ccall((:braid_SetTemporalNorm, libxbraid), braid_Int, (braid_Core, braid_Int), core, tnorm)
end

function SetResidual(core::braid_Core, residual::braid_PtFcnResidual)
    ccall((:braid_SetResidual, libxbraid), braid_Int, (braid_Core, braid_PtFcnResidual), core, residual)
end

function SetFullRNormRes(core::braid_Core, residual::braid_PtFcnResidual)
    ccall((:braid_SetFullRNormRes, libxbraid), braid_Int, (braid_Core, braid_PtFcnResidual), core, residual)
end

function SetTimeGrid(core::braid_Core, tgrid::braid_PtFcnTimeGrid)
    ccall((:braid_SetTimeGrid, libxbraid), braid_Int, (braid_Core, braid_PtFcnTimeGrid), core, tgrid)
end

function SetSpatialCoarsen(core::braid_Core, scoarsen::braid_PtFcnSCoarsen)
    ccall((:braid_SetSpatialCoarsen, libxbraid), braid_Int, (braid_Core, braid_PtFcnSCoarsen), core, scoarsen)
end

function SetSpatialRefine(core::braid_Core, srefine::braid_PtFcnSRefine)
    ccall((:braid_SetSpatialRefine, libxbraid), braid_Int, (braid_Core, braid_PtFcnSRefine), core, srefine)
end

function SetPrintLevel(core::braid_Core, print_level::Integer)
    ccall((:braid_SetPrintLevel, libxbraid), braid_Int, (braid_Core, braid_Int), core, print_level)
end

function SetPrintFile(core::braid_Core, printfile_name)
    ccall((:braid_SetPrintFile, libxbraid), braid_Int, (braid_Core, Cstring), core, printfile_name)
end

function SetDefaultPrintFile(core::braid_Core)
    ccall((:braid_SetDefaultPrintFile, libxbraid), braid_Int, (braid_Core,), core)
end

function SetAccessLevel(core::braid_Core, access_level::Integer)
    ccall((:braid_SetAccessLevel, libxbraid), braid_Int, (braid_Core, braid_Int), core, access_level)
end

function SplitCommworld(comm_world::MPI.Comm, px::braid_Int, comm_x::MPI.Comm, comm_t::MPI.Comm)
    ccall((:braid_SplitCommworld, libxbraid), braid_Int, (Ptr{Void}, braid_Int, Ptr{Void}, Ptr{Void}), &comm_world.val, px, &comm_x.val, &comm_t.val)
end

function SetShell(core::braid_Core, sinit::braid_PtFcnSInit, sclone::braid_PtFcnSClone, sfree::braid_PtFcnSFree)
    ccall((:braid_SetShell, libxbraid), braid_Int, (braid_Core, braid_PtFcnSInit, braid_PtFcnSClone, braid_PtFcnSFree), core, sinit, sclone, sfree)
end

function GetNumIter(core::braid_Core, niter_ptr)
    ccall((:braid_GetNumIter, libxbraid), braid_Int, (braid_Core, Ptr{braid_Int}), core, niter_ptr)
end

function GetRNorms(core::braid_Core, nrequest_ptr, rnorms)
    ccall((:braid_GetRNorms, libxbraid), braid_Int, (braid_Core, Ptr{braid_Int}, Ptr{braid_Real}), core, nrequest_ptr, rnorms)
end

function GetNLevels(core::braid_Core, nlevels_ptr)
    ccall((:braid_GetNLevels, libxbraid), braid_Int, (braid_Core, Ptr{braid_Int}), core, nlevels_ptr)
end

function GetSpatialAccuracy(status::braid_StepStatus, loose_tol::braid_Real, tight_tol::braid_Real, tol_ptr)
    ccall((:braid_GetSpatialAccuracy, libxbraid), braid_Int, (braid_StepStatus, braid_Real, braid_Real, Ptr{braid_Real}), status, loose_tol, tight_tol, tol_ptr)
end

function SetSeqSoln(core::braid_Core, seq_soln::Integer)
    ccall((:braid_SetSeqSoln, libxbraid), braid_Int, (braid_Core, braid_Int), core, seq_soln)
end
