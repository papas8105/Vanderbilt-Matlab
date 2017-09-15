function r = smallest_multiple(k) 
r = uint64(1);
for n = 1:k
	r = r * (n / gcd(r,n));   % Include factor not already present in r
end
if r == intmax('uint64')
	r = uint64(0);
end
end
