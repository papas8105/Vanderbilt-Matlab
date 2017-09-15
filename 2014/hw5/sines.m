function [s1,s2,sums] = sines(pts,amp,n1,n2)
if nargin < 1
    pts = 1000     ;
end
if nargin < 2
    amp = 1        ;
end
if nargin < 3
    n1 = 100       ;
end
if nargin < 4
    n2 = 1.05*n1   ;
end
s1 = amp * sin(0:(2*pi*n1)/(pts-1):2*pi*n1);
s2 = amp * sin(0:(2*pi*n2)/(pts-1):2*pi*n2);
sums = s1 + s2               ;
plot(sums,'c','linewidth',3) ;
end