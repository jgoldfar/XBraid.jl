XBraid.jl
=======

[![Build Status](https://travis-ci.org/jgoldfar/XBraid.jl.svg?branch=master)](https://travis-ci.org/jgoldfar/XBraid.jl)
[![Coverage Status](https://coveralls.io/repos/jgoldfar/XBraid.jl/badge.svg?branch=master)](https://coveralls.io/r/jgoldfar/XBraid.jl?branch=master)
### What is this repository for? ###

* Wrapper for the [XBraid library](https://computation.llnl.gov/project/parallel-time-integration/software.php) in [Julia](http://julialang.org/), generated using [Clang.jl](https://github.com/ihnorton/Clang.jl).

* v0.0.0

### How do I get set up? ###

* XBraid.jl is built against Julia v0.6+. [BinDeps.jl](https://github.com/JuliaLang/BinDeps.jl) package is required to install/build the library..

* To contribute, please make an issue or pull request. As a general guideline, modifications or additional low-level wrappers can be added to `libxbraid.jl`, and helpers can be added to `libxbraid_h.jl`. High-level wrappers go in the appropriate file(s).

### Who do I talk to? ###

* Jonathan Goldfarb <jgoldfar@my.fit.edu>
