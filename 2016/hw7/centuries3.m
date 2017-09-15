function output = centuries3(input)
if ~isnumeric(input) || ~isscalar(input) || input < 1 || input > 3000 || ceil(input) ~= input
    output = '';
    return
end
output = '';
if rem(input,100) == 0
    input = input - 1;
end
input = fix(input/100) + 1 ;
roman = {'X','IX','V','IV','I';10,9,5,4,1};
for ii = 1 : 5
		output  = [output,repmat(roman{1,ii},1,fix(input/roman{2,ii}))]; %#ok<AGROW>
		input   = rem(input,roman{2,ii});
end
end
