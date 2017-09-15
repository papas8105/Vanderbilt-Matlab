function [area , cf] = circle(r)
%if ~isscalar(r) && r < 0 
%   error('The radius of the circle must be a scalar and greater than or equal to 0!')
%end
area = pi * r^2    ;
cf   = 2 * pi * r  ;
end