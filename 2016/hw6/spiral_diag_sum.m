function s = spiral_diag_sum(n)
if mod(n,2) == 0 || n <= 0 
    return
else
    s = 1;
    while length(s) < 2 * n - 1
        layer_add = fix((length(s) + 3)/2);
        for ii = 1 : 4
            out = s(end) + layer_add;
            s = [s out]; %#ok<AGROW>
        end
    end
end
s = sum(s);
end