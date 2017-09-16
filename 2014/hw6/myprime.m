function l = myprime(n)
assert(isnumeric(n) && isscalar(n) && ceil(n) == n,'n must be a positive integer!');
l = true;
for ii = 2 : fix(sqrt(n))
    if mod(n,ii) == 0
        l = false;
        break
    end
end
end