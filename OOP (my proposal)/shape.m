classdef shape
    %example of inheritance circle.m class will inherit from shape
    properties (Access = protected)
        x
        y
        color
    end
    methods
        %initialize ...
        function s = shape(x,y,color)
           s.x     =     x;
           s.y     =     y;
           s.color = color;
        end
        %secondary methods
        function disp(s)
            fprintf('The shape is centered at (%d,%d) and has color %s\n',...
                s.x,s.y,s.color);
        end
        
        function color = get_color(s)
            color = s.color;
        end
    end
end