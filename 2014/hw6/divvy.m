function B = divvy(A,k)
assert(k>0 && ceil(k) > 0 , 'k > 0');
assert(ismatrix(A) && isnumeric(A) &&sum(sum(A >= 0)) == numel(A) && sum(sum(ceil(A) == A)) == numel(A),...
    'A must contain integers greater than or equal to zero');
B = A;
B(mod(A,k) ~= 0) = k * A(mod(A,k) ~= 0);
end