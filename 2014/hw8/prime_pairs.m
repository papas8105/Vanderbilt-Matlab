function p = prime_pairs(n)
assert(isscalar(n) && isnumeric(n) && ceil(n) == n && n > 1,'n must be a positive integer');
p = - 1;
for ii = primes(1e5)
    if isprime(ii+n)
        p = ii;
        break
    end
end
end