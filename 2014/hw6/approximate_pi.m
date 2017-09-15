function [p,k] = approximate_pi(delta)
p = sqrt(12);
k = 0       ;
while abs(pi - p) >= delta
    k = k + 1                ;
    p = p + sqrt(12)*(-3)^(-k)/(2*k+1);
end
end