function plotAllSpeciesNew(speciesToPlot,conditionsToPlot,colorArray,first_cell,last_cell,folder,hoursToPlot,maxValOfYAxis,qualityScaling,preStimTime)
    for species in speciesToPlot
        #thisPlot=plot(title=species)
        thisPlotStd=plot(title=species*" avg")
        boxPlotAll=plot(title=species*" ss")
        BoxPlotAvg=plot(title=species*"avg ss")
        conditionIndex=1
        meansOfAllConditions=zeros(1,length(conditionsToPlot)+preStimTime)
        stdOfAllConditions=zeros(1,length(conditionsToPlot)+preStimTime)
        lengthOfTC=0
        for condition in conditionsToPlot
#            lengthOfTC=size(DataFrame(CSV.File(folder*"/sol_"*condition*"_cell_1.csv")),2)-1
            lengthOfTC=maxTimeTC

            conditionArray=zeros(last_cell,lengthOfTC+preStimTime)
            lineColor=colorArray[conditionIndex]
            virtExpFlag=false
            for i in first_cell:last_cell
                thisCellData=DataFrame(CSV.File(folder*"/sol_"*condition*"_cell_"*string(i)*".csv"))
                if !("names" in names(thisCellData))
                    insertcols!(thisCellData, 1, :names=>syms)
                end
                allNoneFloats=findall(eltype.(eachcol(thisCellData)).!=Float64)
                if length(allNoneFloats)>1
                    for index in allNoneFloats[2:end]
                        thisCellData[!,index]=parse.(Float64,thisCellData[:,index])
                    end
                end
                thisTC=zeros(1,size(thisCellData,2)-1)
                if endswith(species,"*")
                    virtExpFlag=true
                    speciesShort=species[1:end-1]
                    speciesIDs=intersect(findall( x ->occursin(speciesShort,x),syms),findall(x->!startswith(x,"t"),syms))
                    speciesNames=String.(syms[speciesIDs])
#                     println("For species: "*species*" printing: ")
#                     println(speciesNames)
                    for thisName in speciesNames
                        thisSpeciesTC=Matrix(thisCellData[thisCellData[!,:names].==thisName,:])[2:end]
                        
                        thisTC=thisTC.+thisSpeciesTC'
                    end
                else
                    thisTC=Matrix(thisCellData[thisCellData[!,:names].==species,:])[2:end]

                end
                # conditionArray[i,:]=thisTC[1:lengthOfTC]
                entriesToSave=minimum([length(thisTC),size(conditionArray,2)-preStimTime])
                conditionArray[i,:].=thisTC[1]
                conditionArray[i,preStimTime:entriesToSave+preStimTime-1]=thisTC[1:entriesToSave]

            end
            conditionArray=conditionArray[:,1:end-1]
            df = DataFrame(Float64.(conditionArray),:auto)
            #add the variable names and save to a file
            #CSV.write("outputs/sol_"*thisCondition*"_cell_"*string(i)*".csv",Tables.columntable(df));
            CSV.write(folder*"/allTCs_"*species*"_"*condition*"_cell.csv",df);

            
            meanOfCondition=mean(conditionArray, dims=1)
            stdOfCondition=std(conditionArray, dims=1)
#             println(meanOfCondition)
#             println(stdOfCondition)
            plot!(thisPlotStd,meanOfCondition',grid=false,color=lineColor,ribbon=stdOfCondition',fillalpha=.5,label=condition,linewidth=5)

            meansOfAllConditions[conditionIndex]=meanOfCondition[preStimTime]
            stdOfAllConditions[conditionIndex]=stdOfCondition[preStimTime]

            conditionIndex+=1
        end
        conditionIndex=1
        #plot!(boxPlotAll,conditionsToPlot, meansOfAllConditions;, c=colorArray, yerr = stdOfAllConditions', label = "",xrotation = 90,seriestype = :scatter,fillcolor=:match)
        for condition in conditionsToPlot
            plot!(boxPlotAll,[conditionIndex], [meansOfAllConditions[conditionIndex]], c=colorArray[conditionIndex], yerr = stdOfAllConditions[conditionIndex], label = false,xrotation = 90,seriestype = :scatter,fillcolor=:match,markersize=round(20*qualityScaling),markerstrokewidth=round(5*qualityScaling))            
            conditionIndex+=1
        end
        plot!(boxPlotAll,xticks = (1:length(conditions), conditions),xlim=(0,length(conditionsToPlot)+1),ylim=(0,maximum([maximum(meansOfAllConditions)+maximum(stdOfAllConditions),maxValOfYAxis])),dpi=300,size=(round(800*qualityScaling),round(1000*qualityScaling)),xtickfontsize=18,ytickfontsize=18)        
        plot!(thisPlotStd,xticks=(collect(preStimTime:round(hoursToPlot/4)*60:preStimTime.+(hoursToPlot*60)),collect(0:round(hoursToPlot/4):hoursToPlot)),xlim=(-preStimTime,hoursToPlot*60),dpi=300,size=(round(1500*qualityScaling),round(1000*qualityScaling)),xtickfontsize=18,ytickfontsize=18,xlabel="hours",titlefontsize=8)
        #display(plot(boxPlotAll,thisPlot))
        display(plot(boxPlotAll,thisPlotStd,layout = grid(1, 2, widths=[0.4 ,0.6])))
    end
end
