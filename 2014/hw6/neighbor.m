function out = neighbor(v)
if ~isvector(v)
    out = [];
    return
end
out = abs(v(1:end-1) - v(2:end));
end