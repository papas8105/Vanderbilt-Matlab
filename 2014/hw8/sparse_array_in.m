function A = sparse_array_in(file)
fid = fopen(file,'r')   ;
if fid < 0
    A = [];
    return
end
 A = zeros(fread(fid,2,'uint32')');
 n = fread(fid,1,'uint32')        ;
 for ii = 1 : n
     ind = fread(fid,2,'uint32')                 ;
     A(ind(1),ind(2)) = fread(fid,1,'double')    ;
 end
 fclose(fid);
end