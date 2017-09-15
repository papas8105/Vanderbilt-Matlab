classdef circle < shape %inherit from shape
   properties (Access = protected)
       r
   end
   methods
       function c = circle(radius,x,y,color) 
           %note first the data of the current class
           %then comes the data of the parent class
           c   = c@shape(x,y,color); %Special construct for initializing
                                     %the superclass
           c.r = radius;
       end
       function disp(c)
          disp@shape(c); %Call the superclass display first (optional)
          fprintf('Radius = %f\n',c.r);
       end
       function a = area(c)
           a = pi * c.r ^ 2;
       end
   end
end