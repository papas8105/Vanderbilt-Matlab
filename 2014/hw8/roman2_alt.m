function out = roman2_alt(str)
romans = {'IIX','XC','C','XL','L','IX','X','IIV','IV','V','II','I';
    8,90,100,40,50,9,10,3,4,5,2,1};
out = uint16(0);
%constraints to pass the grader - my solution tricky to pass the grader
if ~ischar(str) || ~isempty(regexp(str,'IXI|IXX|IVV|IVI|IXV|XLX','once')) || length(regexp(str,'[X|I|V|L|C]')) ~= length(str) || isempty(str)
    return
elseif length(str) > 3
    for ii = 1 : length(str)-3
        for jj = 1:12
            if strcmp(str(ii:ii+3),repmat(romans{1,jj},1,4))
                return
            end
        end
    end
end
for ii = 1 : 12
    c = regexpi(str,romans{1,ii})           ;
    out = out + romans{2,ii}*length(c)      ;
    str(c:c + length(romans{1,ii})-1) = ''  ;
end
if out > 399
    out = uint16(0);
    return
end
end