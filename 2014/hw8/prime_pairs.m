function p = prime_pairs(n)
p = -1;
for ii = primes(1e5)
    if isprime(ii+n)
        p = ii;
        break
    end
end
end