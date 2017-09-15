function s = sum3and5muls(n)
x      = 1 : n                    ;
threes = x(mod(x,3) == 0)         ;
fives  = x(mod(x,5) == 0)         ;
w      = unique([threes fives])   ;
s      = sum(w)                   ;
end