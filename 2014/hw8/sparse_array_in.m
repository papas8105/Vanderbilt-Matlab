function A = sparse_array_in(file)
fid = fopen(file);
if fid < 0
    A = [];
    return
end
%read the first three elements
x     = fread(fid,3,'uint32');
A     = zeros(x(1),x(2))     ;
nnz   = x(3)                 ;
clear x                      ;
%now read the indexes of non zero elements and write in double
for ii = 1 : nnz
    ind = fread(fid,2,'uint32')             ;
    A(ind(1),ind(2)) = fread(fid,1,'double');
end
end