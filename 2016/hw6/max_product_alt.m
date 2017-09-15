function [product,ind] = max_product_alt(v,n)
if length(v) < n || isempty(v)
    product = 0;
    ind = -1;
    return
end
w = ones(1,length(v)-n + 1);
for ii = 1 : length(v) - n + 1
    for jj = 0 : n-1
        w(ii) = w(ii) * v(ii+jj);
    end
end
product = max(w);ind = find(w == product, 1 );
end
