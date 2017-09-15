function [time,km] = light_time(miles)
km   = 1.609 * miles ;
time = km/3e5/60     ; 
end