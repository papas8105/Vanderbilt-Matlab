function gen = generationXYZ(year)
cls = {'O','X','Y','Z','K'}            ;
yrs = [1966,1981,2000,2013]            ;
gen = cls{sum(year >= yrs) + 1}        ;
end
