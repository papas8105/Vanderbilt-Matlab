function n = digit_counter2(file)
%solution using regular expressions
w = fopen(file,'r');
if w < 0
    n = - 1;
    return
end
n = 0; 
while true
    t = fgetl(w);
    if ischar(t)
        n = n + numel(regexpi(t,'[0-9]'));
    else
        break;
    end
end
fclose(w);
end