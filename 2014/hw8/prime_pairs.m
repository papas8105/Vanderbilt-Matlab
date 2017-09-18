function p = prime_pairs(n)
assert(isscalar(n) && isnumeric(n) && n > 0 && ceil(n) == n,'n must be a positive integer!');
p = - 1;
for ii = primes(1e5)
    if  isprime(ii+n)
        p = ii;
        break
    end
end
end