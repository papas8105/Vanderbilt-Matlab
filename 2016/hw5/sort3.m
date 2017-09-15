function [s1 , s2 , s3] = sort3(v)
if v(1) <= v(2)
    if v(3) <= v(1)
        sorted = [v(3) v(1) v(2)];
    elseif v(2) <= v(3)
        sorted = v;
    else
        sorted = [v(1) v(3) v(2)];
    end
else
    if v(3) <= v(2)
        sorted = [v(3) v(2) v(1)];
    elseif v(1) <= v(3)
        sorted = [v(2) v(1) v(3)];
    else
        sorted = [v(2) v(3) v(1)];
    end
end
s1 = sorted(1);s2 = sorted(2);s3 = sorted(3);
end