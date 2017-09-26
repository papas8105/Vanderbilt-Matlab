function s = letter_counter(file)
fid = fopen(file);
if fid < 0
    s = -1;
    return
end
s = 0;
l = fgetl(fid);
while ischar(l)
    s = s + length(regexp(l,'[A-Z]|[a-z]')) ;
    l = fgetl(fid)                          ;
end
fclose(fid);
end