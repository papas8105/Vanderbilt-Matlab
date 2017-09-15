function out = poly_val2(c0 , c , x )
if isempty(c)
    out = c0;
elseif isscalar(c)
    out = c0 + c * x;
else
    c = reshape(c , 1 , length(c));
    w = x * ones(1,length(c));
    w = w.^(1:length(c));
    w = sum(w.*c);
    out = w + c0;
end
end