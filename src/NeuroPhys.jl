module NeuroPhys

is_working() = print("Yes is working!") 

#TODO: Next I want to make the data analysis in one succinct folder

#Import
using PyCall
using StatsBase, DataFrames, XLSX
using Polynomials, Distributions #Used for polynomial fitting
using DSP, Wavelets, FFTW #Used for filtering
using LsqFit #Used for fitting amplification and Intensity Response models
using DataFrames, XLSX #Used for saving data
using Dates

#Utility files contain file extraction and abf editing functions
include("utils.jl")
export NeuroTrace, getchannel, getsweep, getstim, findstimRng
export parse_abf, extract_abf, number_extractor, concat, filename_extractor
export eachchannel, eachsweep


#functions are anything that alters the existing data
include("functions.jl") 
export baseline_cancel, baseline_cancel! 
export lowpass_filter, lowpass_filter!
export notch_filter, notch_filter!
export cwt_filter, cwt_filter!
export average_sweeps, average_sweeps!
export normalize, normalize!
export RSQ
export curve_fit #curve fitting from LsqFit
export truncate_data, truncate_data!
export remove_artifact
#export filtering functions
export normalize, cwt_filter, fft_spectrum, clean_data
export stim_intensity

#Models are anything that is used to create new data
include("models.jl") 
#Export the photon calculation and Rig-specific Photon equation
export photons, Transferrance, stimulus_model
#Export the Amplification and IR models
export IR, IR_dev, AMP

using Plots
include("plotting.jl")
export plot

end # module