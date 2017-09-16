function c = June2015
c = cell(30,3)     ;
days = cell(30,1)  ;
for ii = 1 : 30
    days{ii} = datestr(['2015','-','06','-',num2str(ii)],'ddd');
end
for ii = 1 : 30
    c{ii,1} = 'June'    ;
    c{ii,2} = ii        ;
    c{ii,3} = days{ii}  ;
end