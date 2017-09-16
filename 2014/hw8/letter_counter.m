function s = letter_counter(file)
fid = fopen(file,'r');
if fid < 0
    s = -1;
    return
end
s = 0;
while true
    l = fgetl(fid)                         ;
    if ~ischar(l)
        break
    end
    s = s + length(regexp(l,'[a-z]|[A-Z]'));
end
end