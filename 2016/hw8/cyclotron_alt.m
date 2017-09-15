function [E,N] = cyclotron_alt(V)
%deuteron mass in kg
m = 3.344*1e-27;
%deuteron charge 1.603 * 1e-19 in Coulomb
q = 1.603*1e-19;
%magnetic field strength in Tesla
B = 1.6;
%Initial Values for starting radius (r),initial position (p) after first
%spin and initial spin count (N)
r = sqrt((m*V)/(q*B^2));
s = r/2;
p = -s + 2 * r;
N = 1;
while p > - 0.5
    N = N + 1;
    r = sqrt(r^2 + (2*m*V)/(q*B^2));
    p = p + (-1)^(N-1) * 2 * r;
end
E = N * V * 1e-6; %MeV
end%last commit while fading to black www.youtube.com/watch?v=J8x6lG1lgEo
