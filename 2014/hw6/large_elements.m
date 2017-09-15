function indexes = large_elements(X)
r = repmat((1:size(X,1))',1,size(X,2)) ;
c = repmat((1:size(X,2)),size(X,1),1)  ;
indexes = r + c                        ;
[m,n]   = find(bsxfun(@gt,X,indexes))  ;
if isempty(m) || isempty(n)
    indexes = []                       ;
elseif size(m,1) == 1
    indexes = [ones(length(n),1), n']  ;
else
    indexes = sortrows([m,n],1)        ;
end
end