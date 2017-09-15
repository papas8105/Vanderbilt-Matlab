function out = spiral_diag_sum(n)
out = sum(diag(spiral(n)));
out = out + sum(diag(flipud(spiral(n))))-1;
end