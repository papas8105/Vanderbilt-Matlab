function arabic = roman(roman)
romans = {'I','II','III','IV','V','VI','VII','VIII','IX','X','XI','XII','XIII','XIV','XV','XVI',...
    'XVII','XVIII','XIX','XX'};
if ~ismember(roman,romans)
    arabic = uint8(0);
    return
end
for ii = 1 : 20
    if strcmp(romans{ii},roman)
        arabic = uint8(ii);
        break
    end
end
end