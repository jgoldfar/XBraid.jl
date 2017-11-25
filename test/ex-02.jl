#= Exact solution =# 
exact(t, x) = sin(x)*cos(t)

#= Initialize array of values to solution at time t =#
function get_solution(  values::Vector{Cdouble},
                        size::Cint,
                        t::Cdouble, 
                        xstart::Cdouble, 
                        deltaX::Cdouble)
    for i in 1:size
        values[i] = exact(t, xstart)
        xstart += deltaX
    end
end

#= Forcing term F(t, x) for PDE,  u_t = u_xx + F(t,x) =#
forcing(t, x) = (-1.0)*sin(x)*sin(t) + sin(x)*cos(t)

#= Compute L2-norm of the error at a point in time =#
function compute_error_norm(values::Vector{Cdouble}, 
                            xstart::Cdouble, 
                            xstop::Cdouble, 
                            nspace::Cint, 
                            t::Cdouble)
   
    deltaX = (xstop - xstart) / (nspace - 1.0)
    x = xstart
    error = 0.0

    for i = 1:nspace
        error += abs2(values[i] - exact(t, x))
        x += deltaX
    end

   sqrt( error*deltaX )
end


#=--------------------------------------------------------------------------
 * Routines for computing time-steps and residuals 
 *--------------------------------------------------------------------------=#

#= Helper function for tridiagonal solver =#
function dabs(x)
    if (x < 0.0)
        return -1.0
    elseif (x > 0.0)
        return 1.0
    else
        return 0.0
    end
end


#= Helper function for Step: Tridiagonal system solver (Thomas algorithm) =#
function solve_tridiag(x::Vector{Cdouble}, g::Vector{Cdouble}, N::Cint, matrix::Vector{Cdouble})
   #=*
    * solves Ax = v where A is a tridiagonal matrix with stencil [ a, b, c].
    * 
    * There is a built in assumption that the first and last rows are the 
    * identity (boundary conditions)
    *
    * Input
    * -----
    * x - initially contains v
    * g - temp data array for the algorithm
    * N - length of vectors x and g
    * matrix - length three array representing the tridiagonal stencil
    * 
    * Output
    * ------
    * x - contains solution upon output (over-written)
    * g - is a working array, and will be modified as such
    *=#

   g[1] = 0.0  #= Assume the first row is the identity =#
   
   #= loop from 1 to N - 2 inclusive, performing the forward sweep =#
   for i in 2:(N - 1)
       m = 1.0 / (matrix[2] - matrix[1]*g[i-1])
       g[i] = m*matrix[3]
       x[i] = m*(x[i] - matrix[1]*x[i-1])
   end
   
   #= Do nothing for x[N-1], assume last row is the identity =#
   
   #= loop from N - 2 to 1 inclusive to perform the back substitution =#
    for i in (N - 2):-1:1
        x[i] = x[i] - g[i] * x[i+1]
    end
   return nothing
end

#= Helper function for Residual: Carry out mat-vec with tridiagonal stencil =#
function matvec_tridiag(x::Vector{Cdouble}, g::Vector{Cdouble}, N::Cint, matrix::Vector{Cdouble})
   #=*
    * Matvec solves g <-- Ax, where A is a tridiagonal matrix with stencil [ a, b, c].
    * 
    * There is a built in assumption that the first and last rows are the 
    * identity (boundary conditions)
    *
    * Input
    * -----
    * x - input vector 
    * N - length of vectors x and g
    * matrix - length three array representing the tridiagonal stencil
    * 
    * Output
    * ------
    * g - Equals A*x
    *=#

   #= loop from 1 to N - 2 inclusive, performing the matvec =#
    for i = 2:(N - 1)
        g[i] = matrix[0]*x[i-1] + matrix[1]*x[i] + matrix[2]*x[i+1]
    end

    #= boundary points =#
    g[1] = x[1]
    g[N] = x[N]

    return nothing
end

#= Compute three point backward Euler stencil =#
function compute_stencil(deltaX::Cdouble, 
                         deltaT::Cdouble,
                         matrix::Vector{Cdouble})

   cfl = (deltaT/(deltaX*deltaX))
   matrix[1] = -cfl
   matrix[2] = 1.0 + 2*cfl
   matrix[3] = -cfl

   return nothing
end

#= Take a backward Euler step =#
function 
take_step(values::Vector{Cdouble},    #= state vector to evolve =#
          size::Cint,      #= size of vector =#
          t::Cdouble,         #= time value to evolve to =#
          xstart::Cdouble,    #= left-most spatial grid point =#
          deltaX::Cdouble,    #= spatial mesh size =#
          deltaT::Cdouble,    #= temporal mesh size =#
          matrix::Vector{Cdouble},    #= three-point matrix stencil =#
          temp::Vector{Cdouble})      #= temporary array of size 'size' =#
   
   #= Set up matrix stencil for 1D heat equation=#
   compute_stencil(deltaX, deltaT, matrix)

   #= Apply boundary conditions =#
   values[1] = exact(t, 0.0)
   values[size] = exact(t, Float64(pi))

   #= PDE forcing =#
   x = xstart
   for i = 1:size
      values[i] = values[i] + deltaT*forcing(t, x)
      x = x + deltaX
   end

   #= Backward Euler step =#
   solve_tridiag(values, temp, size, matrix)
   return nothing
end



#=--------------------------------------------------------------------------
 * Routines for coarsening and interpolating in space 
 *--------------------------------------------------------------------------=#

#= Bilinear interpolation from grid size 2^{k-1} + 1 
 * to grid size 2^{k} + 1 =#
function
interpolate_1D(cvalues::Vector{Cdouble},
               fvalues::Vector{Cdouble}, 
               csize::Cint,
               fsize::Cint)
   
    for i = 2:fsize
        if (i%2 == 1)
            fvalues[i] = 0.5*cvalues[i/2] + 0.5*cvalues[(i+1)/2]
        else
            fvalues[i] = cvalues[i/2]
        end
    end
   
   #= Boundary Conditions =#
   fvalues[1] = cvalues[1]
   fvalues[fsize] = cvalues[csize]
   return nothing
end

#= Bilinear coarsening from grid size 2^{k1} + 1 
 * to grid size 2^{k-1} + 1 =#
function
coarsen_1D(cvalues::Vector{Cdouble},
           fvalues::Vector{Cdouble}, 
           csize::Cint,
           fsize::Cint)

    for i = 2:(csize-1)
        fidx = 2i
        cvalues[i] = 0.5*fvalues[fidx] + 0.25*fvalues[fidx+1] + 0.25*fvalues[fidx-1]
    end
   
   #= Boundary Conditions =#
   cvalues[1] = fvalues[1]
   cvalues[csize] = fvalues[fsize]
   
   return nothing
end


#=--------------------------------------------------------------------------
 * Helper routines for output
 *--------------------------------------------------------------------------=#

#= Print accumulated info on space-time grids visited during the simulation =#
function 
print_sc_info(sc_info::Vector{Cdouble}, 
              max_levels::Cint)

   print(
    "\n-----------------------------------------------------------------\n", 
    "-----------------------------------------------------------------\n\n", 
    " Per level diagnostic information \n\n",
    "level       dx          dt        dt/dx^2\n",
    "-----------------------------------------------------------------\n"
    )
    for i = 1:max_levels
        dx = sc_info[(i-1)*2+1]
        dt = sc_info[i*2]
        (dx == -1) && break
        
        @printf " %2d   |   %1.2e    %1.2e    %1.2e\n" i dx dt dt/(dx*dx)
    end
   print( "\n" )
   return nothing
end

#= Print a solution vector to file with the format
 *
 *    ntime_steps
 *    tstart
 *    tstop
 *    nspace_points
 *    xstart
 *    xstop
 *    x[0]
 *    x[1]
 *      .
 *      .
 *      .
 *    x[k]
 *
 *=#

 # Output generated into path below.
const exOutPath = joinpath(@__DIR__, "ex02")
mkpath(exOutPath)

function
save_solution(filename::AbstractString, 
              values::Vector{Cdouble}, 
              size::Cint, 
              xstart::Cdouble,
              xstop::Cdouble,
              ntime::Cint,
              tstart::Cdouble,
              tstop::Cdouble)
   
    open(joinpath(exOutPath, filename), "w") do file
        @printf file "%d\n"    ntime + 1
        @printf file "%.14e\n" tstart
        @printf file "%.14e\n" tstop
        @printf file "%d\n"    size
        @printf file "%.14e\n" xstart
        @printf file "%.14e\n" xstop

        for v in values
            @printf file "%.14e\n" v
        end

        flush(file)
    end
    return nothing
end

function main_serial()
    tstart        =  0.0
    tstop         =  2*Float64(pi)
    ntime         =  64

    xstart        =  0.0
    xstop         =  Float64(pi)
    nspace        =  33

    #= Parse command line =#
    
    for i in eachindex(ARGS)
        arg = chomp(lowercase(ARGS[i]))
        if arg == "-help"
            print("\n",
            " Solve the 1D heat equation on space-time domain:  [0, PI] x [0, 2*PI]\n",
            " with exact solution u(t,x) = sin(x)*cos(t) \n\n",
            "  -ntime <ntime>       : set num points in time\n",
            "  -nspace <nspace>     : set num points in space\n\n")
            return 1
        elseif arg == "-ntime"
            ntime = parse(Int, ARGS[i + 1])
        elseif arg == "-nspace"
            nspace = parse(Int, ARGS[i + 1])
        end
    end
    
    print("\n  --------------------- \n",
    "  Begin simulation \n",
    "  --------------------- \n\n")
    beginTime = now()

    #= Setup workspace =#
    values = Vector{Cdouble}(nspace)
    temp   = Vector{Cdouble}(nspace)
    deltaX =  (xstop-xstart)/(nspace-1.0)
    deltaT =  (tstop-tstart)/ntime
    matrix = Vector{Cdouble}(3)

    #= Initialize solution at time t=0.0 =#
    get_solution(values, Cint(nspace), 0.0, xstart, deltaX)
    filename = @sprintf "%s.%07d.%05d" "ex-02-serial.out" 0 0
    save_solution(filename, values, Cint(nspace), xstart, xstop, Cint(ntime), tstart, tstop)

    #= Main time step loop =#
    t = tstart
    for step in 1:ntime
        ((step % 25) == 0) && (@printf "  Computing step %d\n" step)
        
        #= Take Step =#
        t = t + deltaT
        take_step(values, Cint(nspace), t, xstart, deltaX, deltaT, matrix, temp)
        
        #= Output Solution =#
        filename = @sprintf "%s.%07d.%05d" "ex-02-serial.out" step 0
        save_solution(filename, values, Cint(nspace), xstart, xstop, Cint(ntime), tstart, tstop)
    end
    error = compute_error_norm(values, xstart, xstop, Cint(nspace), tstop)
    endTime = now()
    elapsedTime = endTime - beginTime

    print("\n  --------------------- \n",
    "  End simulation \n",
    "  --------------------- \n\n")
    @printf "  Start time                           %1.5e\n" tstart
    @printf "  Stop time                            %1.5e\n" tstop
    @printf "  Time step size                       %1.5e\n" deltaT
    @printf "  Time steps taken:                    %d\n\n" ntime
    @printf "  Spatial points:                      %d\n" nspace
    @printf "  Spatial mesh size:                   %1.2e\n" deltaX
    @printf "  CFL ratio dt/dx^2:                   %1.2e\n\n" deltaT/(deltaX*deltaX)
    @printf "  Wall-clock run-time:                 %.2f\n" elapsedTime.value
    @printf "  Discretization error at final time:  %1.4e\n" error
    
    return 0
end

main_parallel() = nothing

if in("-serial", ARGS)
    main_serial()
else
    main_parallel()
end
