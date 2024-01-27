module SPHExample

    include("AuxillaryFunctions.jl"); 
    include("PreProcess.jl");         
    include("PostProcess.jl");        
    include("TimeStepping.jl");       
    include("SimulationEquations.jl");
    include("SimulationMetaDataConfiguration.jl");
    include("SimulationConstantsConfiguration.jl");
    include("SimulationDataArrays.jl")
    
    # Re-export desired functions from each submodule
    using .PreProcess: LoadParticlesFromCSV
    export LoadParticlesFromCSV

    using .PostProcess: create_vtp_file
    export create_vtp_file

    using .TimeStepping: Δt
    export Δt

    using .SimulationEquations: Wᵢⱼ, ∑ⱼWᵢⱼ, Optim∇ᵢWᵢⱼ, ∑ⱼ∇ᵢWᵢⱼ, Pressure, ∂Πᵢⱼ∂t, ∂ρᵢ∂tDDT, ∂vᵢ∂t
    export Wᵢⱼ, ∑ⱼWᵢⱼ, Optim∇ᵢWᵢⱼ, ∑ⱼ∇ᵢWᵢⱼ, Pressure, ∂Πᵢⱼ∂t, ∂ρᵢ∂tDDT, ∂vᵢ∂t

    using .SimulationMetaDataConfiguration: SimulationMetaData
    export SimulationMetaData

    using .SimulationConstantsConfiguration: SimulationConstants
    export SimulationConstants

    using .SimulationDataArrays: SimulationDataResults
    export SimulationDataResults
end

