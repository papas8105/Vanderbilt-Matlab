function out = huge_add_alt(a,b)
if ~ischar(a) || ~ischar(b) || ~isempty(regexp(a,'[\.\,-]', 'once')) || ~isempty(regexp(b,'[\.\,-]','once'))
    out = -1                       ;
    return
end
if length(a) > length(b)
    A = a                          ;
    B = b                          ; 
else 
    A = b                          ; 
    B = a                          ; 
end
a = A                              ; 
b = B                              ;
buffer = 0                         ;
out    = ''                        ;
ii     = 1                         ;
while ii <= length(b)
    x = str2double(a(end - ii + 1));
    y = str2double(b(end - ii + 1));
    z = x + y + buffer;
    out = [num2str(mod(z,10)), out]; %#ok<*AGROW>
    ii = ii + 1                    ;
    buffer = floor(z/10)           ;
end
while ii <= length(a) 
    x = str2double(a(end-ii+1))    ;
    z = x + buffer                 ;
    out = [num2str(mod(z,10)),out] ;
    buffer = floor(z/10)           ;
    ii = ii + 1                    ;
end
out = [num2str(buffer) , out]      ;
if out(1) == '0'
    out(1) = ''                    ;
end
end
