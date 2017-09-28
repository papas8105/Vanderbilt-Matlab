function B = bell(n)
if ceil(n) ~= n || ~isnumeric(n) || ~isscalar(n) || n <= 0
    B = [];
    return
else
    B = 1;
    if n > 1
        for ii = 2 : n
            B(ii,1) = B(1,end); %#ok<*AGROW>
            for jj = 2 : ii
                B(ii-jj+1,jj) = B(ii-jj+1,jj-1) + B(ii-jj+2,jj-1);
            end
        end
    end
end
end