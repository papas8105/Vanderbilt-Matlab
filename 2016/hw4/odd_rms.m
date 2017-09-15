function orms = odd_rms(nn)
x    = 1 : 2 * nn            ;
odds = x(mod(x,2) == 1)      ;
orms = sqrt(mean(odds.^2))   ;
end