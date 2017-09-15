function cl = integerize(A)
cls = {'int8'; 'int16'; 'int32'; 'int64'};
%another way to write cls
%cls = {};
%for ii = 3 : 6
%   cls{ii-2} = strcat('int',num2str(2^(ii)));
%end
cl = 'NONE';
M = max(A(:));m = min(A(:));
for ii = 1 : length(cls)
    if intmax(cls{ii}) >= M && intmin(cls{ii}) <= m
        cl = cls{ii};
        break;
    end
end
end
