module MRIsim
#IMPORT PACKAGES
import Base.*, Base.+, Base.-, Base./, Base.vcat, Base.size
using Random, LinearAlgebra, FFTW, Plots, Images, Printf, Distributed

γ = 42.5e6; #Hz/T gyromagnetic constant for H

#CORE
include("Grad.jl")
include("RF.jl")
include("Sequence.jl")
include("Phantom.jl")
include("Simulator.jl")
include("Recon.jl")
include("Display.jl")

export Grad, Sequence, Phantom

#GUI
using Blink, PlotlyJS, Interact, AssetRegistry
!Blink.AtomShell.isinstalled() && Blink.AtomShell.install()
using CSV, DataFrames
include("SpinLab.jl")

export SpinLab

end