function dd = day_diff(month1, day1, month2, day2)
m2015= [31,28,31,30,31,30,31,31,30,31,30,31];
if ~isscalar(month1) || ~isscalar(month2) || ~isscalar(day1) || ~isscalar(day2)
    dd = -1;
    return
elseif month1 ~= ceil(month1) || month2 ~= ceil(month2) || day1 ~= ceil(day1) || day2 ~= ceil(day2)
    dd = -1;
    return
elseif (month1 <= 0 || month1 >12) || (month2 <= 0 || month2 > 12)
    dd = - 1;
    return
elseif (day1<=0 || day2<=0) || (day1 > m2015(month1) || day2 >m2015(month2))
    dd = - 1;
    return
end
if month1 == month2
    if day1 >= day2
        dd = day1 - day2;
    else
        dd = day2 - day1;
    end
end
if month1 < month2
    dd = m2015(month1) - day1 + sum(m2015(month1 + 1 : month2)) - m2015(month2) + day2;
elseif month1 > month2
    dd = m2015(month2) - day2 + sum(m2015(month2 + 1 : month1)) - m2015(month1) + day1;
end
end