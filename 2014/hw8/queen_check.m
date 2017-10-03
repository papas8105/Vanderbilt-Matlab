function out = queen_check(board)
assert(ismatrix(board) && size(board,1) == 8 && size(board,2) == 8,'Enter an 8x8 matrix of logical values!');
%lines 4-11 could be avoided by -----> sum(sum(mod(board,1) == 0)) ~= numel(board)
for ii = 1 : 8
    for jj = 1 : 8
        if board(ii,jj) ~= 0 && board(ii,jj) ~= 1
            fprintf('The board you entered must contain only logical values!');
            return
        end
    end
end
%First we need to check the number of queens in each row and column
q_r = sum(board,2)   ;
q_c = sum(board,1)   ;
q_r = transpose(q_r) ;
%check in the diagonals
q_d = zeros(1,13); %diagonal
q_a = zeros(1,13); %anti diagonal
for ii = - 6 : 6
    q_d(ii+7) = sum(sum(diag(board,ii)))          ;
    q_a(ii+7) = sum(sum(diag(flipud(board),ii)))  ;
end
out = max([q_r,q_c,q_d,q_a]) <= 1;
end
