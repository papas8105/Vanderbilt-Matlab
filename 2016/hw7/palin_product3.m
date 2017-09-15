function n = palin_product3(dig , lim)
n = 0;
for ii =  10^dig - 1 : -1 : 10^(dig - 1)
    for jj = min(10^dig - 1 , floor((lim - 1) / ii)) : -1 : 10^(dig - 1)
        p = ii * jj ;
        if p > n
            p = num2str(p);
            if strcmp(p,p(end: - 1 : 1))
                n = ii * jj;
            end
        end
    end
end
end