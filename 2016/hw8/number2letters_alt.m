function out = number2letters_alt(n)
if ~isnumeric(n) || ~isscalar(n) || n >= 1000 || n < 0
    return
end
words_1_9   = {'one','two','three','four','five','six','seven','eight','nine'};
words_11_19 = {'eleven','twelve','thirteen','fourteen','fifteen','sixteen','seventeen','eighteen','nineteen'};
words_20_99 = {'twenty','thirty','forty','fifty','sixty','seventy','eighty','ninety'};
x = num2str(n);
if length(x) == 1
    out = length(words_1_9{n});
elseif length(x) == 2
    if x(1) == '1' && x(2) == '0'
        out = 3;
    elseif x(1) == '1' && x(2) ~= '0'
        out = length(words_11_19{str2double(x(2))});
    elseif x(1) ~= '1' && x(2) == '0'
        out = length(words_20_99{str2double(x(1))-1});
    elseif x(1) ~= '1' && x(2) ~= '0'
        out = length([words_20_99{str2double(x(1))-1},words_1_9{str2double(x(end))}]);
    end
elseif length(x) == 3
    hundreds = length(words_1_9{str2double(x(1))}) + 7;
    if x(2) == '0'
        if x(3) == '0'
            out = hundreds;
        elseif x(3) ~= '0'
            out = hundreds + length(words_1_9{str2double(x(3))});
        end
    elseif x(2) == '1' && x(3) == '0'
        out = hundreds + 3;
    elseif x(2) == '1' && x(3) ~= '0'
        out = hundreds + length(words_11_19{str2double(x(end))});
    elseif x(2) ~= '1' && x(3) == '0'
        out = hundreds + length(words_20_99{str2double(x(2))-1});
    elseif x(2) ~= '1' && x(3) ~= '0'
        out = hundreds + length([words_20_99{str2double(x(2))-1},words_1_9{str2double(x(end))}]);
    end
end
end
