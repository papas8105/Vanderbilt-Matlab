function out = day_counter2(input)
if ~isnumeric(input) || ~isscalar(input) || ceil(input) ~= input || input < 1776 || input > 2016
    out = 'NONE';
    return
end
months = {'Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec'};
out = 0;
for ii = 1 : 12
    x = ['1','-',months{ii},'-',num2str(input)];
    [~,x] = weekday(x);
    if strcmp(x,'Mon')
        out = out + 1;
    end
end
end
