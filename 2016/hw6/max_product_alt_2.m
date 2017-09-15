function [product,ind] = max_product_alt_2(v,n)
if length(v) < n
    product =  0;
    ind     = -1;
    return
end
p = zeros(1,length(v)-n+1);
for ii = 1 : length(v) - n + 1
    jj = 1 : n                  ;
    pr = prod(v(ii + jj - 1))   ;
    p(ii) = pr                  ;
end
product = max(p)                ;
ind     = find(p == product, 1 );
end
