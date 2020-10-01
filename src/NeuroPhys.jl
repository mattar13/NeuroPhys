module NeuroPhys

is_working() = print("Yes is working!") 

#Imports
using PyCall
using StatsBase, DataFrames, XLSX
using Polynomials, Distributions #Used for polynomial fitting
using DSP, Wavelets, FFTW #Used for filtering
using LsqFit #Used for fitting amplification and Intensity Response models

#Including files
include("utils.jl")
export parse_abf, extract_abf

include("functions.jl")
export drift_cancel, subtract_baseline, normalize, cwt_filter, fft_spectrum, clean_data
#Export the Amplification and IR models
export IR, IR_dev, AMP

end # module
