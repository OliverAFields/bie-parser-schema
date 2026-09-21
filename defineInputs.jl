function inputFunc(t)
    if (t<600)
        return 0.01
    else
        return 0.01/(1+((t-20)/60))
    end
#    return maximum([1/(1+((t-10)*10)),0])
end

function inputFuncSS(t)
        return 0   
end
function inputFuncSSHigh(t)
        return 0.005    
end

function inputFuncSSNotAsHigh(t)
        return 0.001    
end

function inputFuncHigh(t)
    if (t<1)
        return 0.001
    else
        return 0
    end

end

function inputFuncHigh2(t)
    if (t<1440)
        return 0.001
    else
        return 0
    end

end

function inputFuncHigh3(t)
    if (t<1440)
        return 100
    else
        return 0
    end

end

function inputFuncHigh3(t)
    if (t<1440)
        return 100
    else
        return 0
    end

end

function NIKinputFunc2(t)
# #     if (t>4*60)
# #         return 0.05
# #     else
# #         return 1
# #     end
#     return maximum([),0])
    return 1/(1+(t/60))
end
function NIKFuncSS(t)
    return 1
end
σ=0.2
function inputFuncDynamic(t)
    if t <= 0
        return 0.0
    else
        μ = log(60) + σ^2   # ensures peak at t = 60
        f60 = (1/60) * exp(-((log(60) - μ)^2) / (2*σ^2))
        C  = 100 / f60      # scaling factor so f(60) = 100
        val=C * (1/t) * exp(-((log(t) - μ)^2) / (2*σ^2))
        if t>65
            return 0
        else
            return val
        end
    end
end

# function TLRFunctionSmooth(t)
#     thist=t-TLRTimeArray[globalCellIndex]
#     # Smooth pulse: rises 0→10 by t=15, then decays back to 0 by t=1440
#     if 0 <= thist <= 15
#         return 10 * (sin(pi * thist / (2*15)))^2
#     elseif 15 < thist <= 1440
#         return 10 * (cos(pi * (thist - 15) / (2*(1440 - 15))))^2
#     else
#         return 0.0
#     end
# end
    
# H = 10.0
T = 1440.0*2
t_star=15

g(s) = (s > 0 && s < 1) ? exp(-1.0/(s*(1.0 - s))) : 0.0

function ultra_smooth_bump(t)
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

bcrSignalSS=inputFuncSS
bcrSignalSSHigh=inputFuncSSHigh
tlrSignalSS=inputFuncSS
bcrSignalTC=inputFunc
tlrSignalTC=inputFuncHigh2
nikSignalSS=NIKFuncSS
nikSignalTC=NIKinputFunc2
bcrSignalSSNotAsHigh=inputFuncSSNotAsHigh
tlrSignalTCHigher=inputFuncHigh3
tlrSignalTCDynamic=inputFuncDynamic
tlrSignalSmooth=ultra_smooth_bump
