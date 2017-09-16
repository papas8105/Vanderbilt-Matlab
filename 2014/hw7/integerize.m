function out = integerize(A)
out = 'NONE';
cls = {'uint8','uint16','uint32','uint64'};
m   = min(min(A));
M   = max(max(A));
for ii = 1 : 4
    if m >= intmin(cls{ii}) && M <= intmax(cls{ii})
        out = cls{ii};
        break
    end
end
end