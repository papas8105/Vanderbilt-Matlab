function arabic_century = centuries_roman_to_arabic(year)
if isscalar(year) || ~ischar(year) ||  isnan(roman2num(year))
    arabic_century = ''             ;
else
    out            = roman2num(year);
    arabic_century = ceil(out/100)  ;
end
end