function out = replace(c,c1,c2)
out =  c;
for ii = 1 : length(c)
    out{ii}(c{ii} == c1) = c2;
end
end