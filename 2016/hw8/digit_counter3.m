function out = digit_counter3(file)
assert(ischar(file),'error enter the file name');
fid = fopen(file,'r');
if fid < 0
    out = -1;
    return
else
    w = fgetl(fid);
    out = 0;
    while ischar(w)
        out = out + length(regexp(w,'[0-9]'));
        w   = fgetl(fid);
    end
end
end
