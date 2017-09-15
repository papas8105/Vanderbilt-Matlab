function r = smallest_multiple_alt_2(n)
if ~isscalar(n) || ~isnumeric(n) || n < 1 || ceil(n) ~= n
    r = uint64(0);
    return
end
%this is a little bit faster
p = primes(n);
e = ones(1,length(p));
for ii = 2 : n
    if ~isprime(ii)
        x = factor(ii);
        for jj = 1 : length(p)
            if sum(x == p(jj)) > e(jj)
                e(jj) = sum( x == p(jj));
            end
        end
    end
end
r = uint64(1);
for ii = 1 : length(p)
    r = r * p(ii)^e(ii);
end
if r == intmax('uint64')
    r = uint64(0);
end
end
