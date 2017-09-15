function n = palin_product(dig, lim)
n = 0;
if nargin < 2
    lim = 1e3;
    display(sprintf('The default limit is set to 1000!'));
end
for ii = 10^dig-1 : -1 : 10^(dig-1)
    for jj = min(10^dig-1,floor((lim-1)/ii)) : -1 : 10^(dig-1)
        p = ii * jj;
        if p < n
            continue
        elseif palindrome(p)
            n = p  ;
            continue
        end
    end
end
end
%help function ---------------------------------------------->
function isp = palindrome(p)
txt = num2str(p)               ;
isp = strcmp(txt,txt(end:-1:1));
end