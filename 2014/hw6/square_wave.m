function v = square_wave(n)
assert(isscalar(n) && isnumeric(n) && ceil(n) == n,'n > 0 integer!');
t = 0 : 4 * pi / 1000 : 4 * pi;
v = zeros(1,length(t));
for ii = 1 : n
    v = v + sin((2*ii - 1) * t)/(2*ii-1);
end
plot(t,v,'r','linewidth',1.5);
title('Square wave for n = 200');
end