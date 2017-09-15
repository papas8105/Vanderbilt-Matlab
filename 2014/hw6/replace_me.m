function w = replace_me(v,a,b,c)
if nargin < 3
    b = 0;
end
if nargin < 4
    c = b;
end
w = [];
for ii = 1 : length(v)
    if v(ii) == a
        w = [w,b,c]; %#ok<*AGROW>
    else
        w = [w,v(ii)];
    end
end
end