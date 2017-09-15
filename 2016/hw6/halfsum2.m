function s = halfsum2(A)
for ii = 1 : size(A,1)
    for jj = 1 : size(A,2)
        if ii < size(A,1) - jj + 1
            A(ii,jj) = 0;
        end
    end
end
s = sum(A(:));
end