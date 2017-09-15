function out = dial4(str)
if ~ischar(str) || ~ismember(length(str),1:16) || length(regexp(str,'[A-Z]|[0-9]')) ~= length(str) || str(1) == '0'
    out = uint64(0);
    return
end
classes = {'[A-C]','[D-F]','[G-I]','[J-L]','[M-O]','[P-S]','[T-V]','[W-Z]';'2','3','4','5','6','7','8','9'};
out = str;
for ii = 1 : 8
   out(regexpi(str,classes{1,ii})) = classes{2,ii};
end
out = uint64(str2double(out));
end