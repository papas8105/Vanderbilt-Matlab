function p = poly_val_3(c0,c,x)
if isempty(c)
    p = c0;
else
    c = reshape(c,1,length(c));
    p = c0 + sum(c.*x.^(1:length(c)));
end
end
