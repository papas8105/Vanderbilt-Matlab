function out = move_me_alt2(v,a)
z = struct('found',{},'notfound',{});
if nargin == 1; a = 0; end
for ii = 1 : length(v)
    if v(ii) ~= a
        z(ii).found = v(ii);
    else
        z(ii).notfound = a;
    end
end
out = [[z.found],[z.notfound]];
end
