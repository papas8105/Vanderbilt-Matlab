function n = digit_counter(file)
fid = fopen(file,'rt')                 ; 
if fid < 0
  n = -1                               ;
  return
end
A        = fread(fid,inf,'*char')      ;
digitStr = A(isstrprop(A,'digit'))     ;
n        = length(digitStr)            ;
fclose(fid)                            ;
end