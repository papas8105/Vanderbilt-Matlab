function A = sparse_array_in(file)
fid = fopen(file);
if fid < 0
    A = [];
    return
end
dim = transpose(fread(fid,2,'uint32')) ;
A   = zeros(dim)                       ;
nnz = fread(fid,1,'uint32')            ;
for ii = 1 : nnz
   m      = fread(fid,1,'uint32')      ;
   n      = fread(fid,1,'uint32')      ;
   A(m,n) = fread(fid,1,'double')      ;
end
end