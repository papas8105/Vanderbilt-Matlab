function s = day_counter3(year)
if ceil(year) ~= year || year < 1776 || year > 2016
    return
end
s = 0;
for ii = 1 : 12
    x       =[num2str(ii),'-','01','-',num2str(year)];
    n       = datestr(x,'ddd'); % this could be avoided with a single line
    if strcmp(n,'Mon')          % εδώ 
        s = s + 1             ; % s = s + strcmp(x,'Mon') 
    end
end
end
