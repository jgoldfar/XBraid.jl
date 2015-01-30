XBraid.jl
=======

[![Join the chat at https://gitter.im/jgoldfar/XBraid.jl](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/jgoldfar/XBraid.jl?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)
[![Build Status](https://travis-ci.org/jgoldfar/XBraid.jl.svg?branch=master)](https://travis-ci.org/jgoldfar/XBraid.jl)
[![Coverage Status](https://coveralls.io/repos/jgoldfar/XBraid.jl/badge.svg?branch=master)](https://coveralls.io/r/jgoldfar/XBraid.jl?branch=master)
### What is this repository for? ###

* Wrapper for the [XBraid library](https://computation.llnl.gov/project/parallel-time-integration/software.php) in [Julia](http://julialang.org/), generated using [`Clang.jl`](https://github.com/ihnorton/Clang.jl). Inspiration for the generation scripts was taken from [Eglib.jl](https://github.com/ihnorton/Eglib.jl/blob/master/util/wrap.jl) (Thanks!).

* v0.0.0

### How do I get set up? ###

* For installation/building of the XBraid library, [`BinDeps.jl`](https://github.com/JuliaLang/BinDeps.jl) package is required.

* To contribute, please make an issue or pull request. As a general guideline, modifications or additional low-level wrappers can be added to libxbraid.jl, and helpers (only) can be added (only) to libxbraid_h.jl. High-level wrappers go in the appropriate file(s).

### Who do I talk to? ###

* Jonathan Goldfarb <jgoldfar@my.fit.edu>
