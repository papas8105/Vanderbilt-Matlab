function z = move_me(v,a)
if nargin < 2
    a = 0;
end
w = [];x = [];
for ii = 1 : length(v)
    if v(ii) ~= a
        w = [w v(ii)]; %#ok<*AGROW>
    elseif v(ii) == a
        x = [x v(ii)];
    end
end
z = [w x];
end