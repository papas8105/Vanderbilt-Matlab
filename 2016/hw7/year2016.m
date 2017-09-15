function out = year2016( m )
if  ~isscalar(m) || m < 1 || m > 12 || m ~= fix(m) 
    out = []                                                            ;
    return
end
days = {'Thu','Fri' , 'Sat' , 'Sun' , 'Mon' , 'Tue','Wed'}              ;
month_days = [31 , 29 , 31 , 30 , 31 , 30 , 31 , 31 , 30 , 31 , 30 , 31];
months = {'January' , 'February' , 'March' , 'April' , 'May' , 'June',...
    'July' , 'August' , 'September'...
    'October' , 'November' , 'December'}                                ;
out = struct('month',{},'date',{},'day',{})                             ;
for ii = 1 : month_days(m)
    out(ii).month   = months{m}                                         ;
    out(ii).date    = ii                                                ;
    out(ii).day     = days{rem( ii + sum(month_days(1:m-1)),7 ) + 1}    ;
end
end