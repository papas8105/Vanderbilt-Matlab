function indices = saddle(M)
indices = [];
for ii = 1 : size(M,1)
    for jj = 1 : size(M,2)
        if M(ii,jj) >= max(M(ii,:)) && M(ii,jj) <= min(M(:,jj))
            indices = [indices;ii,jj];
        end
    end
end
if ~isempty(indices)
    indices = sortrows(indices,2);
end
end