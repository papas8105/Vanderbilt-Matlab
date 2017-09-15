function S = simple_stats(N)
S(: , 1)   = mean(  transpose(N))     ;
S(: , 2)   = median(transpose(N))     ;
S(: , 3)   = min(   transpose(N))     ;
S(: , 4)   = max(   transpose(N))     ;
end