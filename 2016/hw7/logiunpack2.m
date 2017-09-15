function L = logiunpack2(v)
for ii = 1 : length(v)
    if ~isnumeric(v{ii})
        return
    end
end
L = false(length(v));
for ii = 1 : length(v)
    L(ii , v{ii}) = true;
end
end