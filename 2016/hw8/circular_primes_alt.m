function out = circular_primes_alt(n)
%much slower but I used string concatenation
%getting confused https://www.youtube.com/watch?v=dLO-kQkJ3pw :)
p      = primes(n)                                              ; 
if ismember(n,p)
    p(end) = ''                                                 ;
end
out    = 0                                                      ;
for ii = p
    x  = num2str(ii)                                            ;
    c  = 0                                                      ;
    for jj = 1 : length(x) 
        x = [x(end),x(1:end-1)]                                 ;
        z = str2double(x)                                       ;
        if isprime(z)
            c = c + 1                                           ;
        end
    end
    if  c    == length(x) 
        out  = out + 1                                          ;
    end
end
end
