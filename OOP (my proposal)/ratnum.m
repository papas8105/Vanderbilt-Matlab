classdef ratnum
    % This is a rational numbers class
    % Usage : rat(numerator , denomenator)
    %                               T     E     C     H     N     O     I     R
    %                 %%%%%%%%%%%%%%https://www.youtube.com/watch?v=KdcbhPWpPLc%%%%%%%%%%%%%%
    % pap T101 : Ok
    % Class methods description
    % disp : Input r %usage: disp(r)                     ---> dipsplays the rational number r
    % add  : Input r1 and r2 %usage: add(r1,r2)          ---> adds and displays the sum of two rational numbers
    % subtract: Input r1 and r2 %usage: subtract(r1,r2)  ---> subtracts and displays the difference of two rational numbers
    % mult : Input r1 and r2 %usage mult(r1,r2)          ---> multiplies two rational numbers
    % div  : Input r1 and r2 %usage div(r1,r2)           ---> divides two rational numbers
    % getN : Input r % usage getN(r)                     ---> displays the numerator of a rational number
    % getD : Input r % usage getD(r)                     ---> displays the denominator of a rational number
    % setND: Input r,numerator,denomenator %Usage setND(r,numerator,denomenator)
    %                                                    ---> sets numerator and denominator for a rational number
    %                                                    ---> if denomenator is is omitted it is set to 1 by default
    % simplify: Input r %Usage simplify(r)               ---> simplifies a rational number
    properties(Access = protected)
        n; %the numerator must be integer
        d; %the denomenator must be integer and not zero
    end
    methods
        function r = ratnum( numerator , denomenator)
            if nargin < 2; denomenator = 1; end
            if floor(numerator) == numerator
                r.n = numerator;
            else
                error('The numerator must be an integer!');
            end
            if denomenator ~= 0 && floor(denomenator) == denomenator
                r.d = denomenator;
            else
                error('The denomenator must be a non zero integer!')
            end
        end
        %now add the display method to show the 
        function disp(r)
            if r.d == 1
                fprintf('%d\n',r.n);
            else
                fprintf('%d / %d\n',r.n,r.d);
            end
        end
        %now add the add method for two rational numbers
        function r = add(r1 , r2)
            %when we add two rational numbers 
            %the numerator is r1.n * r2.d + r2.n * r2.d
            %the denomenator is r1.d * r2.d
            r = ratnum( r1.n * r2.d + r2.n * r1.d , r1.d * r2.d);
            if mod(r.n , r.d) == 0
                r = r.n/r.d;
            end
        end
        %now add the subtraction method
        function r = subtract(r1 , r2)
            r = ratnum(r1.n*r2.d - r2.n * r1.d , r1.d * r2.d);
            if mod(r.n , r.d) == 0
                r = r.n/r.d;
            end
        end
        %now add the multiplication method
        function r = mult( r1 , r2 )
            r = ratnum( r1.n * r2.n , r1.d * r2.d);
            if mod(r.n , r.d) == 0
                r = r.n/r.d;
            end
        end
        %at last add the division method
        function r = div( r1 , r2 )
            r = ratnum( r1.n * r2.d , r1.d * r2.n);
            if mod(r.n,r.d) == 0
                r = r.n/r.d;
            end
        end
        %add the get numerator function
        function n = getN(r)
            n = r.n;
        end
        %add the get denomenator fucntion
        function d = getD(r)
            d = r.d;
        end
        %method to set numerator de
        function r = setND(r , numerator , denomenator )
            if nargin < 3
                r = ratnum( numerator , r.d);
            elseif nargin < 4
                r = ratnum( numerator , denomenator );
            end
            if mod(r.n , r.d) == 0
                r = r.n / r.d;
            end
        end
        %add a simplify method
        function r = simplify(r)
            w = factor(r);
            for ii = 1 : length(w)
                if mod(r.n , w(ii)) == 0
                    r.n = r.n/w(ii);
                    r.d = r.d/w(ii);
                end
            end
        end
    end
end
