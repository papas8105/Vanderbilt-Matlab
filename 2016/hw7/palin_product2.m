function n =  palin_product2(dig , lim)
%much slower than the previous one
%tic;palin_product(3,1000);toc
%Elapsed time is 0.030193 seconds.
%tic;palin_product2(3,1000);toc
%Elapsed time is 0.193202 seconds.
w = [];
for ii = 10^(dig) - 1 : -1 : 10^(dig - 1)
    for jj = ii : 10^(dig) - 1
        p = ii * jj;
        if p < lim
            x = num2str(p);
            if sum(x(end:-1:1) == x) == length(x)
                w = [w p];
            end
        end
    end
end
if isempty(w)
    n = 0;
else
    n = max(w);
end
end