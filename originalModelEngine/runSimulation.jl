function runSimulation(first_cell, last_cell, conditions,folder,BCRSSArray,BCRTCArray,TLRSSArray,TLRTCArray,NIKSSArray,NIKTCArray)
    mkpath(folder)
    #now lets loop through and solve the cell
    TCLength=1000*60
    maximumAttemptsAtSS=10
    inputFuncs=[t->0,t->0]
    include("variableNames.jl")
    include("scanIncludes.jl")
#     include("fixSpecies.jl")
    thisDist=Truncated(Normal(1.0, preCV),0,Inf)    

    originalParams=copy(paramVals)
    BCRIndex=findfirst(x -> x=="k3_signal-BCR", parameterNameList)
    TLRIndex=findfirst(x -> x=="k1_CpGadding-TLR", parameterNameList)
    NIKIndex=findfirst(x -> x=="nik_deg_mod-NFkB", parameterNameList)
    allParams=[]
    allParams=Array{Any}(undef, size(parametersDF,1), last_cell)

    for cellIndex in first_cell:last_cell

        thisCellsParamVals=copy(originalParams)            

        for j in 1:size(parametersDF,1)
            if parametersDF[j,3]==1
                x = rand(thisDist, 1)
               thisCellsParamVals[j]=thisCellsParamVals[j].*x[1]
            end
            
        end            
        x = rand(thisDist, 1)
        
#         TLRScalingArray[cellIndex]=x[1]
#         #println(thisCellsParamVals)
        allParams[:,cellIndex]=thisCellsParamVals

    end
    df = DataFrame(allParams,:auto)
    #add the variable names and save to a file
    insertcols!(df, 1, :names=>parameterNameList)

    CSV.write(folder*"/allParams_runSimulationNew.csv",df);
    #println(size(allParams))
    #println(allParams[1])
    allParamsOriginal=copy(allParams)
    for condIndex in 1:length(conditions)
        allParams=copy(allParamsOriginal)
        thisCondition = conditions[condIndex]
        #TODO: consider making a condition scaling factor array here and just multiplying all prameters by it every time.
        
        println("Starting condition: "*thisCondition)
        odeName="odeModel"
#         odeNameFixed="odeModel_fixed"
#         myFunFixed=getfield(Main,Symbol(odeNameFixed))
        myFun=getfield(Main,Symbol(odeName))
        f=nothing
#         fFixed=nothing
        #define the function and the initial conditions
        if delay
#             f=DDEFunction(myFunFixed,syms=Symbol.(syms))
            f=DDEFunction(myFun)
        else
#             fFixed=ODEFunction(myFunFixed,syms=Symbol.(syms))
            f=ODEFunction(myFun)
        end
        y0=zeros(length(syms))
        y0=zeros(size(syms))
        y0[findfirst(x->"MYD88"==x,syms)] = 0.1 ;
        y0[findfirst(x->"TRAF6"==x,syms)] = 0.1 ;
        y0[findfirst(x->"IKK_off"==x,syms)] = 0.1 ;
        y0[findfirst(x->"C"==x,syms)] = 1 ;
        y0[findfirst(x->"B"==x,syms)] = 1 ;
        y0[findfirst(x->"M"==x,syms)] = 1 ;
        y0[findfirst(x->"TAK1"==x,syms)] = 0.1 ;
        y0[findfirst(x->"IKK_off"==x,syms)] = 200;
        y0[findfirst(x->"IKK_on"==x,syms)] = 0.1;
        y0[findfirst(x->"A20"==x,syms)] = 0.1;
        y0[findfirst(x->"tA20"==x,syms)] = 0.1;
        
        paramsListInThisCondition=paramsToChange[condIndex]
        modifyListInThisCondition=modifyAmount[condIndex]

        for thisParamIndex in 1:length(paramsListInThisCondition)
            thisParam=paramsListInThisCondition[thisParamIndex]
            thisParamsIndexInParamList=findfirst(x->x==thisParam,parameterNameList)
            if isnothing(thisParamsIndexInParamList)
                println(thisParamIndex)
                println(thisParam)
            end
            allParams[thisParamsIndexInParamList,:]=allParams[thisParamsIndexInParamList,:].*modifyListInThisCondition[thisParamIndex]
        end  
        df = DataFrame(allParams,:auto)
        #add the variable names and save to a file
        insertcols!(df, 1, :names=>parameterNameList)
        CSV.write(folder*"/allParams_runSimulationNew_"*thisCondition*".csv",df);


        
        #Threads.@threads for i in first_cell:last_cell
        for i in first_cell:last_cell
            #figure out the name of this cell's ode file
            globalCellIndex=i
            #DISTRIBUTE PARAMS

            println("starting cell: "*string(i))
            thisCellsParamVals=copy(allParams[:,i])
            thisCellsParamVals[BCRIndex]=BCRSSArray[condIndex]
            thisCellsParamVals[TLRIndex]=TLRSSArray[condIndex]
            thisCellsParamVals[NIKIndex]=NIKSSArray[condIndex]
            

      
    #     #now write this condition's CSV file to a folder of cells
    #     CSV.write(generatedCSVLocation*"/parameters_"*string(conditions[condIndex])*".csv", thisCondParamFile)
            prob = nothing
            h(p,t)=y0
            if delay
                prob=DDEProblem(f,y0,h,(0.0,maxTimeSS),thisCellsParamVals)
            else
                
                prob=ODEProblem(f,y0,(0.0,maxTimeSS),thisCellsParamVals)
            end
            
            solss=nothing
            if delay
                solss=solve(prob,saveat=100.0,progress = true,MethodOfSteps(Rodas5P()))
            else
                solss=solve(prob,saveat=100.0,progress = true,Rodas4(autodiff=false))
            end
            
            println("Steady state found for cell: "*string(i))

            #dynamic phase, use SS solution as initial conditions
            y0=vec(convert(Array, solss[:,end]))
            y0[y0.<0].=0
            #CSV.write(generatedCSVLocation*"/parameters_"*string(conditions[condIndex])*"_cell_"*string(i)*".csv", DataFrame(thisCellsParamVals,:auto))
            try
                thisCellsParamVals[BCRIndex]=BCRTCArray[condIndex]
                thisCellsParamVals[TLRIndex]=TLRTCArray[condIndex]
                thisCellsParamVals[NIKIndex]=NIKTCArray[condIndex]
                function ultra_smooth_bump_local(t)
                    t_star=TLRTimeArray[globalCellIndex]
                    thisH=TLRHeightArray[globalCellIndex]
                    s = t / T
                    s_star = t_star / T
                    u = if s <= s_star
                        (s_star > 0) ? (s / (2*s_star)) : 0.0
                    else
                        (1 - s_star > 0) ? (1 - (1 - s) / (2*(1 - s_star))) : 1.0
                    end
                    denom = g(0.5)
                    return (denom > 0) ? thisH * g(u) / denom : 0.0
                end
                thisCellsParamVals[TLRIndex]=ultra_smooth_bump_local

#                 y0[findfirst(x->"CpGmedia"==x,syms)] = 1e-10;
                

# #                 #endosome maturation kicks in at 4 hours
#                 function affectcbswitch!(integrator)
#                     newu=copy(integrator.u)
#                     val = TLRTCArray[condIndex] * TLRScalingArray[i]
#                     # modify the state IN-PLACE
#                     @inbounds integrator.u[CpGIndex] = val

#                     # notify the integrator that u changed discontinuously
#                     SciMLBase.u_modified!(integrator, true)
#                     SciMLBase.add_tstop!(integrator, integrator.t + 1e-6)

# #                     return
#                 end
#                 cb = PresetTimeCallback([TLRTimeArray[i]],affectcbswitch!,save_positions = (false, false))
                
                f=nothing
                prob=nothing
                h(p,t)=y0
                if delay
                    f=DDEFunction(myFun)
                    prob=DDEProblem(f,y0,h,(0.0,maxTimeTC),thisCellsParamVals)
                else
                    f=ODEFunction(myFun)
                    prob=ODEProblem(f,y0,(0.0,maxTimeTC),thisCellsParamVals)
                end
                
                println("Solving equations for dynamic time course for cell:"*string(i))
                sol = nothing
#                 te = TLRTimeArray[i]
#                 small = te .+ (1e-8, 1e-7, 1e-6)

                if delay
#                       sol=solve(prob,MethodOfSteps(Rodas5P()); callback = cb, tstops=[TLRTimeArray[i];small], positive_domain = true, isoutofdomain = (u,p,t)->any(isnan, u) || any(<(0.0), u),reltol=1e-6, abstol=1e-9,saveat=1,maxiters=10^7,dtmin=1e-14,max_step=0.1)
#                       sol=solve(prob,reltol=1e-6, saveat=1,MethodOfSteps(Rodas5P()),maxiters = 10^7,dtmin= 1e-14,dtmax=0.1,isoutofdomain = (u,p,t)->any(!isfinite, u) || any(<(0.0), u))
                    sol=solve(prob,reltol=1e-6, saveat=1, MethodOfSteps(Rodas5P()))
                else
                     sol=solve(prob,reltol=1e-6, saveat=1, Rodas4(autodiff=false))
#                      sol=solve(prob,reltol=1e-6, saveat=1,Rodas4(autodiff=false))
                end

                #save("outputs/sol_"*thisCondition*"_cell_"*string(i)*".jld2", "solution", sol)
                df = DataFrame(Float64.(sol),:auto)
                #add the variable names and save to a file
                insertcols!(df, 1, :names=>syms)
                CSV.write(folder*"/sol_"*thisCondition*"_cell_"*string(i)*".csv",df);
            catch e
                println("error:")
                println(e)
#                 rethrow()
            end

        end
        println("all cells done in condition: "*thisCondition)

    end
end