function [n , p] = fence(lng , seg)
n = ceil(lng/seg);
p = n + 1        ;
end