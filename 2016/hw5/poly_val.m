function p = poly_val(c0 , c , x)
if isempty(c)
    p = c0;
elseif isscalar(c)
    p = c0 + c*x;
else
    c = reshape(c,1,length(c))         ;
    p = polyval([c(end :-1: 1) c0] , x);
end
end