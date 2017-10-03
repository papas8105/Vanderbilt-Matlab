function score = bowl(v)
if ~isvector(v) || size(v,1) ~= 1 || length(v) < 12 || length(v) > 21 || sum(v < 0) > 0 || sum(v > 10) > 0
    score = -1;
    return
end
score  = 0;
frames = 1;
ii    = 1;
while frames < 10
    a = v(ii)  ;
    b = v(ii+1);
    c = v(ii+2);
    if a == 10                         %strike
        score = score + a + b + c;
    else
        if a<10 && a + b == 10         %spare
            score = score + a + b + c;
        elseif a<10 && a + b < 10     %open
            score = score + a + b    ;
        else
            score = -1;
            return
        end
        ii = ii + 1          ;
    end
    frames = frames + 1  ;
    ii     = ii + 1      ;
end
if length(v) ~= ii + 1 && length(v) ~= ii + 2
    score = -1;
    return
end
a = v(ii)  ;
b = v(ii+1);
if a + b >= 10
    if length(v) ~= ii + 2
        score = -1;
        return
    end
    c = v(ii+2);
    score = score + a + b + c;
else
    if length(v) ~= ii + 1
        score = -1;
        return
    end
    score = score + a + b;
end
end