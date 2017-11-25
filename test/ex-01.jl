#=Translated from examples/ex-01.c in the XBraid source tree=#
using XBraid
using MPI
#=--------------------------------------------------------------------------
* User-defined routines and structures
*--------------------------------------------------------------------------=#

# App structure can contain anything, and be named anything as well
struct _ex01_App_struct
  rank::Cint
end
const my_App = Ref{_ex01_App_struct}

# Vector structure can contain anything, and be name anything as well
struct _ex01_Vector_struct
  value::Cdouble
end
const my_Vector = Ref{_ex01_Vector_struct}

function my_Step(app,
        ustop,
        fstop,
        u,
        status
)
#     tstart = Ref{Cdouble}() #/* current time */
#     tstop = Ref{Cdouble}() #/* evolve to this time*/
#     XBraid.StepStatusGetTstartTstop(status, tstart, tstop)

# #    /* Use backward Euler to propagate solution */
#    u[].value = 1.0/(1.0 + tstop - tstart)*(u[].value)
   
   return 0
end
const my_CStep = cfunction(my_Step, Int, Tuple{braid_App, braid_Vector, braid_Vector, braid_Vector, braid_StepStatus})

function my_Init(app, t, u_ptr)
    # if t == 0.0
    #     u_ptr[] = _ex01_Vector_struct(1.0)
    # else
    #     u_ptr[] = _ex01_Vector_struct(0.456)
    # end
    return 0
end
const my_CInit = cfunction(my_Init, Int, Tuple{braid_App, Cdouble, Ptr{braid_Vector}})

function my_Clone(app, u, v_ptr)
    # v = _ex01_Vector_struct(u.value)
    # v_ptr[] = v
    return 0
end
const my_CClone = cfunction(my_Clone, Int, Tuple{braid_App, braid_Vector, Ptr{braid_Vector}})

function my_Free(app, u)
    # Libc.free(u)
    return 0
end
const my_CFree = cfunction(my_Free, Int, Tuple{braid_App, braid_Vector})

function my_Sum(app, alpha, x, beta, y)
    # y.value = alpha*x.value + beta*y.value
    return 0
end
const my_CSum = cfunction(my_Sum, Int, Tuple{braid_App, Cdouble, braid_Vector, Cdouble, braid_Vector})

function my_SpatialNorm(app, u, norm_ptr)
    # uv = u.value
    # dot = uv*uv
    # norm_ptr[] = sqrt(dot)
    return 0
end
const my_CSpatialNorm = cfunction(my_SpatialNorm, Int, Tuple{braid_App, braid_Vector, Ptr{Cdouble}})

function my_Access(app, u, astatus)
    # index = Ref{Cint}()
    # XBraid.AccessStatusGetTIndex(astatus, index)
    # filename = @sprintf "%s.%04d.%03d" "ex-01.out" index[] app.rank
    # open(filename, "w") do st
    #     @printf st "%.14e\n" u.value
    #     flush(st)
    # end

   return 0
end
const my_CAccess = cfunction(my_Access, Int, Tuple{braid_App, braid_Vector, braid_AccessStatus})

function my_BufSize(app, size_ptr, bstatus)
#    size_ptr[] = sizeof(Cdouble)
   return 0
end
const my_CBufSize = cfunction(my_BufSize, Int, Tuple{braid_App, Ptr{Cint}, braid_BufferStatus})

function my_BufPack(app, u, buffer, bstatus)
    # dbuffer = Ref(buffer)

    # dbuffer[0] = u.value
    # XBraid.BufferStatusSetSize(bstatus, sizeof(Cdouble))
    return 0
end
const my_CBufPack = cfunction(my_BufPack, Int, Tuple{braid_App, braid_Vector, Ptr{Void}, braid_BufferStatus})

function my_BufUnpack(app, buffer, u_ptr, bstatus)
    # dbuffer = Ref(buffer)

    # u = _ex01_Vector_struct(dbuffer[0])
    # u_ptr[] = u
    return 0
end
const my_CBufUnpack = cfunction(my_BufUnpack, Int, Tuple{braid_App, Ptr{Void}, Ptr{braid_Vector}, braid_BufferStatus})

function main()
    ntime  = 10
    tstart = 0.0
    tstop  = tstart + ntime/2.0
    core = Ptr{Void}(C_NULL)

    MPI.Init()
    comm = MPI.COMM_WORLD
    rank = MPI.Comm_rank(comm) + 1
    size = MPI.Comm_size(comm)
    
    app = Ref{my_App}(_ex01_App_struct(rank))
    
    XBraid.Init(comm, comm, tstart, tstop, ntime, app,
    my_CStep, my_CInit, my_CClone, my_CFree, my_CSum, my_CSpatialNorm, 
    my_CAccess, my_CBufSize, my_CBufPack, my_CBufUnpack, core)

    MPI.Finalize()
end
main()