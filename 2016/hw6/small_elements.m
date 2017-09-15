function w = small_elements(X)
w = [];
for ii = 1 : size(X,1)
    for jj = 1 : size(X,2)
        if X(ii,jj) < ii * jj
            w = [w ; ii jj]; %#ok<AGROW>
        end
    end
end
if isempty(w)
    return
else
    w = sortrows(w,2);
end
end