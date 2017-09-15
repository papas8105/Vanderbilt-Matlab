function h = halfsum(A)
h = sum(sum(triu(flipud(A))));
end