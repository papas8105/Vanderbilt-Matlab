function [row,col,numrows,numcols,summa] = maxsubsum(A)
if ~ismatrix(A) || ~isnumeric(A)
    return
end
%first check the trivial case in which all the elements of A are 
%greater than or equal to zero, in this case the submatrix we
%are searching is the matrix itself
if sum(sum(A>=0)) == numel(A) 
    numrows   = size(A,1)    ;
    numcols   = size(A,2)    ;
    row       = 1            ;
    col       = 1            ;
    summa     = sum(sum(A))  ;
else
    %in this case in which the matrix has negative elements we will
    %use matrix convolution it will be explained later
    summa = -inf;
    for ii = 1 : size(A,1)
        for jj = 1 : size(A,2)
            M = conv2(A,ones(ii,jj),'same');
            %with the command conv2 we use matrix convolution to find the
            %sums of all the elements of all possible submatrices at each
            %index of matrix A.
            if max(max(M)) > summa
                %then if the maximum element of matrix M is greater than
                %summa we find the indexes row - column of this max element
                %of the specific submatrix and then we should be very
                %careful in how we pick the upper left element's indexes
                %see below:)
                [m,n] = find(max(max(M)) == M)   ;
                numrows = ii ;
                numcols = jj ;
                row      = m - floor((ii-1)/2)   ;
                col      = n - floor((jj-1)/2)   ;
                summa    = max(max(M))           ;
            end
        end
    end
end
end