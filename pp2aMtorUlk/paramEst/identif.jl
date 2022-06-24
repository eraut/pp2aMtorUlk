using StructuralIdentifiability

ode = @ODEmodel(
    #mtor active 
    x1'(t) = k1*x2(t)-k1v*x1(t)-km1*x1(t)*x3(t)-km2*x1(t)*x5(t),
    #mtor inactive 
    x2'(t) = -k1*x2(t)+k1v*x1(t)+km1*x1(t)*x3(t)+km2*x1(t)*x5(t),
    #ulk1 active
    x3'(t) = k2*x4(t)-k2v*x3(t)+ku1*x4(t)*x5(t)-ku2*x3(t)*x1(t),
    #ulk1 inactive
    x4'(t) = -k2*x4(t)+k2v*x3(t)-ku1*x4(t)*x5(t)+ku2*x3(t)*x1(t),
    #pp2a active 
    x5'(t) = k3*x6(t)-k3v*x5(t)+kp1*x6(t)*x3(t)-kp2*x5(t)*x1(t),
    #pp2a inactive
    x6'(t) = -k3*x6(t)+k3v*x5(t)-kp1*x6(t)*x3(t)+kp2*x5(t)*x1(t),
    y1(t)=x1(t),
    y2(t)=x2(t),
    y3(t)=x3(t),
    y4(t)=x4(t),
    y5(t)=x5(t),
    y6(t)=x6(t),
)

local_id = assess_local_identifiability(ode, 0.99)
global_id = assess_identifiability(ode, 0.99)

#háttéraktivációk inaktivációk, mTOR kitalál, többi 10**-1 nagyságrend
