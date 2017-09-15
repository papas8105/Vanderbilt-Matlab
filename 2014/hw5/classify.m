function out = classify(x)
[m,n] = size(x);
if m == 0 || n == 0
    out = - 1;
elseif m ==1 && n == 1
    out =0   ;
elseif m == 1 || n == 1
    out = 1  ;
else
    out = 2  ;
end
end