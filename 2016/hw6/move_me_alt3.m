function w = move_me_alt3(v,a)
if nargin == 1
    a = 0;
end
neq_a  = v ~= a;
equ_a  = find(v == a);
w =[v(neq_a),repmat(a,1,length(equ_a))];
end