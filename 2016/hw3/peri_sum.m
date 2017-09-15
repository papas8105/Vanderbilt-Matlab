function s = peri_sum(A)
s = sum( A(1 , :) + A(end , :))                        ;
s = s + sum(A( 2 : end  - 1 , 1) + A(2 : end - 1, end));
end