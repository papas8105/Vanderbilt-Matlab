function out = sparse_array_out(A,file)
out = true              ;
fid = fopen(file,'w')   ;
if fid < 0
    out = false         ;
end
[m,n,v] = find(A)       ;
fwrite(fid,[size(A,1),size(A,2),length(v)],'uint32')  ;
for ii = 1 : length(m)
    fwrite(fid,[m(ii),n(ii)],'uint32')                ;
    fwrite(fid,v(ii),'double')                        ;
end
fclose(fid)             ;
end