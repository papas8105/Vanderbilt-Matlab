function x = find_zero (f,x1,x2)
if ~strcmp(class(f),'function_handle') || ~isscalar(x1) || ~isscalar(x2) || x1 >= x2
    error('Check your inputs!');
end
x = (x1 + x2) / 2 ;
while abs(f(x)) > 1e-10       
    if f(x1)*f(x) > 0           
        x1 = x    ;               
    else
        x2 = x    ;               
    end
	x = (x1 + x2) / 2 ;
end
end
