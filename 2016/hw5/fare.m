function out = fare(dist,age)
dist = round(dist);
if dist <=1
    out = 2;
elseif dist <= 10 && dist > 1
    out = 0.25 *(dist-1) + 2;
elseif dist > 10
    out = 4.25 + (dist-10)*0.10;
end
if age <= 18 || age >= 60
    out = 0.8 * out;
end
end