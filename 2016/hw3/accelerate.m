function amag = accelerate(F1,F2,m)
F = F1 + F2                  ;
amag = F ./ m                ;
amag = sqrt(sum(amag.^2))    ;
end