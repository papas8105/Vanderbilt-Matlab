function indices = saddle(M)
indices = [];
for ii = 1 : size(M,1)
    for jj = 1 : size(M,2)
        element         = M(ii,jj);
        r               = max(M(ii,:));
        c               = min(M(:,jj));
        if element >= r && element <= c
            indices = [indices;ii,jj]; %#ok<*AGROW>
        end
    end
end
if ~isempty(indices)
    indices = sortrows(indices,2);
end
end