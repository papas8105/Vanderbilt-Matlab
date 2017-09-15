function out = dial2(input)
if  ~ischar(input) || length(input) > 16
    out = uint64(0)                        ;
    return
else
    x  = regexp(input , '[0-9]|[A-Z]')     ;
    if length(x) ~= length(input) || input(1) == '0'
        out = uint64(0)                    ;
        return
    end
end
out        = input                         ;
two        = regexpi(input, '[A-C]'  )     ;
three      = regexpi(input, '[D-F]'  )     ;
four       = regexpi(input, '[G-I]'  )     ;
five       = regexpi(input, '[J-L]'  )     ;
six        = regexpi(input, '[M-O]'  )     ;
seven      = regexpi(input, '[P-S]'  )     ;
eight      = regexpi(input, '[T-V]'  )     ;
nine       = regexpi(input, '[W-Z]'  )     ;
out(two)   = '2'                           ;
out(three) = '3'                           ;
out(four)  = '4'                           ;
out(five)  = '5'                           ;
out(six)   = '6'                           ;
out(seven) = '7'                           ;
out(eight) = '8'                           ;
out(nine)  = '9'                           ;
out        = uint64(str2double(out))       ;
end