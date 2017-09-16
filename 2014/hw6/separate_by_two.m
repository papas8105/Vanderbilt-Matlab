function [even,odd] = separate_by_two(A)
if ~ismatrix(A) || ~isnumeric(A) || sum(sum(ceil(A) == A)) ~= numel(A)  || sum(sum(A>0)) ~= numel(A)
    fprintf('The input matrix A must contain only positive integers!');
    return
end
even = A(mod(A,2) == 0);
odd  = A(mod(A,2) == 1);
if size(even,2) == 1 || size(odd,2) == 1
    even = even'  ;
    odd   = odd'  ;
end
end
