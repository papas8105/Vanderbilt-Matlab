function stat = zero_stat(M)
z    = M( M == 0 )                 ;
stat = length(z) / numel(M) * 100  ;
end