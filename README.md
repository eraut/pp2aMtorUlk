## Setup the model
For the model and the parameter estimation [python](https://www.python.org/) was used.

### Clone the project repo
`git clone https://github.com/eraut/pp2aMtorUlk`

then run

`pip install numpy, scipy`

## Parameter estimation

It requieres `matplotlib` `pandas` python packages as well. To install them run


`pip install pandas, matplotlib`


## Structural identifiability
to run `paramEst/identif.jl` [julia](https://julialang.org/) is requiered. Then run julia and install the requiered packages

```julia
> using Pkg
> Pkg.add("StructuralIdentifiability")
```

## Bifurcation analysis
For the sofware used for the bifurcation analysis visit [XPP-Aut](http://www.math.pitt.edu/~bard/xpp/xpp.html).
