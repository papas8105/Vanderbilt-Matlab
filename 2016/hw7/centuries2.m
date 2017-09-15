function roman = centuries2(year)
if   ~isscalar(year) || year < 0 || year > 3000 || year ~= ceil(year)
    roman = '';
else
    roman = num2roman(ceil((year)/100));
end
%due to the () that appears in front of the >9 numbers
if isempty(regexp(roman,'[(|)]', 'once'))
    return
else
    roman = roman(3:end);
end
end