function indexes = saddle(M)
indexes = [];
for ii = 1 : size(M,1)
    for jj = 1 : size(M,2)
        if max(M(ii,:)) <= M(ii,jj) && min(M(:,jj)) >= M(ii,jj) 
            indexes = [indexes;ii,jj]; %#ok<*AGROW>
        end
    end
end
if ~isempty(indexes)
    indexes = sortrows(indexes,2);
end
end