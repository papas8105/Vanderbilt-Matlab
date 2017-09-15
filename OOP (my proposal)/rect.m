classdef rect < shape
   properties (Access = protected)
       h
       w
   end
   
   methods
       function r = rect(height,width,x,y,color)
           r = r@shape(x,y,color); %Special construct for initializing the
                                   %superclass
           r.h = height;
           r.w = width ;
       end
       function disp(r)
           disp@shape(r); %Optional call to the superclass display method
           fprintf('Height = %f and Width = %f\n',r.h,r.w);
       end
       function a = area(r)
           a = r.w * r.h;
       end
   end
end