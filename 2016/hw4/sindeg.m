function [out , s]= sindeg(deg)
out = sin(pi * deg / 180)                       ;
s   = sum(sum(out)) / (size(out,1)*size(out,2)) ;
end