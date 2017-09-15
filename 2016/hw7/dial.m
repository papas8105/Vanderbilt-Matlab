function w = dial(s)
x = regexp(s,'[A-Z]|[0-9]')       ;
if length(x) ~= length(s)
    w = uint64(0)                 ;
    return
elseif s(1) == '0' || isempty(s)
    w = uint64(0)                 ;
    return
end
if sum(isstrprop(s, 'lower')) ~= 0
    w = uint64(0)                 ;
    return
end
w        = s                      ;
two      = regexpi(s, 'A|B|C'  )  ;
three    = regexpi(s, 'D|E|F'  )  ;
four     = regexpi(s, 'G|H|I'  )  ;
five     = regexpi(s, 'J|K|L'  )  ;
six      = regexpi(s, 'M|N|O'  )  ;
seven    = regexpi(s, 'P|Q|R|S')  ;
eight    = regexpi(s, 'T|U|V'  )  ;
nine     = regexpi(s, 'W|X|Y|Z')  ;
w(two)   = '2'                    ;
w(three) = '3'                    ;
w(four)  = '4'                    ;
w(five)  = '5'                    ;
w(six)   = '6'                    ;
w(seven) = '7'                    ;
w(eight) = '8'                    ;
w(nine)  = '9'                    ;
w        = uint64(str2double(w))  ;
end