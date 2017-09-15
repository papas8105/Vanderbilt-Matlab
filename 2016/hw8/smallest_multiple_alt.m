function r = smallest_multiple_alt(n)
%this is my solution a bit more complex
%the other one comes from the instructors
%I factor each number till n and then find the max
%exponent for each prime I put this in a cell and then
%take the product all those primes exposed to the max
%power found.
p = primes(n)   ;
for ii = p      %put each prime in the right index
    c{1,ii} = ii;
    c{2,ii} = 1 ;
end
for ii = 2 : n
    if ~isprime(ii)
        x = factor(ii);  
        y = unique(x) ;
        s = 0         ;
        for jj = y
            s = s + sum(x == jj);
            if c{2,jj} < s
                c{2,jj} = s     ; %#ok<*AGROW>
            end
            s = 0               ;
        end
    end
end
r = uint64(1);
for ii = primes(n)
    r = r * c{1,ii}^c{2,ii}     ;
end
if r == intmax('uint64')
    r = uint64(0)               ;
end
end
