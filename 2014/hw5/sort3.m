function v = sort3(a,b,c)
if a <= b
    if b <= c
        v = [a,b,c];
    elseif c <= a
        v = [c,a,b];
    else
        v = [a,c,b];
    end
else %b < a
    if c <= b
        v = [c,b,a];
    elseif a <= c
        v = [b,a,c];
    else
        v = [b,c,a];
    end
end
end