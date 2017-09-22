function score = bowl(v)
ii = 1;
w = [];
while ii <= length(v) 
    if v(ii) ~= 10
        w = [w,v(ii),v(ii+1)]; %#ok<*AGROW>
        ii = ii + 2;
    elseif v(ii) == 0 && v(ii+1) == 10
        w = [w,0,10];
        ii = ii + 2;
    elseif v(ii) == 10
        w = [w,10,0];
        ii = ii + 1;
    end
end
c = cell(4,11);
c{1,11} = v(end);
c{2,11} = v(end);
for ii = 1 : 10
    c{1,ii} = w(2*ii-1:2*ii);
    c{2,ii} = sum(c{1,ii});
    if w(2*ii-1) == 10
        c{3,ii} = 'strike';
    elseif w(2*ii-1) ~= 10 && c{2,ii} == 10
        c{3,ii} = 'spare';
    else
        c{3,ii} = 'open';
    end
end
for ii = 1 : 9
    if strcmp(c{3,ii},'open')
        c{4,ii} = c{2,ii};
    elseif strcmp(c{3,ii},'spare')
        if strcmp(c{3,ii+1},'strike')
            c{4,ii} = c{2,ii} + 10;
        else
            c{4,ii} = c{2,ii} + c{1,ii+1}(1);
        end
    elseif strcmp(c{3,ii},'strike')
        if strcmp(c{3,ii+1},'strike') && strcmp(c{3,ii+2},'strike')
            c{4,ii} = 30;
        elseif strcmp(c{3,ii+1},'strike') 
            c{4,ii} = c{2,ii} + 10 + c{1,ii+2}(1);
        else
            c{4,ii} = c{2,ii} + c{2,ii+1};
        end
    end
end
score = 0;
for ii = 1 : 9
    score = score + c{4,ii};
end
if strcmp(c{3,10},'strike')
    score = score + 30;
elseif strcmp(c{3,10},'spare')
    score = score + 20;
else
    score = score + 2*c{2,10};
end
end