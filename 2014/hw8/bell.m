function B = bell(n)
if ~isscalar(n) || ~isnumeric(n) || ceil(n) ~= n || n <= 0
    B = [];
    return
end
B(1,1) = 1;
for ii = 2 : n
    B(ii,1) = B(1,end);
    for jj = 1 : ii -1
        B(ii-jj,jj+1) = B(ii-jj+1,jj) + B(ii-jj,jj);
    end
end
end