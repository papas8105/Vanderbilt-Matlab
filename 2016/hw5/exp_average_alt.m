function out = exp_average_alt(input ,beta )
persistent w;
persistent alpha;
if isempty(w) && nargin == 1 %called for the first time with one input only
    alpha = 0.1;
end
if nargin == 2                            % called with two inputs beta defined by the end user
    alpha = beta  ;                       % w is reset
    w         = [];
end
if isempty(w)
    w = input;
    out = w; 
    return
end
w = alpha  * input +  ( 1 - alpha) * w;
out = w;
end
