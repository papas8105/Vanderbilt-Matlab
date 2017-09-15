function out = spiral_diag_sum(nn)
assert(mod(nn,2) == 1 && nn > 0 && ceil(nn) == nn,'error the input must be a positive odd integer!');
out = 1;
if nn > 1
    element                              = 1;
    layer_add                            = 2;
    for ii = 1 : (nn - 1) / 2
        for jj = 1 : 4
            element = element + layer_add   ;
            out     = out + element         ;
        end
        layer_add = layer_add + 2           ;
    end
end
end
