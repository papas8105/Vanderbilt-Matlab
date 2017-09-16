function out = censor(c,s)
assert(iscell(c) && (size(c,1) == 1 || size(c,2) == 1),'input cell must be a cell vector row or column');
assert(ischar(s),'the second input must be a string')      ;
for ii = 1 : length(c)
    if ~ischar(c{ii})
        fprintf('the input cell must contain strings')     ;
        return
    end
end
out = {};
for ii = 1 : length(c)
    if isempty(regexp(c{ii},s,'once'))
        out = [out,c{ii}]; %#ok<*AGROW>
    end
end
end