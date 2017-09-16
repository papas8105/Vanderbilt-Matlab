function out = sparse_array_out( A , file )
%test sparse_array_out([0 0 0 1;3 4 0 0;0 0 0 0 ; 0 0 0 0;0 0 0 0; 1 0 1 0],'sparse.txt')
%it is written in sparse.txt
fid = fopen(file,'w');
if fid < 0
    out = false      ;
else
    out = true       ;
end
[m,n,values] = find(A);
%line1 
fwrite(fid,[size(A,1),size(A,2),numel(values)],'uint32');
%other lines
for ii = 1 : numel(values)
    fwrite(fid,[m(ii),n(ii)],'uint32') ;
    fwrite(fid,values(ii),'double')    ;
end
fclose(fid);
end