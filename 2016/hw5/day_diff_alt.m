function dd = day_diff_alt(month1,day1,month2,day2)
days = [31,28,31,30,31,30,31,31,30,31,30,31];
if ~isscalar(month1) || ~isscalar(month2) || ~isscalar(day1) || ~isscalar(day2)
    dd = -1;
    return
end
if ~ismember(month1,1:12) || ~ismember(month2,1:12) || ~ismember(day1,1 : days(month1)) || ~ismember(day2,1:days(month2))
    dd = -1;
    return
end
if month1 == month2
    dd = abs(day1 - day2);
elseif month2 > month1
    dd = days(month1) - day1 + sum(days(month1 + 1:month2-1) ) + day2;
else %month2 > month1
    dd = days(month2) - day2 + sum(days(month2 + 1 : month1 - 1)) + day1;
end
end
