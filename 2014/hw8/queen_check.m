function out = queen_check(board)
assert(size(board,1) == 8 && size(board,2) == 8 ,'board must be an 8x8 logical matrix');
q_r = sum(board,2) ; % sum queens in rows
q_c = sum(board,1) ; % sum queens in columns
q_r = q_r'         ;
% q_d queens in diagonal
% q_a queens in anti diagonal by flipping the board
q_d = zeros(1,12)  ;
q_a = zeros(1,12)  ;
for ii = -6 : 6
    q_d(ii+7) = sum(diag(board,ii))         ;
    q_a(ii+7) = sum(diag(flipud(board),ii)) ;
end
out = max(max([q_r,q_c,q_d,q_a])) <=        1;
end