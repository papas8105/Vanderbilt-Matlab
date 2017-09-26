function [row,col,nur,nuc,s] = maxsubsum(A)
%first assume the trivial case in which all the elements
%are greater than or equal to 0
%in order to save computations
%in the alternative case we use matrix convolution
if sum(sum(A>=0)) == numel(A)
    row = 1;
    col = 1;
    nur = size(A,1)     ;
    nuc = size(A,2)     ;
    s   = sum(sum(A))   ;
else
    s = -inf;
    for ii = 1 : size(A,1)
        for jj = 1 : size(A,2)
            M = conv2(A,ones(ii,jj),'same')      ;
            m = max(max(M))                      ;
            if m > s
                [row,col] = find(M==max(max(M))) ;
                row = row - floor((ii-1)/2)      ;
                col = col - floor((jj-1)/2)      ;
                nur = ii                         ;
                nuc = jj                         ;
                s   = max(max(M))                ;
            end
        end
    end
end
end