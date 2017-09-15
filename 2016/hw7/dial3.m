function out = dial3(str)
if ~ischar(str) || length(str) ~= length(regexp(str,'[A-Z]|[0-9]')) || str(1) == '0' || length(str) < 1 || length(str) > 16
    out = uint64(0);
    return
end
out = str;letters = {'[A-C]','[D-F]','[G-I]','[J-L]','[M-O]','[P-S]','[T-V]','[W-Z]'};
numbers = cell(1,8);
for ii = 1 : 8
   numbers{ii} = regexpi(str,letters{ii});
end
for ii = 1 : 8
    out(numbers{ii}) = num2str(ii+1);
end
out = uint64(str2double(out));
end
