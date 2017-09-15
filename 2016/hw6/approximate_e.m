function [e , k] = approximate_e(delta)
e = 1 ; k = 0;
w = [1];
while abs(exp(1)-e) > delta
    k = k + 1;
    e = e + 1/prod(1:k);
    w = [w e]; %#ok<*AGROW>
end
%this is complementary and is not needed for the exercise
plot(0:k,w,'ro');
hold on;
t = ['Plot of cumulative sums for delta =',num2str(delta)];
title(t);
xlabel('k');ylabel('e approximations at each k');
plot(0:k,ones(1,k+1)*exp(1),'k','linewidth',2);
hold off;
end