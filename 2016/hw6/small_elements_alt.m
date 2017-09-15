function out = small_elements(X)
[m,n] = find(bsxfun(@lt,X,(1:size(X,1))'*(1:size(X,2))) == 1);
if isempty(m) || isempty(n)
    out = [];
else
    if m == 1
        out = [m' n'];
    else
        out = [m , n];
end
end