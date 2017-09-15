function cv = logipack(L)
cv = cell(1,size(L,1));
for ii = 1 : size(L,1)
    cv{ii} = find(L(ii,:));
    if isempty(cv{ii})
        cv{ii} = [];
    end
end
end