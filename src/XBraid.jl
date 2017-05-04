# XBraid.jl: Wrapper around the XBraid library (https://computation.llnl.gov/project/parallel-time-integration/software.php)
VERSION >= v"0.4.0-dev+6521" && __precompile__()
module XBraid
const depsfile = joinpath(dirname(dirname(@__FILE__)), "deps", "deps.jl")
if isfile(depsfile)
    include(depsfile)
else
    error("XBraid not properly installed. Please run Pkg.build(\"XBraid\")")
end

# include("libxbraid_h.jl")
#
# include("libxbraid.jl")

end # module
