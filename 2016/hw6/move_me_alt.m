function w = move_me_alt(v,a)
if nargin == 1; a = 0; end
x = v(ismember(v,a));
y = v(~ismember(v,a));
w = [y,x];
end
