function out = May2015
out   = struct('month',{},'date',{},'day',{})    ;
days  = cell(1,31)                               ;
for ii = 1:31
    days{ii} = datestr(['2015','-','05','-',num2str(ii)],'ddd');
end
for ii = 1 : 31
    out(ii).month = 'May'         ;
    out(ii).date  = ii            ;
    out(ii).day   = days{ii}      ;
end
end