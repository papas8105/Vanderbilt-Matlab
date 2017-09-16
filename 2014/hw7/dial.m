function out = dial(str)
if ~ischar(str) || length(regexp(str,'[A-P]|[R-Y]|[0-9]|[*#()\-\s]')) ~= length(str)
    out = [];
    %fprintf('Legal characters A-Z,0-9,*,#,- and a single white space');
    return
end
out = str                                   ;
out(regexp(str,'[()\-\s]')) = ' '           ;
cls = {'ABC','DEF','GHI','JKL','MNO','PRS','TUV','WXY'};
for ii = 1 : length(cls)
    index = regexp(str,['[',cls{ii},']'])   ;
    out(index) = num2str(ii+1)              ;
end
end