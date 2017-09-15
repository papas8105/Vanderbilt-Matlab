function out = number2letters_alt2(n)
if ~isscalar(n) || ~isnumeric(n) || n < 0 || n >= 1000 || ceil(n) ~= n
    out = 0                                                                                               ;
    return
end
dec1_9   = {'one','two','three','four','five','six','seven','eight','nine'}                               ;
dec11_19 = {'eleven','twelve','thirteen','fourteen','fifteen','sixteen','seventeen','eighteen','nineteen'};
dec20_90 = {'twenty','thirty','forty','fifty','sixty','seventy','eighty','ninety'}                        ;
    function s = td(input)
        if input < 10
            s = length(dec1_9{input})                                                                     ;
        elseif input == 10
            s = 3                                                                                         ;
        elseif input > 10 && input < 20
            s = length(dec11_19{mod(input,10)})                                                           ;
        elseif input >= 20 
            if mod(input,10) == 0
                s = length(dec20_90{input/10 - 1})                                                        ;
            else 
                s = length(dec20_90{fix(input/10)-1})+ length(dec1_9{mod(input,10)})                      ;
            end
        end
    end
if n < 100
    out = td(n)                                                                                           ;
else
    out = length(dec1_9{fix(n/100)}) + 7                                                                  ;
    if mod(n,100) ~= 0
        out = out + td(mod(n,100))                                                                        ;
    end
end
end
