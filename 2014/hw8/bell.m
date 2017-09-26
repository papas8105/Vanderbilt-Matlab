function B = bell(n)
B = [];
if n == 1
    B = 1;
elseif ceil(n) == n && n > 1 && isscalar(n) && isnumeric(n)
    B = 1;
    for ii = 2 : n
        B(ii,1) = B(1,end);  %#ok<*AGROW>
        for jj = 2 : ii
           B(ii-jj+1,jj) = B(ii-jj+1,jj-1) + B(ii-jj+2,jj-1); 
        end
    end
end
end