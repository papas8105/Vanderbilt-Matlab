function [s,board] = bowl_alt(v)
persistent games;
if length(v) < 12 || length(v) > 21 || ~isvector(v) || size(v,1) ~= 1 || sum(v < 0) ~= 0 || sum(v > 10) ~= 0
    s = -1;
    valid_games_with_scores;
    return
end
%In this version we copy the frame as shown in the wording :) using cells
%first row frame number
%second row points gathered
%third row state 'strike','spare','open'
%fourth row cumulative points
frame = 1          ;
s     = 0          ;
balls = 1          ;
board = cell(4,10) ;
while frame < 10
    a = v(balls);
    b = v(balls + 1);
    c = v(balls + 2);
    board{1,frame} = frame;
    if a == 10
        board{2,frame} = [10,0]  ;
        board{3,frame} = 'strike';
        s = s + a + b + c        ;
        board{4,frame} = s       ;
    else
        if a ~= 10 && a + b == 10
            board{2,frame} = [a,b]     ;
            board{3,frame} = 'spare'   ;
            s = s + a + b + c          ;
            board{4,frame} = s         ;
        elseif a ~= 10 && a + b < 10
            board{2,frame} = [a,b]     ;
            board{3,frame} = 'open'    ;
            s = s + a + b              ;
            board{4,frame} = s         ;
        else
            s = - 1;
            valid_games_with_scores;
            return
        end
        balls = balls + 1    ;
    end
    frame = frame + 1        ;
    balls = balls + 1        ;
end
if length(v) ~= balls + 1 && length(v) ~= balls + 2
    s = -1;
    valid_games_with_scores;
    return
end
%frame 10
board{1,10} = 10   ;
a = v(balls)       ;
b = v(balls+1)     ;
if a + b >= 10 %strike
    if length(v) ~= balls + 2
        s = -1;
        valid_games_with_scores;
        return
    end
    c = v(balls+2)      ;
    board{2,10} = [a,b] ;
    if a == 10 && b == 10
        board{3,10} = 'strike + bonus' ;
    else
        board{3,10} = 'spare + bonus'  ;
    end
    s = s + a + b +c    ;
    board{4,10} = s     ;
else
    if length(v) ~= balls + 1
        s = -1;
        valid_games_with_scores;
        return
    end
    board{2,10} = [a,b] ;
    board{3,10} = 'open';
    s = s + a + b       ;
    board{4,10} = s     ;
end
%Now let us create a csv file with the boards let us say that we
%play 3 games and we want to print the result after the game is 
%over, in order for you to check what you did wrong
valid_games_with_scores;

    function valid_games_with_scores
        if isempty(games)
            games = 1             ;
        elseif s == -1
            games = games + 1     ;
            return
        else
            if games == 1
                fid = fopen('boards_of_valid_games.csv','w')    ;
            elseif games > 1
                fid = fopen('boards_of_valid_games.csv','a+')   ;
                games = games + 1 ;
            end
            fprintf(fid,'%s',['game ',num2str(games)]);
            fprintf(fid,'\n,')                        ;
            fprintf(fid,'%d,',1:10)                   ;
            fprintf(fid,'\n,')                        ;
            fprintf(fid,'\n,')                        ;
            fprintf(fid,'%s,',board{3,:})             ;
            fprintf(fid,'\n,')                        ;
            fprintf(fid,'%d,',board{4,:})             ;
            fprintf(fid,'\n,')                        ;
            fprintf(fid,'\n,\n')                      ;
            fclose(fid)                               ;
        end
    end
end