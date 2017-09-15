classdef linear_recurrence 
    %author george pap --> need to reverse here and there!
    %here comes the description of the class
    %creates instances of linear recurrences
    %           A(n) = \sum_{k=1}^{n}C_{k}A(n-k)
    %How to create an instance: <---Panouli
    %           r    = linear_recurrence(O,C,IV)
    %to create an instance, the three inputs must be
    %        
    %properties : order (O) an integer to define the order of the linear recurrence
    %           : terms c_k (C) a list of the C_k terms
    %           : initial values (IV) a list of the initial values A_{i} 
    
    
    %Example for creating an instance and use the first method nth_term
    %Suppose we are searching to find the number of ways that a vending
    %machine can give us exchange for n$ in 5c,10c or 25c
    %n     -- 0 -- 1 -- 2 -- 3 -- 4
    %A(n)  -- 1 -- 1 -- 2 -- 3 -- 5
    %A(n)  = A(n-1) + A(n-2) + A(n-5)
    %>> a = linear_recurrence(5,[1,1,0,0,1],[1,1,2,3,5])
    %>> a.nth_term
    %input the index you want to compute i.e. >> 6
    %>> ans = 9......etc
    %To make a plot A(n+1)/A(n)
    %>>a.plot_until 
    %hit an index and you are done!
    properties (Access = public)
       O   ;
       C   ;
       IV  ;
    end
    
    %methods ---initiaze first _init_
    methods
        %initialize __init__
        function r = linear_recurrence(order,terms_c_k,initial_values)
            r.O  = order                     ;
            r.C  = terms_c_k                 ;
            r.IV = initial_values(end:-1:1)  ;
        end
        %find the nth term of the recursive formula
        %Usage: x.nth_term(n) ---> n for the term we want to compute
        %n > order
        %Example Fibonacci sequence 1,1,2,3,5,8,....
        %>>a = linear_recurrence(2,[1,1],[1,1])
        %>>a.nth_term
        %>>6
        %>>ans = 8
        function a_n = nth_term(r,n)
            if nargin == 1
                n = input('Enter the term (integer greater than the order): ');
            end
            if floor(n) ~= n || n < 0
                error('Run again the method and read the instructions!')
            else
                w   = r.IV   ;
                if n <= r.O 
                    error('See the initial values');
                else
                    for ii = r.O + 1 : n
                        u   = w       ;
                        a_n = r.C*w';
                        for jj = 1 : length(w)
                            w(jj) = u(mod(jj,length(w)) + 1);
                        end
                        w(end) = a_n;
                    end
                end
            end
        end
        %plot function of A(n+1)/A(n)
        function plot_until(r)
        %Usage: a.plot_until
        %Enter the term of w_n = A(n+1)/A(n) until which you want to see the plot
            n  = input('Enter the index of A(n+1)/A(n) until which the plot will be made: ');
            n  = 2*n;
            u  = zeros(1,floor((n+1)/2));
            iv = r.IV(end:-1:1);
            for ii = 1 : r.O - 1
                u(ii) = iv(ii+1)/iv(ii);
            end
            u(r.O) = iv(end)/u(r.O-1);
            for ii = r.O+1 : floor((n+1)/2)
               u(ii) = r.nth_term(ii+1)/r.nth_term(ii);
            end
            plot(u,'--rs','LineWidth',2,...
                'MarkerEdgeColor','k',...
                'MarkerFaceColor','g',...
                'MarkerSize',5);
                ylim([0 max(u)+.5]);
            set(gca,'XTick',0:1:n)
            title('Ratio Plot');
            xlabel('n-th term');
            ylabel('A(n+1)/A(n)');
        end
    end
end
