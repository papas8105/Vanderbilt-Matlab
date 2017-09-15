function output = exp_average( input , b )
persistent alpha   ;
persistent average ;
if isempty(average)
    average = input;
    alpha = 0.1    ;
end
if nargin == 2
    average = input;
    alpha = b      ;
end
average = input * alpha + average * ( 1 - alpha );
output = average;
end