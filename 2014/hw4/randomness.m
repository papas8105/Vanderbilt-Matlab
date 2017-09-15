function out = randomness(limit,n,m)
out = ones(n,m) +  floor(rand(n,m) * limit);
end