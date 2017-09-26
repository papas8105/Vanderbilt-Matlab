function out = queen_check(board)
if ~ismatrix(board) || size(board,1) ~= 8 || size(board,2) ~= 8
    fprintf('Enter an 8x8 board!');
    return
end
for ii = 1 : 64
    if board(ii) ~= 0 && board(ii) ~= 1
        fprintf('Matrix must contain zeros or ones!');
        return
    end
end
%we must find the queens in the rows and columns first
q_r = sum(board,2)';
q_c = sum(board,1) ;
%we must find the queens in the diagonals
q_d = zeros(1,13) ;
q_a = zeros(1,13) ;
for ii = -6 : 6
    q_d(ii+7) = sum(diag(board,ii));
    q_a(ii+7) = sum(diag(flipud(board),ii));
end
out = max([q_r,q_c,q_d,q_a]) <= 1;
end