function s = triangle_wave(n)
t = 0 : 4 * pi / 1000 : 4 * pi;
s = zeros(1,1001);
for ii = 0 :  n
    s = s + (-1)^(ii) * sin((2*ii + 1) * t)/(2*ii + 1)^2;
end
plot(s);
end