function out = eligible(v,q)
out     = false   ;
if v > 88 && q > 88 && mean([v,q]) >= 92
    out = true    ;
end
end