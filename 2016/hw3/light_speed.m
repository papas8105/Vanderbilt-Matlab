function [minutes , miles] = light_speed(km)
%u = s / t => t = s / u
minutes = km / 3e5 / 60;
miles   = km / 1.609   ;
end