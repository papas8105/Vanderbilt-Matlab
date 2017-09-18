function out = sparse_array_out(A,file)
fid = fopen(file,'w+');
if fid < 0
    out = false;
else
    out = true ;
end
fwrite(fid,[size(A),numel(find(A))],'uint32');
[m,n,values] = find(A)                       ;
M = [m,n,values]                             ;
for ii = 1 : size(M,1)
    fwrite(fid,M(ii,1:2),'uint32')           ;
    fwrite(fid,M(ii,3),'double')             ;
end
fclose(fid);
end